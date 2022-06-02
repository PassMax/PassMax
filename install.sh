if [ ! command -v curl >/dev/null 2>&1 ]; then
  echo "curl is required to install this program"
  exit 1
fi

function install_fail() {
  echo "install failed"
  exit 1
}

function installMacOS(){
    echo "Installing dependencies for macos..."
    if [ ! command -v brew &> /dev/null ]; then
        echo "Installing homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    if [ ! command -v python3 &> /dev/null ]; then
        echo "Installing python3..."
        brew install python@3.10
    fi
    echo "Depencies installed!"
}

installDebian () {
    sudo apt-get install python3 python3-dev python3-tk python3-pip git || install_fail
}

installFedora () {
    sudo dnf install python3 python3-tkinter python3-pip git python3-devel || install_fail
}

installCentos () {
    sudo yum install -y python3 || install_fail
    rpm -q epel-release &> /dev/null || EPEL=0
    sudo yum install -y python3-tkinter epel-release python3-pip git || install_fail
    # Honestly not sure why it's installing epel and then uninstalling
    [[ $EPEL -eq 0 ]] && sudo yum remove -y epel-release
}

installArch () {
    sudo pacman -S --needed python3 tk git && python3 -m ensurepip || install_fail
}


function installDependencies(){
    curl -sL https://raw.githubusercontent.com/PassMax/PassMax/main/requirements.txt -o requirements.txt
    pip3 install -r requirements.txt
    rm requirements.txt
}

function installMain(){
    cd $HOME
    echo "Installing PassMax..."
    curl -sL https://raw.githubusercontent.com/PassMax/PassMax/main/src/main.py -o main.py
    echo "Installing dependencies..."
    INSTALLED=0
    case "$(uname -s)" in
        Darwin*) installMacOS && INSTALLED=1 || install_fail;;
    esac
    [[ -e /etc/debian_version ]] && installDebian
    [[ -e /etc/fedora-release ]] && installFedora  
    [[ -e  /etc/centos-release ]] && installCentos 
    [[ -e /etc/arch-release ]] && installArch 

    echo "Everthing is installed!"
    echo "Before you can use PassMax we reccomend you to add the following to your shell config file (.bashrc, .zshrc, etc):"
    echo "alias pm='python3 $HOME/main.py'"
}


installDependencies
installMain