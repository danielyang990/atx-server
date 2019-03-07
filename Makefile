dc_cmd=docker-compose -p atx
atx_server_addr=192.168.147.235:8000
# --serial $SERIAL

up:
	$(dc_cmd) up -d --build

push:
	docker push firewolf990/atxserver

down:
	$(dc_cmd) down

shell:
	docker exec -it atxserver bash

ps:
	$(dc_cmd) ps

log:
	$(dc_cmd) logs -f atxserver

init:
	./u2init -s $(atx_server_addr) --agent=0.5.4
	# python -m uiautomator2 init --server $(atx_server_addr)
