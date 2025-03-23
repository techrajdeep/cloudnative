# Getting Started
#### This is demo project for testing sidecar pattern , we have used application container built using spring boot and envoy as side-car container.
* [Envoy](https://www.envoyproxy.io/docs/envoy/latest/intro/what_is_envoy) , Also read Nginx vs HAproxy vs Envoy [link](https://www.getambassador.io/learn/envoy-proxy) , [Read](https://blog.christianposta.com/microservices/01-microservices-patterns-with-envoy-proxy-part-i-circuit-breaking/)
* What is envoy proxy? => L7 proxy (Application layer , reverse proxy[sits b/w client and server, where as proxy sits b/w client and internet for controlling access to specif website]) deals with application specific protocols like gRPC, HTTP,WebSocket etc.Performs content aware routing ie. it can route traffic based on URL paths ,http headers ,query params or even request body content(i.e based on the content of the incoming requests rather than the low level information like IP address or ports). 
In contrast an L4 proxy( Nginx in TCP mode;Transport layer; handles TCP, UDP etc.)  would only route traffic base on IP address and ports without understanding HTTP semantics.
* Enables load balancing , circuit breaking , rate limiting , authentication , observability , service discovery, advanced traffic control etc.
* Concepts you should know : api gateway vs sidecar (adv , disadv) [Link](https://blog.christianposta.com/microservices/do-i-need-an-api-gateway-if-i-have-a-service-mesh/)
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
    <li> Rate limiting</li>
    <li> Health check</li>
    <li> Staged rollout with %-based traffic split(canary releases)</li>
    <li> Fault injection(can deliberately inject delays or errors to test system's resilience )</li>
    <li> Outlier detection (can detect  unhealthy endpoints and automatically eject them from LB pool)</li>
    <li> gRPC support</li>
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

### Best Practices for Traffic Spike Protection
✅ Combine Circuit Breaking + Outlier Detection for improved resilience
Why? If a service becomes slow or overwhelmed, Envoy will stop sending new requests to protect upstream systems
Why? Outlier detection ensures traffic is redirected to healthy instances during partial failures.

✅ Use Rate Limiting to throttle abusive traffic sources
Why? Rate limiting ensures fair usage and protects backend services from excessive traffic.

✅ Configure Retries with timeout limits to avoid retry storms
Why? Retry policies improve reliability by giving services extra chances to recover during brief disruptions.

✅ Set Load Shedding priorities to safeguard mission-critical services
Why? Prioritizing essential traffic ensures that core services remain functional during high load.

✅ Use monitoring tools (like Prometheus, Grafana, or Envoy’s admin interface) to track traffic trends and adjust limits as needed

### Nginx: Ideal for traditional web applications, static content delivery, and reverse proxying.
Best For->Web server + reverse proxy + load balancing combo

### HAProxy: Excellent for high-performance environments with simple yet powerful load balancing needs.
Best For->High-performance load balancing and connection handling

### Envoy: Perfect for modern microservices, Kubernetes environments, and dynamic traffic management.
Best For->Modern microservices architecture and service mesh solutions

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

