#!/usr/bin/env bash -x

r.js -o tasks/optimize-config.js

# replace require-config.js to index.js
# due to optimization took care of it already
cd deploy
	sed -i.bak 's/require-config/index/' index.html
	rm index.html.bak
	rm script/require-config.js
cd -
