linux:
	go build -o app-linux

arm:
	GOOS=linux GOARCH=arm go build -o app-arm

macos:
	go build -o app-macos

windows:
	GOOS=windows go build -o app-windows.exe

clean:
	go clean
	docker rmi <IMAGE_TAG>
