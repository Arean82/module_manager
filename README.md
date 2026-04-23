
# Redmine Module Manager

[![GitHub repo size](https://img.shields.io/github/repo-size/Arean82/module_manager)](https://github.com/Arean82/module_manager)
[![GitHub last commit](https://img.shields.io/github/last-commit/Arean82/module_manager)](https://github.com/Arean82/module_manager/commits/main)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A **Redmine plugin** designed to help administrators and project managers manage Redmine modules more efficiently.

## 🚧 Project Status

This project is in **early development**. The repository contains:
- Initial commit structure
- Basic plugin files (Ruby, HTML)
- Latest activity: April 23, 2026 (author update)

No releases or packages are published yet.

## ✨ Planned / Implemented Features

Based on typical Redmine module management needs, this plugin likely aims to:

- **Enable/disable modules** per project from a central interface
- **Bulk manage module permissions** across multiple projects
- **List and filter** all available Redmine core and custom modules
- **Quickly apply module configurations** to new or existing projects
- **Export/import module presets** for consistent setups

*(Check the source code in `lib/` and `app/` for exact capabilities.)*

## 🛠️ Installation

1. Clone the repository into your Redmine `plugins/` directory:
   ```bash
   git clone https://github.com/Arean82/module_manager.git
   ```
2. Migrate the database (if plugin includes migrations):
   ```bash
   bundle exec rake redmine:plugins:migrate RAILS_ENV=production
   ```
3. Restart your Redmine server.

## 🔧 Requirements

- Redmine version: *Compatibility not yet specified (likely 4.x or 5.x)*
- Ruby version: *Compatible with your Redmine installation*
- Database: *Same as your Redmine setup*

## 🤝 Contributing

Since this is an early project, contributions are welcome. You can help by:

- Testing the plugin with different Redmine versions
- Reporting issues or suggesting features via [GitHub Issues](https://github.com/Arean82/module_manager/issues)
- Submitting pull requests with improvements

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Arean82** – [GitHub Profile](https://github.com/Arean82)
