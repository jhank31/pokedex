#!/bin/bash

# Script to run the app in production mode
echo "🚀 Starting Pokedex Global App in PRODUCTION mode..."

# Check if flutter is available
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter is not installed or not in PATH"
    exit 1
fi

# Run the app in production mode
flutter run --target lib/main_production.dart --release
