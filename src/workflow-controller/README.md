# workflow-controller

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.4.16](https://img.shields.io/badge/AppVersion-3.4.16-informational?style=flat-square)

A Helm chart to install workflow-controller

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| argoExec.image.pullPolicy | string | `"Always"` |  |
| argoExec.image.registry | string | `"docker.io"` |  |
| argoExec.image.repository | string | `"chaosnative/argoexec"` |  |
| argoExec.image.tag | string | `"v3.4.16"` |  |
| global.accessKey | string | `""` |  |
| global.accountId | string | `""` |  |
| global.autoUpgrade.enabled | bool | `true` |  |
| global.clusterScope.enabled | bool | `false` |  |
| global.infraId | string | `""` |  |
| global.serverAddress | string | `"https://app.harness.io/gratis/chaos/kserver/api"` |  |
| global.workflowInstanceId | string | `""` |  |
| image.imagePullSecrets | list | `[]` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"chaosnative/workflow-controller"` |  |
| image.tag | string | `"v3.4.16"` |  |
| nodeSelector | object | `{}` |  |
| resources.limits.cpu | string | `"225m"` |  |
| resources.limits.ephemeral-storage | string | `"1Gi"` |  |
| resources.limits.memory | string | `"500Mi"` |  |
| resources.requests.cpu | string | `"125m"` |  |
| resources.requests.ephemeral-storage | string | `"500Mi"` |  |
| resources.requests.memory | string | `"300Mi"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.runAsGroup | int | `2000` |  |
| securityContext.runAsUser | int | `2000` |  |
| serviceAccount.name | string | `"hce"` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)