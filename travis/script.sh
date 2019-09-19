#!/bin/bash

buckaroo install

if [ $BUCKAROO_USE_BAZEL ]
then

bazel build //:type_traits

else

buck build -c ui.superconsole=DISABLED //:type_traits

fi
