#!\bin\bash

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# install oh-my-zsh
# https://github.com/robbyrussell/oh-my-zsh
\curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install rvm/ruby
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# install tmux
brew install tmux

# install tmuxinator
# https://github.com/aziz/tmuxinator
gem install tmuxinator

# install python
# http://www.lowindata.com/2013/installing-scientific-python-on-mac-os-x/
brew install python
pip install virtualenv
pip install virtualenvwrapper
pip install numpy
brew install gfortran
pip install scipy
brew install freetype
pip install matplotlib
pip install ipython

echo 'http://www.lowindata.com/2013/installing-scientific-python-on-mac-os-x/'
echo '# install the QT libraries as described'
echo '# in the text below before continuing'
while true; do
    read -p "Do you wish to continue?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer y or n.";;
    esac
done
brew install pyqt
brew install zmq
pip install pyzmq
pip install pygments

# install janus
# https://github.com/carlhuda/janus
\curl -Lo- https://bit.ly/janus-bootstrap | bash
