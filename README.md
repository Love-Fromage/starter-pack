# Starter-pack to get started with PHP and SASS

### Pre-requisites:

- <a href="https://nodejs.org/en/download/prebuilt-installer">Nodejs</a>
- <a href="https://git-scm.com/downloads">Git</a> (obviously)
- <a href="https://code.visualstudio.com/download">Vs Code</a>

### Get started

- Install php by following this tutorial: <a href="https://www.geeksforgeeks.org/how-to-install-php-in-windows-10/">How to download PHP for Windows</a>
  - You may need to change the 6th line in **server.ps1** to your path to the php.exe file on your machine
- Go make a folder where your site will be
  - Clone this repo in the folder
- Go back to powershell and get to the folder you just cloned
  - Once in the right directory, type in `npm install`
  - Wait for the download to finish
- Still in powershell, type in `./server.ps1 start`
  - This will start a php server on the port 8000 of your local network
- open up VsCode
  - Options:
  1. Open VsCode normally and open the folder
  2. In powershell in the same directory of your site, type in `code .` (you may need to do further step if not allowed)
- Once in VsCode, open up a terminal (powershell preferred over cmd)
  - Type in `npm run dev`
- Open your web browser and go to <a href="http://localhost:3000">localhost:3000</a>

### How to use:

#### SCSS

- Create as many scss files you may desire, and `@import` files into **main.scss**

#### Javascript

- Create as many JS files you may desire, and `import` them into **main.js**

# Happy developing!
