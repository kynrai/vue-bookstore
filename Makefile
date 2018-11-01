deploy:
	@yarn run build && cd dist && surge --domain https://kynrai-bookstore.surge.sh .
.PHONY: deploy
