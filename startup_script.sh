#!/bin/sh
if [ ! -f /home/arbuilder/.local/share/Tachidesk/docker_touchfile ]; then
	touch /home/arbuilder/.local/share/Tachidesk/docker_touchfile
	curl -s --create-dirs -L https:/raw.githubusercontent.com/arbuilder/Tachidesk-docker/main/server.conf -o /home/arbuilder/.local/share/Tachidesk/server.conf;
fi
echo ""
echo ""
echo "                                                                ************README***********"
echo "-> docker.io/arbuild/tachidesk-docker will be decreciated in the future as i am releasing the Official Tachidesk Docker Images builds on ghcr.io/suwayomi/tachidesk "
echo "-> Readme for ghcr.io/suwayomi/tachidesk is avilable at https://github.com/suwayomi/docker-tachidesk (only alpine multi-arch based docker images)  "
echo "-> Old Readme ( docker.io/arbuild/tachidesk-docker ) is avilable at https://github.com/arbuilder/Tachidesk-docker"
echo "                                                                *****************************"
echo ""
echo ""
echo "The server is running by default configuration on  http://localhost:4567"
echo "log file location inside the container  /home/arbuilder/.local/share/Tachidesk/logfile.log"
exec java -jar "/home/arbuilder/startup/tachidesk_latest.jar" > /home/arbuilder/.local/share/Tachidesk/logfile.log 2>&1;