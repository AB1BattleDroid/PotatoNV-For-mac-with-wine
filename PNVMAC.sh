/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
curl -L -o PotatoNV-latest.exe https://github.com/mashed-potatoes/PotatoNV/releases/latest/download/PotatoNV-next-v2.2.1-x86.exe

mv ~/PotatoNV-latest.exe ~/Downloads

brew install gcc make nasm zlib pkg-config libpng libjpeg libtiff libgsm libogg libvorbis libtheora libxslt libxkbcommon libxcomposite libxdamage libxinerama libxcursor libxrandr libxfixes llvm wine winetricks samba xquartz


winetricks vcrun2010 vcrun2012 vcrun2013 vcrun2015 vcrun2019 dotnet472 comctl32 d3dx9 2>&1 | grep -i -e "error:" -e "err:" -e "fixme:" -e "Warning:" -e "warning:" > issues.log

wineboot -u

WINEARCH=win64 WINEPREFIX=~/.wine64 winecfg

