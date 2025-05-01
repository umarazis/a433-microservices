# Menggunakan base image Node.js 18 versi Alpine
FROM node:18-alpine

# Menentukan work directory untuk container
WORKDIR /app

# Salin berkas package.json dan package-lock.json ke workdir
COPY package*.json ./

# Menginstal dependencies yang diperlukan
RUN npm ci

# Menyalin semua berkas aplikasi ke workdir
COPY . .

# Membuka port 3000 pada container untuk akses aplikasi
EXPOSE 3000

# Jalankan perintah "npm run start" saat container berjalan
CMD ["npm", "run", "start"]