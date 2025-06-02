# 🗃️ Log Archive Tool Project for [roadmap.sh](https://roadmap.sh/)

This is my solution to the [Log Archive Tool project](https://roadmap.sh/projects/log-archive-tool) in the [DevOps roadmap](https://roadmap.sh/devops) from [roadmap.sh](https://roadmap.sh/)

**Table of Contents**
- [References](#references)
- [Project Requirements](#project-requirements)
- [Prerequisites](#prerequisites)
- [How To Use](#how-to-use)
  - [Usage](#usage)
  - [Examples](#examples)
- [Author](#author)

## References

- [GNU tar: an archiver tool](https://www.gnu.org/software/tar/manual/tar.html)
- [man tar](https://www.man7.org/linux/man-pages/man1/tar.1.html)

## Project Requirements

- [x] Create script `log-archive` accept the log directory as an argument, compress the logs, and store them in a new directory
- [x] The tool should compress the logs in a tar.gz file and store them in a new directory
- [x] The tool should log the date and time of the archive to a file `logs_archive_20240816_100648.tar.gz`

## Prerequisites

- Linux OS (AlamLinux 9.5 Minimal)
- `tar` package

## How To Use

0. Clone the repository
```bash
git clone https://github.com/torshin5ergey/roadmapsh-log-archive-tool
cd roadmapsh-log-archive-tool
```
1. Ensure the `log-archive.sh` script is executable
```bash
chmod +x log-archive.sh
```
2. Run the script
```bash
./log-archive.sh
```

### Usage

```
Usage:
  log-archive [-h] SOURCE [TARGET_DIR]

Arguments:
  SOURCE       source file/directory to archive

Optional arguments:
  TARGET_DIR   target directory for archive (default: current directory)
  -h, --help   show this help message and exit
```

### Examples

- Archive the `logs` directory to the current directory
```bash
log-archive logs
```
- Archive the `logs` directory to the `/backups` directory
```bash
log-archive logs /backups
```
- Show the help message
```bash
log-archive -h
```

## Author

Sergey Torshin [@torshin5ergey](https://github.com/torshin5ergey)
