linux:$
^IGOOS=linux GOARCH=amd64 go build -o myapp-linux$
$
arm:$
^IGOOS=linux GOARCH=arm go build -o myapp-arm$
$
macos:$
^IGOOS=darwin GOARCH=amd64 go build -o myapp-macos$
$
windows:$
^IGOOS=windows GOARCH=amd64 go build -o myapp-windows.exe$
$
clean:$
^Irm -f myapp-linux$
^Irm -f myapp-arm$
^Irm -f myapp-macos$
^Irm -f myapp-windows.exe$
^Idocker rmi <IMAGE_TAG>$
