#!/bin/bash

# 1 Download NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
# 2 Download Latest Node
nvm install node
node -e "console.log('Running Node.js ' + process.version)"
# 3 Download Git
sudo yum update -y
sudo yum install git -y
git version
# 4 Download Source Code to run app (To Do App)
git clone https://github.com/kabirbaidhya/react-todo-app.git
# 5 Install App dependencies
cd react-todo-app
npm install
# 6  Run our code on port 3000 (Detached)
npm start > /dev/null 2>&1 & 
