git pl
git add .

if [ $? -eq 0 ]
then
    echo 'Enter the commit message: '
    read commitMessage

    git message "$commitMessage"

    echo 'Enter the branch name: '
    read branch
    
    git psh origin $branch
fi
