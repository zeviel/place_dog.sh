#!/bin/bash

api="https://place.dog"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_random_dog_image() {
	# 1 - width: (integer): <width - default: 640>
	# 2 - height: (integer): <height - default: 480>
    curl --request GET \
        --url "$api/${1:-640}/${2:-480}" \
        --user-agent "$user_agent" \
        --header "content-type: image/jpeg" \
        --output "dog.jpg"
}
