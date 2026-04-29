#!/bin/bash

# Civic Data Analysis - Setup Script
# This script sets up the project for local development

echo "🚀 Setting up Civic Data Analysis Project..."
echo ""

# Check Python installation
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

echo "✅ Python 3 found: $(python3 --version)"
echo ""

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "🔌 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip setuptools wheel

# Install dependencies
echo "📥 Installing dependencies from requirements.txt..."
pip install -r requirements.txt

# Create necessary directories
echo "📁 Creating directory structure..."
mkdir -p ShapeFiles/Municipal
mkdir -p ShapeFiles/Federal
mkdir -p ShapeFiles/Provincial
mkdir -p DataFiles/Municipal
mkdir -p DataFiles/Federal
mkdir -p DataFiles/Provincial

echo ""
echo "✅ Setup complete!"
echo ""
echo "📖 Next steps:"
echo "   1. Add your shapefile ZIPs to ShapeFiles/ subdirectories"
echo "   2. Add your Excel data files to DataFiles/ subdirectories"
echo "   3. Run: jupyter notebook"
echo "   4. Open: Final Civic Engagement Clean.ipynb"
echo ""
echo "💡 To activate the environment later, run: source venv/bin/activate"
