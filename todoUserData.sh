#!/bin/bash
# 1 Update System and Download Git
yum update -y
yum install git -y
git version
# 2 Download NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
# 3 Download Latest Node
nvm install node
node -e "console.log('Running Node.js ' + process.version)"
# 4 Download Source Code to run app (To Do App)
git clone https://github.com/kabirbaidhya/react-todo-app.git
# 5 Install App dependencies
cd react-todo-app
npm install
npm audit fix
# 6  Run our code on port 3000 (Detached)
npm start > /dev/null 2>&1 & 
