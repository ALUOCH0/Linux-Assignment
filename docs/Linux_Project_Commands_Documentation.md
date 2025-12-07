# Linux Shell Commands Documentation for Project Setup and Git

## 1. Project Directory Structure

```bash
mkdir -p project/{src,docs,logs}  # Create project folder with src, docs, and logs
cd project                        # Navigate into the project folder
ls                                # List contents of the directory
```

## 2. Creating Files

```bash
touch src/main.sh src/utils.sh       # Create main and utility scripts
touch docs/README.md docs/CHANGELOG.md  # Create documentation files
touch logs/error.log                 # Create a log file
```

## 3. Editing Files

```bash
echo '# Main script' > src/main.sh   # Add content to main.sh
echo '# Utility functions' > src/utils.sh
echo '# Project Documentation' > docs/README.md
cp docs/README.md docs/LICENSE.md    # Copy README as LICENSE
mv docs/CHANGELOG.md logs/history.log  # Move CHANGELOG to logs folder
rm logs/error.log                     # Remove error log
```

## 4. Setting Permissions

```bash
chmod 750 src                  # Owner: full, group: read/execute, others: none
chmod a+x src/main.sh          # Make script executable by all users
chmod a+x system_info.sh       # Make system info script executable
chmod a+x backup.sh            # Make backup script executable
chmod a+x manage_process.sh    # Make process management script executable
```

## 5. Working with Data

```bash
nano data.txt                 # Edit data file
cat data.txt                  # View content
wc -l data.txt                # Count lines
sort data.txt | uniq > unique_data.txt  # Remove duplicates
awk '{ gsub(/\r/, ""); gsub(/[ \t]+$/, "") } !seen[$0]++' data.txt > unique_data.txt  # Clean and deduplicate
```

## 6. System Information Script

```bash
./system_info.sh              # Run script to display date, disk usage, and users
```

## 7. Backup Script

```bash
./backup.sh ~/project         # Create a timestamped backup of the project
```

## 8. Finding Large Recent Files

```bash
find ~ -type f -mtime -7 -size +1M > ~/recent_large_files.txt  # Files >1MB modified in last 7 days
```

## 9. Process Management

```bash
./manage_process.sh           # Show top memory-consuming processes
pkill -f example_process      # Kill processes by name
```

## 10. Networking

```bash
ping -c 4 google.com          # Check connectivity
ping -c 4 google.com > ~/network_status.txt  # Save ping results
```

## 11. Archiving

```bash
tar -czf linux_assignment.tar.gz .   # Compress current folder into .tar.gz archive
```

## 12. Git Setup and Push

```bash
git init                             # Initialize git repo
git branch -M main                    # Rename branch to main
git add .                             # Stage all files
git commit -m "Initial commit: Add Linux assignment scripts and files"  # Commit
git config --global user.name "Mathew Aluoch"  
git config --global user.email "aluochmathew@gmail.com"
git remote add origin git@github.com:ALUOCH0/Linux-Assignment.git  # Add SSH remote
git push -u origin main               # Push files to GitHub
```

## 13. SSH Key Setup for GitHub

```bash
ssh-keygen -t ed25519 -C "aluochmathew@gmail.com"  # Generate SSH key
cat ~/.ssh/id_ed25519.pub                         # View public key
ssh -T git@github.com                             # Test GitHub SSH connection
```

---


