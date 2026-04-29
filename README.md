# Civic Data Analysis - Vancouver & Toronto

Interactive geospatial data visualization project analyzing civic engagement patterns in Vancouver and Toronto, Canada. Explore election data across Federal, Provincial, and Municipal boundaries with interactive maps, satellite views, and heat maps.

**🌍 Live Demo**: [GitHub Pages Link - Coming Soon]

---

## 📋 Table of Contents

- [Features](#features)
- [Quick Start](#quick-start)
- [Requirements](#requirements)
- [Installation](#installation)
- [Data Structure](#data-structure)
- [Usage](#usage)
- [Deployment](#deployment)
- [Troubleshooting](#troubleshooting)
- [Browser Compatibility](#browser-compatibility)
- [Contributing](#contributing)
- [License](#license)

---

## ✨ Features

### Interactive Visualizations
- **Multi-layer Maps**: View electoral data at Federal, Provincial, and Municipal levels
- **Satellite View**: Toggle between standard and satellite imagery
- **Heat Maps**: Choropleth maps showing voter participation and engagement patterns
- **Hover Information**: Real-time data display when hovering over map boundaries
- **Year Selection**: Compare data across different election cycles

### Supported Electoral Boundaries
- **Municipal**: 2008, 2011
- **Provincial**: 2013, 2017
- **Federal**: 2015, 2019, 2021

### Visualization Modes
1. **Standard Map** - Base map with electoral divisions
2. **Satellite View** - Satellite imagery overlay
3. **Heat Map** - Color-coded representation of voter participation

---

## 🚀 Quick Start

### Automated Setup (Recommended)

```bash
# Clone the repository
git clone https://github.com/iamyamraj/civic_data_analysis.git
cd civic_data_analysis

# Make setup script executable
chmod +x setup.sh

# Run setup script
./setup.sh

# Launch Jupyter Notebook
jupyter notebook
```

Open `Final Civic Engagement Clean.ipynb` in your browser.

### Manual Setup

```bash
# Create virtual environment
python3 -m venv venv

# Activate virtual environment
# On macOS/Linux:
source venv/bin/activate
# On Windows:
venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Create directory structure
mkdir -p ShapeFiles/{Municipal,Federal,Provincial}
mkdir -p DataFiles/{Municipal,Federal,Provincial}

# Launch Jupyter
jupyter notebook
```

---

## 📦 Requirements

### System Requirements
- **Python**: 3.8 or higher
- **Memory**: 2GB minimum (4GB recommended for smooth interaction)
- **Disk Space**: 500MB (excluding data files)
- **Modern Web Browser**: Chrome, Firefox, Safari, or Edge

### Software Dependencies
All dependencies are listed in `requirements.txt`:

```
geopandas==0.14.0          # Geospatial data handling
ipyleaflet==0.17.0         # Interactive maps
ipywidgets==8.1.1          # Interactive widgets
pandas==2.1.4              # Data manipulation
plotly==5.18.0             # Advanced visualizations
jupyter==1.0.0             # Notebook environment
voila==0.5.6               # Web deployment
```

---

## 📥 Installation

### Step 1: Clone Repository
```bash
git clone https://github.com/iamyamraj/civic_data_analysis.git
cd civic_data_analysis
```

### Step 2: Set Up Environment
```bash
chmod +x setup.sh
./setup.sh
source venv/bin/activate
```

### Step 3: Add Data Files
The project expects data in this structure:

```
civic_data_analysis/
├── ShapeFiles/
│   ├── Municipal/
│   │   ├── municipal2008.zip
│   │   └── municipal2011.zip
│   ├── Federal/
│   │   ├── fed2015.zip
│   │   ├── fed2019.zip
│   │   └── fed2021.zip
│   └── Provincial/
│       ├── pro2013.zip
│       └── pro2017.zip
├── DataFiles/
│   ├── Municipal/
│   │   ├── Municipal-2008.xlsx
│   │   └── Municipal-2011.xlsx
│   ├── Federal/
│   │   ├── Federal_Data_2015.xlsx
│   │   ├── Federal_Data_2019.xlsx
│   │   └── Federal_Data_2021.xlsx
│   └── Provincial/
│       └── Provincial_2017.xlsx
└── Final Civic Engagement Clean.ipynb
```

### Step 4: Launch Notebook
```bash
jupyter notebook
# Opens at http://localhost:8888
```

---

## 📊 Data Structure

### Expected Data Format

#### Shapefiles (.zip)
- **Format**: GeoJSON or Shapefile format compressed as .zip
- **Required Fields**:
  - `geometry`: Geographic boundary polygons
  - Division identifiers (varies by type):
    - Municipal: `division`, `name`
    - Federal: `PD_NUM` (2015), `PDNUM` (2019-2021)
    - Provincial: `VA_CODE`

#### Excel Data Files (.xlsx)
- **Sheet Name**: First sheet only
- **Required Columns** (Municipal):
  - `division` (int)
  - `name` (string)
  - `registered_votes` (int)
  - `percentage` (float)
  - `color schema` (for heat maps)

- **Required Columns** (Federal):
  - `PD_NUM` or `PDNUM` (int)
  - `total votes` or `Total votes` (int)
  - `percentage` (float)
  - `Color Schema` (for heat maps)

- **Required Columns** (Provincial):
  - `VA_CODE` (int)
  - `registered_votes` (int)
  - `percentage` (float)
  - `color schema` (for heat maps)

**Note**: Column names are case-sensitive. Ensure exact matching with your data files.

---

## 🎯 Usage

### Running Locally

1. **Activate environment**:
   ```bash
   source venv/bin/activate
   ```

2. **Launch Jupyter**:
   ```bash
   jupyter notebook
   ```

3. **Open notebook**: Navigate to `Final Civic Engagement Clean.ipynb`

4. **Run cells**: Execute all cells (Kernel → Restart & Run All)

5. **Interact**: Use the dropdown widgets to select:
   - **Boundaries**: Federal, Municipal, or Provincial
   - **Year**: Available years for selected boundary
   - **Heat Map**: Toggle heat map visualization
   - **Satellite View**: Toggle satellite imagery

### Interactive Features

#### Map Navigation
- **Zoom**: Use mouse wheel or +/- buttons
- **Pan**: Click and drag
- **Reset View**: Click the home icon

#### Information Display
- **Hover**: Move mouse over any division to see data
- **Properties Shown**:
  - Division number/code
  - Location name (if available)
  - Registered votes
  - Voter percentage
  - Color-coded engagement level

#### Visualization Modes
- **Standard**: Base map showing boundaries
- **Satellite**: ArcGIS satellite imagery layer
- **Heat Map**: Choropleth map with color gradients

---

## 🌐 Deployment

### Option 1: GitHub Pages with GitHub Actions

1. **Enable GitHub Pages**:
   - Go to repository Settings → Pages
   - Set source to `docs/` folder
   - Choose a theme

2. **Automatic Deployment**:
   - GitHub Actions workflow runs on every push
   - Generates HTML version of notebook
   - Deploys to `docs/` directory

3. **Access**: Your site will be at `https://iamyamraj.github.io/civic_data_analysis/`

### Option 2: Voila Web Server

```bash
# Install Voila
pip install voila

# Run as web app
voila Final\ Civic\ Engagement\ Clean.ipynb

# Access at: http://localhost:8866
```

### Option 3: Binder (Cloud-based)

Add this badge to your README for one-click cloud execution:

```markdown
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/iamyamraj/civic_data_analysis/main?urlpath=voila%2Frender%2FFinal%20Civic%20Engagement%20Clean.ipynb)
```

### Option 4: Streamlit

Convert to Streamlit app (requires refactoring):

```bash
pip install streamlit
streamlit run app.py
```

---

## 🔧 Troubleshooting

### Common Issues

#### 1. Data Files Not Found
**Error**: `FileNotFoundError: ShapeFiles/Municipal/municipal2008.zip`

**Solution**:
```bash
# Verify file paths
ls -R ShapeFiles/
ls -R DataFiles/

# Ensure files are in correct directories
# Check for typos in filenames (case-sensitive)
```

#### 2. Missing Column Error
**Error**: `KeyError: 'regestered_votes'`

**Solution**:
- This has been fixed in the latest version
- Verify your Excel columns match expected names exactly
- Use `df.columns` to check available columns
- Update column names in both Excel file and code if needed

#### 3. Module Import Error
**Error**: `ModuleNotFoundError: No module named 'geopandas'`

**Solution**:
```bash
# Ensure virtual environment is activated
source venv/bin/activate

# Reinstall dependencies
pip install -r requirements.txt
```

#### 4. Jupyter Not Starting
**Error**: `command not found: jupyter`

**Solution**:
```bash
# Activate environment first
source venv/bin/activate

# Install Jupyter
pip install jupyter

# Start again
jupyter notebook
```

#### 5. Port Already in Use
**Error**: `OSError: [Errno 48] Address already in use`

**Solution**:
```bash
# Specify different port
jupyter notebook --port 8889

# Or find and kill existing process
lsof -ti:8888 | xargs kill -9
```

#### 6. Memory Issues
**Symptoms**: Kernel crashes, slow performance

**Solution**:
```bash
# Increase available memory
# Restart Kernel: Kernel → Restart
# Clear outputs: Cell → All Output → Clear

# For large datasets, process in chunks
# Reduce zoom level on maps
```

#### 7. Map Not Displaying
**Symptoms**: Blank map area, no tiles loading

**Solution**:
- Check internet connection (maps use online tiles)
- Try refreshing the page
- Clear browser cache
- Try different browser
- Check if ArcGIS service is accessible

#### 8. Shapefile Merge Errors
**Error**: `ValueError: no geometry column found`

**Solution**:
- Verify shapefile contains `geometry` column
- Ensure merge keys (division numbers) exist in both files
- Check data types match (int vs. string)

---

## 🌍 Browser Compatibility

### Supported Browsers
| Browser | Version | Status | Notes |
|---------|---------|--------|-------|
| Chrome | 90+ | ✅ Full Support | Recommended |
| Firefox | 88+ | ✅ Full Support | Excellent performance |
| Safari | 14+ | ✅ Full Support | Works well |
| Edge | 90+ | ✅ Full Support | Chromium-based |
| IE 11 | All | ❌ Not Supported | Use modern browser |

### Browser Features Required
- JavaScript enabled
- WebGL support (for map tiles)
- LocalStorage enabled
- Cookies enabled

### Troubleshooting Browser Issues
1. **Enable JavaScript**:
   - Chrome: Settings → Privacy → JavaScript
   - Firefox: about:config → javascript.enabled

2. **Clear Cache**:
   - Chrome: Ctrl+Shift+Delete
   - Firefox: Ctrl+Shift+Delete
   - Safari: Develop → Empty Caches

3. **Disable Extensions**: Browser extensions may interfere with widgets

---

## 📝 File Structure

```
civic_data_analysis/
├── Final Civic Engagement Clean.ipynb   # Main notebook
├── requirements.txt                     # Python dependencies
├── setup.sh                            # Automated setup script
├── .gitignore                          # Git ignore rules
├── README.md                           # This file
├── .github/
│   └── workflows/
│       └── deploy.yml                  # GitHub Actions workflow
├── ShapeFiles/                         # Shapefile directory
│   ├── Municipal/
│   ├── Federal/
│   └── Provincial/
└── DataFiles/                          # Data directory
    ├── Municipal/
    ├── Federal/
    └── Provincial/
```

---

## 🔄 Updates & Maintenance

### Updating Dependencies
```bash
# Update all packages
pip install --upgrade -r requirements.txt

# Update specific package
pip install --upgrade geopandas
```

### Adding New Data

1. Prepare shapefiles and Excel files
2. Place in appropriate `ShapeFiles/` and `DataFiles/` directories
3. Update notebook with new file paths and conditions
4. Test functionality
5. Commit and push changes

---

## 🤝 Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m 'Add amazing feature'`
4. Push to branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

### Reporting Issues
Found a bug? Please create an [Issue](https://github.com/iamyamraj/civic_data_analysis/issues) with:
- Detailed description
- Steps to reproduce
- Expected vs. actual behavior
- System information (OS, Python version, browser)

---

## 📄 License

This project is licensed under the MIT License - see LICENSE file for details.

---

## 📞 Contact & Support

- **Author**: [Kuldeep Singh](https://github.com/iamyamraj)
- **GitHub**: [@iamyamraj](https://github.com/iamyamraj)
- **Issues**: [GitHub Issues](https://github.com/iamyamraj/civic_data_analysis/issues)

---

## 🙏 Acknowledgments

- Data sources: [Vancouver & Toronto Open Data Portals](https://open.canada.ca/)
- Libraries: GeoPandas, Plotly, ipyleaflet
- Mapping: OpenStreetMap, ArcGIS

---

## 📚 Additional Resources

- [GeoPandas Documentation](https://geopandas.org/)
- [Jupyter Notebook Guide](https://jupyter.org/)
- [Plotly Choropleth Maps](https://plotly.com/python/choropleth-maps/)
- [ipyleaflet Tutorial](https://ipyleaflet.readthedocs.io/)
- [Voila Deployment Guide](https://voila.readthedocs.io/)

---

**Last Updated**: April 2026
**Status**: ✅ Active & Maintained
