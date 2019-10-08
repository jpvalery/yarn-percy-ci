FROM node:10.14.1-alpine

LABEL "com.github.actions.name"="Yarn & Percy CI"
LABEL "com.github.actions.description"="Build with Yarn, Snapshot with Percy"
LABEL "com.github.actions.icon"="aperture"
LABEL "com.github.actions.color"="orange"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
