## Docker image with Newman and htmlextra reporter for GitLab Continuous Integration Pipeline

### Description
This image runs latest Newman version on latest Node and current Alpine.

## Using for Gitlab Continuous Integration Pipeline
Example .gitlab-ci.yml:

```
stages:
  - postman-test

postman-test:
  stage: postman-test
  image: antoinetrouve/newman-htmlextra
  script:
    - newman run path/to/collection.json -e  path/to/environments.json -r htmlextra --reporter-htmlextra-title "Reporting" --reporter-htmlextra-browserTitle "Reporting" --reporter-htmlextra-export "report.html"
  artifacts:
    when: always
    paths:
      - report.html
  tags:
    - docker_hub
```

## Using with Docker command
```
docker run --rm -v "your/absolute/path/api:/api" newman-htmlextra newman run "/api/your_collection.json" -e "/api/your_environment.json" -r htmlextra --reporter-htmlextra-title "Reporting" --reporter-htmlextra-browserTitle "Reporting" --reporter-htmlextra-export "/api/report.html"
```
