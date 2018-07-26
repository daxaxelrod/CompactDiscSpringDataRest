Docker file builds the api but you're gonna need a db. Either spin up another container with mysql in it or change the application.properties file to include a remote db somewhere.

<code>docker run -p 8080:8081 docker.conygre.com:5000/davidaxelrod</code>

note that the server is not served over https so you'll have to modify /etc/docker/daemon.json to include docker.conygre.com in your insecure_registries

<code>{
     "insecure-registries" : ["docker.conygre.com:5000"]
}</code> 

this application is available publicly [on github](https://github.com/daxaxelrod/CompactDiscSpringDataRest)
