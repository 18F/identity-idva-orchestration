# Github Workflows

## Workflows

This folder contains workflows for deploying and managing IDVA.

- `deploy-ALL-*` workflows work together to deploy all of the microservices for the application in test and prod and are triggered by tags and releases. These control the deployment sequence to deploy the components in the right order.

- `deploy-*` workflows deploy a single microservice and are triggered by commits to main on paths corresponding to files pertaining to that microservice.

- `run-*` workflows run task that configure services used by the microservices.

- `update-hashes` workflow updates the hashes of apps when their versions change.

## Actions

The actions folder contains common actions used by the deployment workflows.

- `setup` action performs the deployment steps common to all SK microservices within IDVA.
