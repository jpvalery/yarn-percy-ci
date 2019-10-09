FROM circleci/node:lts-browsers

LABEL "com.github.actions.name"="Yarn & Percy CI"
LABEL "com.github.actions.description"="Build with Yarn, Snapshot with Percy"
LABEL "com.github.actions.icon"="aperture"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/jpvalery/yarn-percy-ci"
LABEL "homepage"="https://github.com/jpvalery/yarn-percy-ci"
LABEL "maintainer"="@jpvalery"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
