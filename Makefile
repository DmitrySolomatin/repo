linux:
    GOOS=linux GOARCH=amd64 go build -o myapp-linux

arm:
    GOOS=linux GOARCH=arm go build -o myapp-arm

macos:
    GOOS=darwin GOARCH=amd64 go build -o myapp-macos

windows:
    GOOS=windows GOARCH=amd64 go build -o myapp-windows.exe

clean:
    rm -f myapp-linux;
    rm -f myapp-arm;
    rm -f myapp-macos;
    rm -f myapp-windows.exe;
    docker rmi <IMAGE_TAG>
