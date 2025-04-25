#! /bin/bash
# Perintah untuk membuat Docker image dari Dockerfile
docker build -t karsajobs:latest .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Github Packages
docker tag karsajobs:latest ghcr.io/umarazis/karsajobs:latest

# Login ke Docker Hub via Terminal
echo $PAT | docker login --username umarazis --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/umarazis/karsajobs:latest
