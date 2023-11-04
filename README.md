# docker_spring_cloud_config_server

Spring Cloud Config Server Docker Image

## Test

```yml
message: Hello from config server !
spring:
    application:
        name: my_application
```

- [dev](http://localhost:8888/my_application/dev)
- [stage](http://localhost:8888/my_application/stage)
- [production](http://localhost:8888/my_application/production)

## Ressources

- [Spring guides - Centralized Configuration](https://spring.io/guides/gs/centralized-configuration/)
- [Spring Cloud Config](https://spring.io/projects/spring-cloud-config)
