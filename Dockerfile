FROM quay.io/projectquay/golang:1.20

# Copy the compiled binary based on the platform/architecture
COPY myapp-linux /app/myapp-linux
COPY myapp-arm /app/myapp-arm
COPY myapp-macos /app/myapp-macos
COPY myapp-windows.exe /app/myapp-windows.exe

# Set the working directory
WORKDIR /app

# Define the entry point command
CMD ["./myapp-linux"]
