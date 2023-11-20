# Move to your Git repository directory
cd "D:\codeco\devops\jenkins-devops-microservice"

# Pull changes from the remote repository
git pull

# Add all changes to the staging area
git add *

# Prompt the user for a commit message
$commitMessage = Read-Host "Enter your commit message"

# Commit changes with the provided commit message
git commit -m $commitMessage

# Push changes to the remote repository (assuming the branch is 'main')
git push -u origin main
