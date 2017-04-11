# docker-chocolatey
Windows Server Core container with chocolatey installed.  Container tag corresponds to the version of chocolatey installed.

# Build
See `Dockerfile` for the default value of chocolatey being installed.

	docker build -t rocklobster/chocolatey:latest .

`--build-arg` can be used to install a specific version of chocolatey.  

	docker build --build-arg chocolateyVersion=0.10.1 -t rocklobster/chocolatey:0.10.1 .
