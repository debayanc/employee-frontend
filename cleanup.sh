#!/bin/bash

if [ "$1" == "--all" ]; then
  echo "Cleaning up ALL environments..."
  
  # Delete dev environment
  ./cleanup-dev.sh
  
  # Delete prod environment
  ./cleanup-prod.sh
  
  echo "All environments cleanup completed!"
else
  echo "Usage:"
  echo "  ./cleanup.sh --all    # Clean up all environments"
  echo "  ./cleanup-dev.sh      # Clean up only development environment"
  echo "  ./cleanup-prod.sh     # Clean up only production environment"
fi