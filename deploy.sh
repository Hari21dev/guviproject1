#!/bin/bash
if [[ $GIT_BRANCH == "dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u jatuluva -p dckr_pat_z6YabM32MsYP3CKKQxtcy3b9RFU
    docker tag capstonenginx jatuluva/dev
    docker push jatuluva/dev

elif [[ $GIT_BRANCH == "main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u jatuluva -p dckr_pat_z6YabM32MsYP3CKKQxtcy3b9RFU
    docker tag capstonenginx jatuluva/prod 
    docker push jatuluva/prod
fi
