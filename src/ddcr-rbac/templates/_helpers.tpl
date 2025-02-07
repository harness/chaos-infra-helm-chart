{{/*
Expand the name of the chart.
*/}}
{{- define "ddcr-rbac.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "ddcr-rbac.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "ddcr-rbac.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "ddcr-rbac.labels" -}}
helm.sh/chart: {{ include "ddcr-rbac.chart" . }}
{{ include "ddcr-rbac.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "ddcr-rbac.selectorLabels" -}}
app.kubernetes.io/name: {{ include "ddcr-rbac.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "ddcr-rbac.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "ddcr-rbac.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the name of the role to use
*/}}
{{- define "ddcr-rbac.roleName" -}}
{{- if .Values.role.name }}
{{- .Values.role.name }}
{{- else }}
{{- default (include "ddcr-rbac.fullname" .) .Values.role.name }}
{{- end }}
{{- end }}

{{/*
Create the name of the role binding to use
*/}}
{{- define "ddcr-rbac.roleBindingName" -}}
{{- if .Values.roleBinding.name }}
{{- .Values.roleBinding.name }}
{{- else }}
{{- default (include "ddcr-rbac.fullname" .) .Values.roleBinding.name }}
{{- end }}
{{- end }}

{{/*
Create the name of the cluster role to use
*/}}
{{- define "ddcr-rbac.clusterRoleName" -}}
{{- if .Values.clusterRole.name }}
{{- .Values.clusterRole.name }}
{{- else }}
{{- default (include "ddcr-rbac.fullname" .) .Values.clusterRole.name }}
{{- end }}
{{- end }}

{{/*
Create the name of the cluster role binding to use
*/}}
{{- define "ddcr-rbac.clusterRoleBindingName" -}}
{{- if .Values.clusterRoleBinding.name }}
{{- .Values.clusterRoleBinding.name }}
{{- else }}
{{- default (include "ddcr-rbac.fullname" .) .Values.clusterRoleBinding.name }}
{{- end }}
{{- end }}
