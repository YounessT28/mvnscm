call mvn scm:checkout
cd target/checkout
call mvn package
call mvn clean install
copy "C:\formationmaven\TPs\TP3\mvnscm\target\checkout\monappli-web\target\monappli-web.war" "C:\Program Files\Apache Software Foundation\Tomcat 8.5\webapps\monappli-web.war"
timeout 10
start chrome http://127.0.0.1:8080/monappli-web