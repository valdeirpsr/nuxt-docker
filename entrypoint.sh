#!/bin/bash

_stringToJsonArray() {
    value="$(echo $1 | sed 's/\s//g')"
    echo "[\"${value//,/\"\,\"}\"]" | sed 's/\[\"\"\]/\[\]/g'
}

_startServer() {
    cd /project
    yarn dev
}

if [ ! -f /project/package.json ]; then

    NUXT_LANGUAGE=$(_stringToJsonArray $NUXT_LANGUAGE)
    NUXT_FEATURES=$(_stringToJsonArray $NUXT_FEATURES)
    NUXT_LINTER=$(_stringToJsonArray $NUXT_LINTER)
    NUXT_DEVTOOLS=$(_stringToJsonArray $NUXT_DEVTOOLS)

    answers="'{
        \"name\": \"${APP_NAME:-app}\",
        \"language\": $NUXT_LANGUAGE,
        \"pm\": \"${PACKAGE_MANAGER:-yarn}\",
        \"ui\": \"${NUXT_UI:-none}\",
        \"features\": $NUXT_FEATURES,
        \"linter\": $NUXT_LINTER,
        \"test\": \"${NUXT_TEST:-none}\",
        \"mode\": \"${NUXT_MODE:-universal}\",
        \"target\": \"${NUXT_TARGET:-server}\",
        \"devTools\": $NUXT_DEVTOOLS,
        \"ci\": \"${NUXT_CI:-none}\",
        \"gitUsername\": \"${GIT_USERNAME:-unnamed}\",
        \"vcs\": \"${NUXT_VCS:-git}\"
    }'"

    echo "$answers";

    yarn create nuxt-app --answers "$answers" /project

    _startServer
elif [ ! - /project/node_modules ]; then
    yarn install;

    _startServer
fi

exec "$@"