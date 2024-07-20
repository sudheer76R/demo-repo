#!/bin/bash
env=${env_name}
execute=${myboolean}
echo "Hello!! Artisan-Tek!!"
echo "Executing in ${env}--Environment"
if [[ $execute == "true" ]]; then
echo "Executing the task"
else
echo "skipping the task"
fi
