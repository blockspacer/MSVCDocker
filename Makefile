
snapshot12: Vagrantfile
	FIRSTBOOT=1 vagrant up win-msvc12
	vagrant halt win-msvc12
	vagrant up --provision win-msvc12
	vagrant halt win-msvc12

msvc12: Dockerfile
	docker build -f Dockerfile -t msvc:12 --build-arg MSVC=12 .


snapshot14: Vagrantfile
	FIRSTBOOT=1 vagrant up win-msvc14
	vagrant halt win-msvc14
	vagrant up --provision win-msvc14
	vagrant halt win-msvc14

msvc14: Dockerfile
	docker build -f Dockerfile -t msvc:14 --build-arg MSVC=14 .


snapshot15: Vagrantfile
	FIRSTBOOT=1 vagrant up win-msvc15
	vagrant halt win-msvc15
	vagrant up --provision win-msvc15
	vagrant halt win-msvc15

msvc15: Dockerfile
	docker build -f Dockerfile -t msvc:15 --build-arg MSVC=15 .
