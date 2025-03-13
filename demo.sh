#!/bin/bash
env=${env_name}
execute=${myboolean}
echo "Hello!! Artisan-Tek!!"
echo "Executing in ${env}--Environment"
if [[ $execute == "true" ]]; then
echo "Executing in ${env}--Environment"
echo "Executing the task"
else
echo "skipping the task for ${env}--Environment"
fi
echo "Hi"
echo "Hi"
