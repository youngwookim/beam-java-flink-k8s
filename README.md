- https://beam.apache.org/get-started/quickstart-java/
```
$ mvn archetype:generate \
      -DarchetypeGroupId=org.apache.beam \
      -DarchetypeArtifactId=beam-sdks-java-maven-archetypes-examples \
      -DarchetypeVersion=2.23.0 \
      -DgroupId=org.example \
      -DartifactId=word-count-beam \
      -Dversion="0.1" \
      -Dpackage=org.apache.beam.examples \
      -DinteractiveMode=false
```

- https://beam.apache.org/documentation/runners/flink/
```
$ mvn package -Pflink-runner

```

Flink on k8s
- https://github.com/GoogleCloudPlatform/flink-on-k8s-operator
