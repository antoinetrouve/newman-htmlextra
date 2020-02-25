## Docker image with Newman and htmlextra reporter for GitLab Continuous Integration Pipeline

### Description
This image runs latest Newman version on latest Node and current Alpine.

Example .gitlab-ci.yml:

```
...your pipeline config...
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
      - reports.html
```