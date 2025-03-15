
# System Update & Maintenance Script for Arch Linux

![License](https://img.shields.io/github/license/OguzhanDUYAR/arch-update)
![Last Commit](https://img.shields.io/github/last-commit/OguzhanDUYAR/arch-update)
![Stars](https://img.shields.io/github/stars/OguzhanDUYAR/arch-update)

A comprehensive system maintenance and update script for Arch Linux, specifically designed for Fish shell. This script automates common system maintenance tasks and provides detailed system health monitoring.

## 🚀 Features

### Core Updates
- 🔄 System package updates (Pacman)
- 📦 AUR package updates (Yay)
- 🎮 Flatpak application updates
- 🐍 Conda environment and package updates
- 🐋 Docker system cleanup

### System Maintenance
- 🧹 System cache cleanup
- 💾 Memory optimization
- 🗑️ Orphaned package removal
- 🔍 System health monitoring
- 🛡️ Security checks

### Backup & Security
- 💽 Automatic system configuration backup
- 🔒 Security audit with RKHunter
- ⏰ TimeShift snapshot creation
- 📜 Package list backups

### Monitoring & Reports
- 📊 System performance analysis
- 🌡️ Temperature monitoring
- 💻 Resource usage statistics
- 📝 Detailed system reports

## 📋 Prerequisites

```bash
# Core dependencies
sudo pacman -S fish yay flatpak conda

# Additional tools
sudo pacman -S sysstat rkhunter timeshift lm_sensors
```

## 🔧 Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/update-all.git
```

2. Make the script executable:
```bash
chmod +x update-all/update-all
```

3. Move to your local bin:
```bash
mv update-all/update-all ~/.local/bin/
```
Or

## Fast Installation

To install the update-all script with a single command:

```bash
curl -fsSL https://raw.githubusercontent.com/yourusername/repo-name/main/install.sh | bash
```
# Download
```bash
curl -o ~/.local/bin/update-all https://raw.githubusercontent.com/OguzhanDUYAR/arch-update/main/update-all
```
# Authorization to work
chmod +x ~/.local/bin/update-all

## 💻 Usage

### Basic Usage
```fish
update-all
```

### With Logging
```fish
update-all ^&1 | tee -a ~/update_(date +%Y%m%d).log
```

### Schedule Regular Updates
```fish
fisher install oh-my-fish/plugin-cron
cron add "0 20 * * 0" update-all
```

## 📝 Configuration

The script creates several important directories:
- `~/.system_backups/` - For system configuration backups
- `~/.system_reports/` - For detailed system reports

## 📊 Output Example


=== System Health Check ===
Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1       50G   25G   25G  50% /

Memory Usage:
              total        used        free
Mem:           16Gi       8.0Gi       8.0Gi
Swap:          8Gi        1.0Gi       7.0Gi

CPU Temperature:
CPU: +45.0°C


## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Arch Linux Community
- Fish Shell Development Team
- All contributors and package maintainers

## ⚠️ Notes

- This script is specifically designed for Arch Linux with Fish shell
- Requires root privileges for some operations
- Backup your system before first use
- Review the code before running on your system

## 📫 Contact

Your Name - [@OguzhanDUYAR](https://twitter.com/OguzhanDUYAR)

Project Link: [https://github.com/OguzhanDUYAR/arch-update](https://github.com/OguzhanDUYAR/arch-update)

---

⚡ Created with 💻 by [Your Name](https://github.com/OguzhanDUYAR)
