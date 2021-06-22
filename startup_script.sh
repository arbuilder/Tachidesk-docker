#!/bin/sh
if [ ! -f /home/arbuilder/.local/share/Tachidesk/docker_touchfile ]; then
	touch /home/arbuilder/.local/share/Tachidesk/docker_touchfile
	curl -s --create-dirs -L https:/raw.githubusercontent.com/arbuilder/Tachidesk-docker/main/server.conf -o /home/arbuilder/.local/share/Tachidesk/server.conf;
fi
echo ""
echo ""
echo "                                                                ************README***********"
echo "-> docker.io/arbuild/tachidesk-docker is depreciated as there is an Official Tachidesk Docker Images builds on ghcr.io/suwayomi/tachidesk. "
echo "-> Read readme of ghcr.io/suwayomi/tachidesk ( https://github.com/suwayomi/docker-tachidesk ) before switching and running ghcr.io/suwayomi/tachidesk based container. "
echo "-> Old Readme ( docker.io/arbuild/tachidesk-docker ) is available at https://github.com/arbuilder/Tachidesk-docker. "
echo "                                                                *****************************"
echo ""
echo ""
echo "The server is running by default configuration on  http://localhost:4567"
echo "log file location inside the container  /home/arbuilder/.local/share/Tachidesk/logfile.log"
exec java -jar "/home/arbuilder/startup/tachidesk_latest.jar" > /home/arbuilder/.local/share/Tachidesk/logfile.log 2>&1;
