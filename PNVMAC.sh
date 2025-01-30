/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


brew install wine
brew install samba
brew install xquartz



winetricks vcrun2010 vcrun2012 vcrun2013 vcrun2015 vcrun2019 dotnet472 comctl32 d3dx9

wineboot -u

WINEARCH=win64 WINEPREFIX=~/.wine64 winecfg

