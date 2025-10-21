#!/bin/bash

# Script to run the app in staging mode
echo "🚀 Starting Hive Crypto Wallet App in STAGING mode..."

# Check if flutter is available
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter is not installed or not in PATH"
    exit 1
fi

# Run the app in staging mode
flutter run --target lib/main_staging.dart --debug
