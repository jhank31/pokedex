#!/bin/bash

# Script to run the app in development mode
echo "🚀 Starting Hive Crypto Wallet App in DEVELOPMENT mode..."

# Check if flutter is available
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter is not installed or not in PATH"
    exit 1
fi

# Run the app in development mode
flutter run --target lib/main_development.dart --debug
