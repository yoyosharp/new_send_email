# Deployment Guide

This guide provides instructions for deploying your send-mail API on a Linux server.

## Prerequisites

Before you begin, make sure you have the following:

- Access to a Linux server with SSH.
- Node.js installed.

## Server Setup

1. **SSH into your server:**
   `
   ssh username@your-server-ip
   `

3. **Update sever**
   `
   sudo apt update
   sudo apt upgrade
   `

## Project Deployment

1. **Transfer project files:**
   Upload project files to the server using SCP, SFTP, or another file transfer method.

   Or using git

   `
   https://github.com/yoyosharp/new_send_email.git
   `

2. **Install dependencies:**
   `
   cd project_directory
   `
   `
   npm install
   `

4. **Install PM2 on your sever**
   `
   sudo npm install -g pm2
   `

   - Verify PM2 is installed on your sever
   `
   pm2 --version
   `
   - Config Queue on the file `ecosystem.config.js`
  
5. **Install RabbitMQ service on your sever**

   - Install Earlang
   - Install RabbitMQ
   - https://youtu.be/N-AqOeaP8Ag?si=A5f8pdvC15RjeJqp

6. **Configure environment variables:**
   Copy content from the `.env.example` to `.env` (create the file if needed).
   Edit the `.env` file and configure database connection and other environment variables as needed.

7. **Start the application:**
   
   `
   pm2 start ecosystem.config.js
   `

   

## Web Server Configuration

1.  **Nginx Configuration:**

    - Create a new server block configuration file:

      `
      sudo nano /etc/nginx/sites-available/your-project
      `

    - Add the following configuration:
      ````
      server {
      listen 80;
      server_name your-domain.com;
      
      location / {
         proxy_pass http://localhost:3000;
         proxy_http_version 1.1;
         proxy_set_header Upgrade $http_upgrade;
         proxy_set_header Connection 'upgrade';
         proxy_set_header Host $host;
         proxy_cache_bypass $http_upgrade;
         }

      }
      ````
      
    - Enable the server block:
      `sudo ln -s /etc/nginx/sites-available/your-project /etc/nginx/sites-enabled/`

    - Test Nginx configuration:
      `sudo nginx -t`

    - Reload Nginx:
      `sudo systemctl reload nginx`
