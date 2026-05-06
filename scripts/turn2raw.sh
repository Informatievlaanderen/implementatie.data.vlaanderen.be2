#!/bin/bash

FILE=$1
COMMIT=$2

jq --arg branchtag "$COMMIT"  -r ' .[] |=  . + {"type": "raw"} + {"directory" : .urlref} + {"repository":"https://github.com/Informatievlaanderen/implementatie.data.vlaanderen.be-generated" } + {"branchtag" : "\($branchtag)" } ' ${FILE}
