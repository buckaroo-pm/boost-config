#!/bin/bash

buckaroo install

if [ $BUCKAROO_USE_BAZEL ]
then

bazel build //:config

else

buck build -c ui.superconsole=DISABLED //:config

fi
