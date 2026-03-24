#!/bin/bash
# Memory Lucia Publish Script

echo "🚀 Publishing memory-lucia to npm..."
echo ""

# Login
echo "Logging in to npm..."
npm login --auth-type=legacy

# Publish
echo ""
echo "Publishing package..."
npm publish --access=public

echo ""
echo "✅ Published!"
echo ""
echo "Users can now install with:"
echo "  npm install memory-lucia"
