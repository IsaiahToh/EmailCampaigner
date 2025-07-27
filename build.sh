#!/bin/bash

# Build script for generating environment configuration
# This script creates env.js with environment variables for secure deployment

echo "Building Email Campaign Manager..."

# Create env.js with environment variables
cat > env.js << EOF
// Environment Configuration - Generated during build
window.ENV = {
    EMAILJS_USER_ID: '${EMAILJS_USER_ID:-demo_mode}',
    EMAILJS_SERVICE_ID: '${EMAILJS_SERVICE_ID:-demo_mode}',
    EMAILJS_TEMPLATE_ID: '${EMAILJS_TEMPLATE_ID:-demo_mode}'
};
EOF

echo "Environment configuration generated successfully!"
echo "App is ready for deployment."
