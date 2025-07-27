#!/bin/bash

# Build script for generating environment configuration
# This script creates env.js with environment variables for secure deployment

echo "Building Email Campaign Manager..."

# Backup existing env.js if it exists
if [ -f "env.js" ]; then
    cp env.js env.dev.backup.js
    echo "Backed up development env.js"
fi

# Create production env.js with environment variables
cat > env.js << EOF
// Production Environment Configuration - Generated during build
window.ENV = {
    EMAILJS_USER_ID: '${EMAILJS_USER_ID:-demo_mode}',
    EMAILJS_SERVICE_ID: '${EMAILJS_SERVICE_ID:-demo_mode}',
    EMAILJS_TEMPLATE_ID: '${EMAILJS_TEMPLATE_ID:-demo_mode}'
};
EOF

echo "Production environment configuration generated successfully!"
echo "App is ready for deployment."
