document.addEventListener('DOMContentLoaded', function() {
    loadEmployees();
    
    document.getElementById('refresh-btn').addEventListener('click', function() {
        loadEmployees();
    });
});

function loadEmployees() {
    const loadingElement = document.getElementById('loading');
    const errorElement = document.getElementById('error');
    const employeeListElement = document.getElementById('employee-list');
    
    loadingElement.style.display = 'block';
    errorElement.style.display = 'none';
    employeeListElement.innerHTML = '';
    
    fetch('/api/employees')
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(employees => {
            loadingElement.style.display = 'none';
            
            if (employees.length === 0) {
                employeeListElement.innerHTML = '<p>No employees found.</p>';
                return;
            }
            
            employees.forEach(employee => {
                const employeeCard = document.createElement('div');
                employeeCard.className = 'employee-card';
                employeeCard.innerHTML = `
                    <h3>${employee.firstName} ${employee.lastName}</h3>
                    <p><strong>ID:</strong> ${employee.id}</p>
                    <p><strong>Role:</strong> ${employee.role}</p>
                `;
                employeeListElement.appendChild(employeeCard);
            });
        })
        .catch(error => {
            loadingElement.style.display = 'none';
            errorElement.style.display = 'block';
            errorElement.textContent = 'Error loading employees: ' + error.message;
        });
}