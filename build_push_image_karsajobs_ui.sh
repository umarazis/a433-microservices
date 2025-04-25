#! /bin/bash
# Perintah untuk membuat Docker image dari Dockerfile
docker build -t karsajobs-ui:latest .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Github Packages
docker tag karsajobs-ui:latest ghcr.io/umarazis/karsajobs-ui:latest

# Login ke Github Packages via Terminal
echo $PASSWORD_GITHUB | docker login ghcr.io --username umarazis --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/umarazis/karsajobs-ui:latest
