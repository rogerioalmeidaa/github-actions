#substring used to remove the path before branch name
BRANCH=`echo ${GITHUB_REF##*/}` 
#substring used to remove the text after - character
ACCOUNT_NAME=`echo ${BRANCH%@*}`
#substring used to remove the text before - character
APP_VERSION=`echo ${BRANCH##*@}`

echo "::set-output name=BRANCH::${BRANCH}"
echo "::set-output name=ACCOUNT_NAME::${ACCOUNT_NAME^^}"
echo "::set-output name=APP_VERSION::${APP_VERSION}"