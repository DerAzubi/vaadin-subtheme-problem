@ECHO OFF
CLS

TITLE [Starte Webserver]

REM ins Hauptverzeichnis. Variablen könnten auch in der setenv.cmd überschrieben werden
cd ..
SET DIR=%CD%

REM im win ordner nach der setenv suchen
cd win
IF EXIST setenv.cmd (
    CALL setenv.cmd
    ECHO setenv.cmd eingelesen!
) ELSE (
    COLOR C0
    ECHO setenv.cmd nicht gefunden!
    goto :end
)

REM prüfen wo die Jar zum starten liegt
cd ..
IF EXIST target/%JAR_NAME% (
    ECHO nutze JAR aus dem target Ordner
    SET JAR_NAME=target/%JAR_NAME%
    goto :run
) 
IF EXIST %JAR_NAME% (
    ECHO nutze Jar aus dem Home verzeichnis
    goto :run
) ELSE (
    COLOR C0
    ECHO keine Jar zum starten gefunden!
    goto :end
)

:run
ECHO 
%JAVA_HOME%\bin\java -jar %JAR_NAME%

:end
PAUSE