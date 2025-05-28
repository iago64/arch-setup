# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Avoid restart shell
\. "$HOME/.nvm/nvm.sh"

# download and install Node.js (you may need to restart the terminal)
nvm install 22

# verifies the right Node.js version is in the environment
node -v
nvm current

# Download and install pnpm
corepack enable pnpm

# Verify pnpm version
pnpm -v