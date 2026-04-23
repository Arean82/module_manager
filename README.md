
# Redmine Module Manager Plugin

[![GitHub repo size](https://img.shields.io/github/repo-size/Arean82/module_manager)](https://github.com/Arean82/module_manager)
[![GitHub last commit](https://img.shields.io/github/last-commit/Arean82/module_manager)](https://github.com/Arean82/module_manager/commits/main)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Redmine](https://img.shields.io/badge/Redmine-5.x-blue.svg)](https://www.redmine.org/)

A **Redmine plugin** that allows administrators to manage project modules globally across all projects from a single interface. Enable or disable modules for multiple projects at once with a powerful tree view and filtering system.

## ✨ Features

- **Global Module Management** - View and manage modules for ALL projects in one place
- **Project Tree View** - Hierarchical display of all projects with indentation for sub-projects
- **Bulk Operations** - Enable/disable any module across any project with simple checkboxes
- **Module Filtering** - Filter which modules to display in the management table
- **Select All/None** - Quick check/uncheck for entire rows or columns
- **Role-Based Permissions** - Control access through Redmine's role system
- **Bilingual Support** - English and Russian translations included

## 🖼️ How It Works

1. **Navigate to** Administration → Global Module Manager (or configure via plugin settings)
2. **Filter modules** to display only the modules you want to manage
3. **View all projects** in a tree structure
4. **Check/uncheck modules** for each project
5. **Save changes** - All projects are updated instantly

## 📋 Requirements

- Redmine 4.x or 5.x
- Ruby 2.7+
- Rails 5.2 or 6.1

## 🛠️ Installation

### From Source

```bash
cd /path/to/redmine/plugins
git clone https://github.com/Arean82/module_manager.git
cd ..
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
touch tmp/restart.txt
```

### Manual Installation

1. Download or clone the plugin into `plugins/module_manager/`
2. Run the migration:
   ```bash
   bundle exec rake redmine:plugins:migrate RAILS_ENV=production
   ```
3. Restart Redmine

## 🔐 Permissions Setup

After installation, you need to assign the permission to roles:

1. Go to **Administration → Roles and permissions**
2. Select a role (Administrator, Manager, etc.)
3. Find **"Manage project modules globally"** in the Module Manager plugin section
4. Check the box and save

## 🚀 Usage

### Via Admin Menu (Recommended)

1. Go to **Administration → Global Module Manager**
2. Use the filter section to select which modules to display
3. Click **Apply** to filter
4. Check/uncheck modules for each project in the table
5. Click **Save** to apply changes

### Via Plugin Settings

1. Go to **Administration → Plugins**
2. Click **Configure** next to "Module manager plugin"
3. Follow the same steps as above

## 📁 Plugin Structure

```
module_manager/
├── init.rb                          # Plugin registration & permissions
├── config/
│   ├── routes.rb                    # URL routes
│   └── locales/
│       ├── en.yml                   # English translations
│       └── ru.yml                   # Russian translations
├── app/
│   ├── controllers/
│   │   └── module_manager_settings_controller.rb
│   └── views/
│       └── module_manager_settings/
│           └── index.html.erb       # Main interface
└── lib/
    └── module_manager.rb            # Core module (extensible)
```

## 🔧 Configuration

No additional configuration required. The plugin uses Redmine's existing module system.

## 🧪 Testing

To test the plugin:

```bash
# Run plugin tests (if implemented)
bundle exec rake redmine:plugins:test NAME=module_manager

# Manual test
# 1. Install plugin
# 2. Assign permission to your role
# 3. Access from Administration menu
# 4. Try enabling/disabling modules
```

## 🐛 Known Issues

- Large numbers of projects (1000+) may cause performance issues
- Filter currently only affects module display, not the table view
- No pagination for projects list
- No undo/redo for bulk changes


## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Report bugs** - Open an issue with detailed steps
2. **Suggest features** - Create an issue with use cases
3. **Submit PRs** - Follow existing code style
4. **Improve translations** - Add more locales
5. **Test** - Try with different Redmine versions

### Development Setup

```bash
cd /path/to/redmine
git clone https://github.com/Arean82/module_manager.git plugins/module_manager
bundle install
bundle exec rake redmine:plugins:migrate
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Arean82** – [GitHub Profile](https://github.com/Arean82)

## 🙏 Acknowledgments

- Redmine core team for the excellent plugin system
- All contributors and testers

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/Arean82/module_manager/issues)
- **Redmine Community**: Post in the plugins forum
- **Author**: Reach out via GitHub

---

**Note**: This plugin is in active development. Test in a staging environment before using in production.
