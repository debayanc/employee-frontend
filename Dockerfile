FROM nginx:alpine

# Copy static files
COPY src/ /usr/share/nginx/html/

# Copy nginx configuration
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]