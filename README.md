# `spark` - *S*ystem for *P*rogressive and *A*ctive *R*elationship *K*eeping ✨

<img src="https://github.com/Sieep-Coding/pyt/blob/main/assets/p.png" align="right" width="220" alt="Spark Logo" style="float: right;margin-right: 7px;margin-top: 7px;">

`spark` is a **GUI** to manage essential **business data.** It is a **lightweight, fast, local-only** application designed for my personal use-case but applicable to small businesses or individuals who need an efficient tool for **organizing contacts, tracking leads, exporting data to excel, viewing table relationships, running reports, and managing tasks/projects** without relying on [costly](https://instances.vantage.sh/) cloud services or heavy enterprise solutions. Built with a **reliable but fast stack:** `python`, `tkinter`, and `SQLite`. To improve the development experience, I have developed a boring `makefile` to manage build scripts and some spicy [hot reloading](hot_reload.py) with [watchdog.](https://pypi.org/project/watchdog/) Tested on `Linux Ubuntu`, `WSL`, and `Linux Mint`.

<!-- [![wakatime](https://wakatime.com/badge/user/2156ce13-ae9d-4c0e-a543-89b2bddcd2f6/project/5ede5fcd-c567-4543-9b11-5abcf126f720.svg)](https://wakatime.com/badge/user/2156ce13-ae9d-4c0e-a543-89b2bddcd2f6/project/5ede5fcd-c567-4543-9b11-5abcf126f720) -->
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)
![Version: 3.13.7](https://img.shields.io/badge/python-3.13.7-blue.svg)
![Version: 3.45.3](https://img.shields.io/badge/SQLite-3.45.3-blue.svg)
![Version: 4.3](https://img.shields.io/badge/Makefile-4.3-blue.svg)
![WSL Passing](https://img.shields.io/badge/WSL-Passing-darkgreen.svg)
![Ubuntu Passing](https://img.shields.io/badge/Ubuntu-Passing-darkgreen.svg)
![Mint Passing](https://img.shields.io/badge/Mint-Passing-darkgreen.svg)


<!-- ![](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue)
![](https://img.shields.io/badge/tkinter-FFD43B?style=for-the-badge&logo=python&logoColor=blue)
![](https://img.shields.io/badge/Sqlite-003B57?style=for-the-badge&logo=sqlite&logoColor=white) -->

> [!WARNING]  
> Not ready for a production environment (yet). *Use at your own risk.*

## Core Features
I want this to run as fast as possible, with the goal of keeping the executable under a few hundred MB.

Some other features include:
- **Adding, managing, removing data** through forms.
- **No server!** 
  - Relies on a single `.db` file locally.
- **Exporting** to common file-types.
- **Viewing data, reports, table relationships** easily.
- **Simple, *Fast AF***, `SQLite` backend. 🏃‍➡️
- [Hot reloading](hot_reload.py) with [watchdog](https://pypi.org/project/watchdog/) for insane productivity. 

### Manage Your Contacts and Leads
![](https://github.com/Sieep-Coding/spark/blob/main/assets/image1.png)

### Run Reports and View Insights
![](https://github.com/Sieep-Coding/spark/blob/main/assets/chart.png)

## Navigation
- [Frontend](frontend/gui.py)
- [Backend](backend/database.py)
- [Tests](tests/)
- [Dev docs](docs/DEVTOOLS.md)
- [Dev tools](makefile)
- [License](LICENSE)

## Quickstart

> [!TIP]  
> Some Operating Systems (i.e. Arch based) may require you to download dependencies through
> a virtual environment

Clone:
```
git clone https://github.com/Sieep-Coding/spark.git
```

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `make install`            | Installs dependencies                            |
| `make`                    | Run Local                                        |
| `make dev`                | Run Dev Environment                              |
| `make backup`             | Backup database/flat data files.                 |

## Dependencies

> [!IMPORTANT]  
> Only tested on Linux so far!

- [Tkinter](https://docs.python.org/3/library/tkinter.html)
- [Sun Valley Theme](https://github.com/rdbende/Sun-Valley-ttk-theme/tree/main)
- [Sqlite](https://www.sqlite.org/)

> #### But why?
> "In the same way a **woodworker** invests the time in a jig, a **programmer** can build a code generator. 
> Once built, it can be used throughout the life of the project **at virtually no cost.**"
> -- [*Andrew Hunt*](https://en.wikipedia.org/wiki/Andy_Hunt_(author))
