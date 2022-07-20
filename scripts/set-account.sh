#Ex: GITHUB_REF=rc/sample-qa-sprint-xpto
#substring used to remove the path before branch name
BRANCH=`echo ${GITHUB_REF##*/}` 
#substring used to remove the text after _ character
ACCOUNT_NAME=`echo ${BRANCH} | cut -d'-' -f 1` 
#substring used to remove the text before _ character
APP_ENV=`echo ${BRANCH} | cut -d'-' -f 2` 
#substring used to remove the text before @ character

echo "::set-output name=BRANCH::${BRANCH}"
echo "::set-output name=ACCOUNT_NAME::${ACCOUNT_NAME}"
echo "::set-output name=ACCOUNT_NAME_UPPERCASE::${ACCOUNT_NAME^^}"
echo "::set-output name=APP_ENV::${APP_ENV}"