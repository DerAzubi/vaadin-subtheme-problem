@ECHO OFF
TITLE [clean & install]

REM somit bleibt die CMD am ende offen
SET MAVEN_BATCH_PAUSE=on

IF EXIST setenv.cmd (
    CALL setenv.cmd
    ECHO setenv.cmd eingelesen!
) ELSE (
    COLOR C0
    ECHO setenv.cmd nicht gefunden!
    goto :end
)

REM in Hauptverzeichnis gehen und durchbauen
cd ..
mvnw.cmd clean install -DskipTests -Pproduction

:end
PAUSE