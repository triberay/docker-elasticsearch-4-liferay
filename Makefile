build:
	- docker build -t triberay/elasticsearch-4-liferay:7.1.0-ga1 .
	- docker build -t triberay/elasticsearch-4-liferay:latest .

push: build
	- docker push triberay/elasticsearch-4-liferay:7.1.0-ga1
	- docker push triberay/elasticsearch-4-liferay:latest