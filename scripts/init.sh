#configuração inicial de atualização de pacotes 
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

#instalando fonts and tema
sudo wget https://github.com/githubnext/monaspace/releases/download/v1.000/monaspace-v1.000.zip -O ~/Downloads/monaspace.zip
cd ~/Downloads && unzip monaspace.zip && mkdir ~/.local/share/fonts && mv ~/Downloads/monaspace-v1.000/fonts/{otf,variable}/* ~/.local/share/fonts && cd

sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip -O ~/Downloads/firacode.zip
cd ~/Downloads && unzip firacode.zip && mv ~/Downloads/FiraCode* ~/.local/share/fonts && cd

fc-cache -fv

#config de tema 
gsettings set org.gnome.desktop.interface gtk-theme 'ZorinBlue-Dark'
gsettings set com.zorin.desktop.auto-theme day-theme 'ZorinBlue-Dark'
gsettings set com.zorin.desktop.auto-theme night-theme 'ZorinBlue-Dark'
gsettings set org.gnome.shell.extensions.user-theme name 'ZorinBlue-Dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:maximize,minimize,close'

#config dos atalhos
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']" 
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Terminal'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'alacritty'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Super>t'"

#adicionando ppas
sudo add-apt-repository ppa:aslatter/ppa -y
sudo add-apt-repository ppa:fish-shell/release-3 -y
sudo apt update && sudo apt upgrade

#instalando pacotes
sudo apt install git -y
sudo snap install brave gh
sudo snap install code  --classic
sudo snap install starship --edge
sudo apt install build-essential net-tools alacritty fish -y
