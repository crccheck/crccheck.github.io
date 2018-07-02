help: ## Shows this help
	@echo "$$(grep -h '#\{2\}' $(MAKEFILE_LIST) | sed 's/: #\{2\} /	/' | column -t -s '	')"

dev: ## Run the site with a watcher
	bundle exec jekyll serve --baseurl ''

sass:
	@curl --silent https://raw.githubusercontent.com/necolas/normalize.css/master/normalize.css > _sass/_normalize.scss

build: ## Do a local build
build: sass
