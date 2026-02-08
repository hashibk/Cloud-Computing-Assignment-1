if [ -z "$1" ]
then
    echo "Error: Commit message is missing."
    echo "Usage: ./commit.sh \"your commit message\""
    exit 1
fi

if [ ! -d ".git" ]
then
    echo "Error: This directory is not a Git repository."
    exit 1
fi

git add .

git commit -m "$1"

git push

echo "Changes committed and pushed successfully."
