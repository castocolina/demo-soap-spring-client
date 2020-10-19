clean:
	./gradlew clean --warning-mode all

build: clean
	./gradlew build --warning-mode all

#  --scan --stacktrace --debug
assemble: clean
	./gradlew assemble --warning-mode all

build-run-java: build
	java -jar build/libs/demo-soap-spring-client-0.0.1-SNAPSHOT.jar

open-wsdl:
	xdg-open http://127.0.0.1:8080/ws/countries.wsdl >/dev/null

task:
	./gradlew task --warning-mode all

download-wsdl:
	./gradlew downloadWSDL
	ls -laR src/main/resources/

.PHONY: build
