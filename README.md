# README #

Necessary commands for the application to up and running.

### What is this repository for? ###

* Quick summary  

    -this repository is used to measure the Performance of distributed memory object caching system   
    
    -the project is build on docker container  
    
    -R, shell, python and Dude is used to complete this experiment   
    

### Prerequisites:   

    -docker and docker-compose   

### commands to run this project ###

Run all containers  

       -docker-compose up    

Run the experiment  

       -docker exec -it client  /assignment/run.sh    

Get output graphs  

       -docker cp client:/assignment/graph1.pdf .    
       -docker cp client:/assignment/graph2.pdf .  
