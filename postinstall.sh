#!/bin/bash
PROCESS=bomgar
number=$(ps aux | grep -v grep | grep -ci $PROCESS)

if [ $number -eq 0 ]
    then
        scriptDir=$(dirname $0)
        curl -o "$scriptDir/bomgar-scc-w0ec30gzz87gf57gfhfe8gd7fzfyjjixdgewyhc40hc90.dmg" "https://support.os4techno.com/download_client_connector?fn=null&jc=4aa2546c54636824956a6d001e948fd3&p=mac-osx-x86-dmg&ss=5a86c7ac732d87d1a2ba95e5a2a584f22966272d"
        hdiutil attach -nobrowse -mountpoint /Volumes/bomgar-install $scriptDir/bomgar-scc-w0ec30gzz87gf57gfhfe8gd7fzfyjjixdgewyhc40hc90.dmg
        sudo /Volumes/bomgar-install/Open\ To\ Start\ Support\ Session.app/Contents/MacOS/sdcust --silent
        sleep 15
fi