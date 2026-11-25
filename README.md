# Redmine Module Manager Plugin

[![GitHub repo size](https://img.shields.io/github/repo-size/Arean82/module_manager)](https://github.com/Arean82/module_manager)
[![GitHub last commit](https://img.shields.io/github/last-commit/Arean82/module_manager)](https://github.com/Arean82/module_manager/commits/main)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Redmine](https://img.shields.io/badge/Redmine-5.x%20%7C%206.x%20%7C%207.x-blue.svg)](https://www.redmine.org/)

A **Redmine plugin** that allows administrators to manage project modules globally across all projects from a single unified interface. Enable or disable modules across multiple projects simultaneously with an interactive tree view, project search, and sticky column navigation.

---

## ✨ Features

- **Global Module Management** - View and manage project modules across ALL projects in one centralized matrix.
- **Sticky Freeze Columns** - The Project name column and check-all icon stay frozen on the left while scrolling horizontally through module columns.
- **Sticky Table Header** - Column headers stay pinned at the top while scrolling vertically down long project lists.
- **Instant Project Live Search** - Filter project rows in real-time as you type without reloading the page.
- **Project Tree View** - Hierarchical display preserving parent/subproject relationships with indentation.
- **Bulk Operations** - Toggle all modules for a single project (row) or toggle a single module across all projects (column).
- **Module Display Filtering** - Choose which modules to display in the management table.
- **Safe Batch Updates** - Reliably updates and disables modules even when all modules for a project are unchecked.
- **Role-Based Permissions** - Granular control via `Manage project modules globally` permission.
- **Bilingual Support** - English (`en`) and Russian (`ru`) translations included.
- **Modern Rails Compatibility** - Fully compatible with Redmine 5.x, 6.x, and 7.x (Rails 6, 7 & 8 with Zeitwerk).

---

## 🖼️ How It Works

1. **Navigate to** **Administration → Global Module Manager** (or via **Administration → Plugins → Configure**).
2. **Search or Filter Projects** using the instant live search input.
3. **Filter Modules** using the collapsible filters box if you want to focus on specific modules.
4. **Check or Uncheck Modules** per project or using row/column bulk toggles.
5. **Click Save** - All project modules are updated cleanly in a single batch.

---

## 📋 Requirements

- **Redmine:** 5.0.0 or higher (including 5.x, 6.x, 7.x)
- **Ruby:** 2.7, 3.0, 3.1, 3.2, 3.3, 3.4+
- **Database:** PostgreSQL, MySQL, SQLite3

---

## 🛠️ Installation

### 1. Clone into Plugins Directory

```bash
cd /path/to/redmine/plugins
git clone https://github.com/Arean82/module_manager.git
```

### 2. Run Plugin Migrations

*(Note: This plugin does not require custom database tables, but running the standard migration command verifies compatibility).*

```bash
cd /path/to/redmine
RAILS_ENV=production bundle exec rake redmine:plugins:migrate
```

### 3. Restart Redmine

```bash
# If using Systemd:
sudo systemctl restart redmine

# Or if using Passenger:
touch /path/to/redmine/tmp/restart.txt
```

---

## 🔐 Permissions Setup

Access is protected by Redmine's permission system:

1. Navigate to **Administration → Roles and permissions**.
2. Select a role (e.g., *Administrator*, *Manager*).
3. Under the **Module manager plugin** section, check **"Manage project modules globally"**.
4. Click **Save**.

---

## 🚀 Usage

### Option A: Via Admin Menu (Recommended)
1. Go to **Administration → Global Module Manager**.
2. Use the live project search box or the module filter.
3. Make your selections and click **Save**.

### Option B: Via Plugin Configuration
1. Go to **Administration → Plugins**.
2. Find **Module manager plugin** and click **Configure**.
3. Use the embedded management matrix to make and save changes.

---

## 📁 Plugin Structure

```text
module_manager/
├── init.rb                                         # Plugin registration & Zeitwerk loader guards
├── README.md                                       # Documentation
├── LICENSE                                         # MIT License
├── config/
│   ├── routes.rb                                   # Named routes (/admin/module_manager)
│   └── locales/
│       ├── en.yml                                  # English translations
│       └── ru.yml                                  # Russian translations
├── app/
│   ├── controllers/
│   │   └── module_manager_settings_controller.rb   # Safe batch module update logic
│   └── views/
│       ├── module_manager_settings/
│       │   └── index.html.erb                      # Main Administration interface
│       └── module_manager/settings/
│           └── _index.html.erb                     # Embedded plugin settings partial
├── assets/
│   └── stylesheets/
│       └── module_manager.css                      # Sticky freeze table & search styling
└── lib/
    └── module_manager.rb                           # Plugin library root
```

---

## 🤝 Contributing

Bug reports, feature requests, and pull requests are welcome on GitHub at [https://github.com/Arean82/module_manager](https://github.com/Arean82/module_manager).

---

## 📄 License

This plugin is open-source under the terms of the [MIT License](LICENSE).
