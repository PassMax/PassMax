# Installation 💿 

## Windows 

### Get the source code 💾

First of all, we gotta get the source code.

**Using Git**

Clone the repository:

```
git clone https://github.com/micziz/PassMax.git
```

**THE GIT REPO MAY HAVE SOME DANGLING AND NOT WORKING COMMITS!!! NOT RESPONSIBLE FOR PASSWORD LOSS/ROB**

**Using the zip file**

You can chose between:

**Stable**: Go to releases, latest, and download the zip.

**Latest**: Click code, and download the zip. (This may not work do to dangling commits)


### Download python

Go to https://www.python.org/downloads

Click the Yellow *Download Python3.10.4*

Wait for it to finish and run the installer. **REMEMBER TO ADD PYTHON TO PATH**

### Install requirements

```
cd PassMax
pip install -r requirements.txt
```

### Running it

*Windows 10*:

Open search and type CMD:

*Windows 11*:

Open search and type windows terminal

Then type:

```
cd PassMax
cd src
python main.py
```

## MacOS

The easiest way to install is to use the install script.

```sh
curl -sL https://raw.githubusercontent.com/micziz/PassMax/master/install.sh | sh
```


### Get the source code

First of all, we gotta get the source code.

**Using Git**

Install git by:

- Using the GUI installer
- Using the Xcode command line tools
- Using homebrew

Then, clone the repository:

```
git clone https://github.com/micziz/PassMax.git
```

Using the zip file

Go to

https://www.github.com/micziz/PassMax

Stable: Go to releases, latest, and download the zip.

Latest: Click code, and download the zip.

**THE GIT REPO MAY HAVE SOME DANGLING AND NOT WORKING COMMITS!!! NOT RESPONSIBLE FOR PASSWORD LOSS/ROB**

### Download python

**Via Installer**

Go to https://www.python.org/downloads

Click the Yellow *Download Python3.10.4*

Wait for it to finish and run the installer.

**Via Homebrew**

Open your terminal and type:

```
brew install python@3.10
```

### Install requirements

```
cd PassMax
pip3 install -r requirements.txt
```

Or as a one-liner:

```
cd PassMax && pip install -r requirements.txt
```

### Running it

Open your terminal and type:

```
cd PassMax
cd src
python3 main.py
```

Or as a one-liner:

```
cd PassMax && cd src && python3 main.py
```

## Linux

The easiest way to install is to use the install script.

```sh
curl -sL https://raw.githubusercontent.com/micziz/PassMax/master/install.sh | sh
```

### Get the source code

First of all, we gotta get the source code.

**Using Git**

Install git by:

- Using a package manager

(Git may be preinstalled depending on your distribution)

Then, clone the repository:

```
git clone https://github.com/micziz/PassMax.git
```

**Using the zip file**

Go to

https://www.github.com/micziz/PassMax

Stable: Go to releases, latest, and download the zip.

Latest: Click code, and download the zip.

**THE GIT REPO MAY HAVE SOME DANGLING AND NOT WORKING COMMITS!!! NOT RESPONSIBLE FOR PASSWORD LOSS/ROB**

### Download python

- Using a package manager

(Python may be preinstalled depending on your distribution)

Check your package manager and get the latest version.

(PS, you can also compile it from source, would not recommend that)

### Install requirements

```
cd PassMax
pip install -r requirements.txt
```

Or as a one-liner:

```
cd PassMax && pip install -r requirements.txt
```

### Running it

Open your terminal and type:

```
cd PassMax
cd src
python main.py
```

Or as a one-liner:

```
cd PassMax && cd src && python main.py
```