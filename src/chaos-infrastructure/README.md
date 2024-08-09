# chaos-infra

![Version: 0.0.6](https://img.shields.io/badge/Version-0.0.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.39.0](https://img.shields.io/badge/AppVersion-1.39.0-informational?style=flat-square)

A Helm chart to install chaos infrastructure

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| file://../chaos-crds | chaos-crds | 0.0.6 |
| file://../chaos-exporter | chaos-exporter | 0.0.6 |
| file://../chaos-operator | chaos-operator | 0.0.7 |
| file://../subscriber | subscriber | 0.0.8 |
| file://../workflow-controller | workflow-controller | 0.0.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| chaos-exporter.affinity | object | `{}` |  |
| chaos-exporter.image.imagePullSecrets | list | `[]` |  |
| chaos-exporter.image.pullPolicy | string | `"Always"` |  |
| chaos-exporter.image.registry | string | `"docker.io"` |  |
| chaos-exporter.image.repository | string | `"harness/chaos-exporter"` |  |
| chaos-exporter.image.tag | string | `"1.41.0"` |  |
| chaos-exporter.nodeSelector | object | `{}` |  |
| chaos-exporter.resources.limits.cpu | string | `"225m"` |  |
| chaos-exporter.resources.limits.ephemeral-storage | string | `"1Gi"` |  |
| chaos-exporter.resources.limits.memory | string | `"500Mi"` |  |
| chaos-exporter.resources.requests.cpu | string | `"125m"` |  |
| chaos-exporter.resources.requests.ephemeral-storage | string | `"500Mi"` |  |
| chaos-exporter.resources.requests.memory | string | `"300Mi"` |  |
| chaos-exporter.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| chaos-exporter.securityContext.runAsGroup | int | `2000` |  |
| chaos-exporter.securityContext.runAsUser | int | `2000` |  |
| chaos-exporter.serviceAccount.name | string | `"hce"` |  |
| chaos-exporter.tolerations | list | `[]` |  |
| chaos-operator.affinity | object | `{}` |  |
| chaos-operator.chaosRunner.image.pullPolicy | string | `"Always"` |  |
| chaos-operator.chaosRunner.image.registry | string | `"docker.io"` |  |
| chaos-operator.chaosRunner.image.repository | string | `"harness/chaos-runner"` |  |
| chaos-operator.chaosRunner.image.tag | string | `"1.41.0"` |  |
| chaos-operator.image.imagePullSecrets | list | `[]` |  |
| chaos-operator.image.pullPolicy | string | `"Always"` |  |
| chaos-operator.image.registry | string | `"docker.io"` |  |
| chaos-operator.image.repository | string | `"harness/chaos-operator"` |  |
| chaos-operator.image.tag | string | `"1.41.0"` |  |
| chaos-operator.nodeSelector | object | `{}` |  |
| chaos-operator.resources.limits.cpu | string | `"225m"` |  |
| chaos-operator.resources.limits.ephemeral-storage | string | `"1Gi"` |  |
| chaos-operator.resources.limits.memory | string | `"500Mi"` |  |
| chaos-operator.resources.requests.cpu | string | `"125m"` |  |
| chaos-operator.resources.requests.ephemeral-storage | string | `"500Mi"` |  |
| chaos-operator.resources.requests.memory | string | `"300Mi"` |  |
| chaos-operator.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| chaos-operator.securityContext.runAsGroup | int | `2000` |  |
| chaos-operator.securityContext.runAsUser | int | `2000` |  |
| chaos-operator.serviceAccount.name | string | `"hce"` |  |
| chaos-operator.tolerations | list | `[]` |  |
| global.accessKey | string | `""` |  |
| global.accountId | string | `""` |  |
| global.autoUpgrade.enabled | bool | `false` |  |
| global.clusterScope.enabled | bool | `true` |  |
| global.infraId | string | `""` |  |
| global.serverAddress | string | `"https://app.harness.io/gratis/chaos/kserver/api"` |  |
| global.workflowInstanceId | string | `""` |  |
| subscriber.affinity | object | `{}` |  |
| subscriber.connectionType | string | `"HTTPS"` |  |
| subscriber.customTlsCert | string | `""` |  |
| subscriber.image.imagePullSecrets | list | `[]` |  |
| subscriber.image.pullPolicy | string | `"Always"` |  |
| subscriber.image.registry | string | `"docker.io"` |  |
| subscriber.image.repository | string | `"harness/chaos-subscriber"` |  |
| subscriber.image.tag | string | `"1.41.0"` |  |
| subscriber.isInfraConfirmed | string | `"false"` |  |
| subscriber.isSecretEnabled | string | `"true"` |  |
| subscriber.nodeSelector | object | `{}` |  |
| subscriber.resources.limits.cpu | string | `"225m"` |  |
| subscriber.resources.limits.ephemeral-storage | string | `"1Gi"` |  |
| subscriber.resources.limits.memory | string | `"500Mi"` |  |
| subscriber.resources.requests.cpu | string | `"125m"` |  |
| subscriber.resources.requests.ephemeral-storage | string | `"500Mi"` |  |
| subscriber.resources.requests.memory | string | `"300Mi"` |  |
| subscriber.secrets.env.accessKey.key | string | `"ACCESS_KEY"` |  |
| subscriber.secrets.env.accessKey.secretName | string | `"subscriber-secret"` |  |
| subscriber.secrets.env.customTlsCert.key | string | `"CUSTOM_TLS_CERT"` |  |
| subscriber.secrets.env.customTlsCert.secretName | string | `"subscriber-secret"` |  |
| subscriber.secrets.env.infraId.key | string | `"INFRA_ID"` |  |
| subscriber.secrets.env.infraId.secretName | string | `"subscriber-secret"` |  |
| subscriber.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| subscriber.securityContext.runAsGroup | int | `2000` |  |
| subscriber.securityContext.runAsUser | int | `2000` |  |
| subscriber.serviceAccount.name | string | `"hce"` |  |
| subscriber.skipSslVerify | string | `"true"` |  |
| subscriber.tolerations | list | `[]` |  |
| subscriber.upgrader.image.imagePullSecrets | list | `[]` |  |
| subscriber.upgrader.image.pullPolicy | string | `"Always"` |  |
| subscriber.upgrader.image.registry | string | `"docker.io"` |  |
| subscriber.upgrader.image.repository | string | `"harness/k8s-chaos-infrastructure-upgrader"` |  |
| subscriber.upgrader.image.tag | string | `"1.41.0"` |  |
| subscriber.version | string | `"1.41.0"` |  |
| tags.clusterScopeMode | bool | `false` |  |
| tags.crdMode | bool | `false` |  |
| tags.namespaceMode | bool | `false` |  |
| workflow-controller.affinity | object | `{}` |  |
| workflow-controller.argoExec.image.pullPolicy | string | `"Always"` |  |
| workflow-controller.argoExec.image.registry | string | `"docker.io"` |  |
| workflow-controller.argoExec.image.repository | string | `"harness/chaos-argoexec"` |  |
| workflow-controller.argoExec.image.tag | string | `"v3.4.16"` |  |
| workflow-controller.image.imagePullSecrets | list | `[]` |  |
| workflow-controller.image.pullPolicy | string | `"Always"` |  |
| workflow-controller.image.registry | string | `"docker.io"` |  |
| workflow-controller.image.repository | string | `"harness/chaos-workflow-controller"` |  |
| workflow-controller.image.tag | string | `"v3.4.16"` |  |
| workflow-controller.nodeSelector | object | `{}` |  |
| workflow-controller.resources.limits.cpu | string | `"225m"` |  |
| workflow-controller.resources.limits.ephemeral-storage | string | `"1Gi"` |  |
| workflow-controller.resources.limits.memory | string | `"500Mi"` |  |
| workflow-controller.resources.requests.cpu | string | `"125m"` |  |
| workflow-controller.resources.requests.ephemeral-storage | string | `"500Mi"` |  |
| workflow-controller.resources.requests.memory | string | `"300Mi"` |  |
| workflow-controller.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| workflow-controller.securityContext.runAsGroup | int | `2000` |  |
| workflow-controller.securityContext.runAsUser | int | `2000` |  |
| workflow-controller.serviceAccount.name | string | `"hce"` |  |
| workflow-controller.tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
