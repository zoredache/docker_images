FROM rundeck/rundeck:3.0.24

LABEL maintainer="zoredache@gmail.com"

RUN sudo sh -c 'apt-get update && \
                apt-get install --yes curl apt-transport-https lsb-release gnupg && \
                curl -fsSL "https://download.docker.com/linux/debian/gpg" | apt-key add -qq - && \
                echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" \
                  > /etc/apt/sources.list.d/download_docker_com_linux_debian.list && \
                apt-get update && \
                apt-get install --yes docker-ce-cli && \
                addgroup --gid 999 docker && \
                adduser rundeck docker && \
                apt-get install --yes sshpass && \
                rm -rf /var/lib/apt/lists/*'

