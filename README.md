# Getting Started
#### This is demo project for testing sidecar pattern , we have used application container built using spring boot and envoy as side-car container.
* Concepts you should know : api gateway vs sidecar (adv , disadv)
<ol>
<li> Scope=> sidecar: inter service , gateway:External API </li>
<li> Deployment=> sidecar: inter service , gateway:External API </li>
<li> Responsibility => sidecar: Low level concerns , gateway:Higher level concerns  </li>
<li> Granularity => sidecar:Micro level  , gateway:Macro view </li>
<li> Flexibility => sidecar: Fine grained control, gateway:Diverse client needs </li>
</ol>

* Key characteristics of sidecar proxy

<ol>
    <li>co-located deployment with services</li>
    <li>Independent lifecycle management</li>
    <li>Resource efficiency</li>
    <li>Isolation of concerns</li>
</ol>

* Different characteristics of sidecar proxy

  <ol>
    <li>Dynamic service discovery</li>
    <li> Load balancing</li>
    <li> TLS termination</li>
    <li> Http/2 and gRPC proxies</li>
    <li> Circuit breakers</li>
    <li> Health check</li>
    <li> Staged rollout with %-based traffic split</li>
    <li> Fault injection</li>
    <li> Rich metrics</li>
</ol>

* Benefits and tradeoffs
<ol>
<li>Simplified microservices conf</li>
<li>Improved  observability and  monitoring</li>
<li>Enhanced scalability and resilience</li>
</ol>
<ol>
<li>Additional resource overhead</li>
<li>Potential SPoF (single point of failure)</li>
<li>Latency</li>
<li>Complexity</li>
</ol>

### List of commands
* update version in build.gradle(current version is 0.0.7)
* update jar version in Dockerfile(current version is 0.0.7)
* update cloudnative image version in docker-compose file
* ./gradlew build
* docker build -t rajdeepsahoo123/cloudnative:0.0.7 .
* docker push rajdeepsahoo123/cloudnative:0.0.7
*  docker-compose up --build -d
*  docker-compose down
### Reference Documentation
For further reference, please consider the following sections:

* [Official Gradle documentation](https://docs.gradle.org)
* [Spring Boot Gradle Plugin Reference Guide](https://docs.spring.io/spring-boot/3.4.4/gradle-plugin)
* [Create an OCI image](https://docs.spring.io/spring-boot/3.4.4/gradle-plugin/packaging-oci-image.html)
* [Spring Boot Testcontainers support](https://docs.spring.io/spring-boot/3.4.4/reference/testing/testcontainers.html#testing.testcontainers)
* [Spring Web](https://docs.spring.io/spring-boot/3.4.4/reference/web/servlet.html)
* [Testcontainers](https://java.testcontainers.org/)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)

### Additional Links
These additional references should also help you:

* [Gradle Build Scans – insights for your project's build](https://scans.gradle.com#gradle)

### Testcontainers support

This project uses [Testcontainers at development time](https://docs.spring.io/spring-boot/3.4.4/reference/features/dev-services.html#features.dev-services.testcontainers).

Testcontainers has been configured to use the following Docker images:


Please review the tags of the used images and set them to the same as you're running in production.

