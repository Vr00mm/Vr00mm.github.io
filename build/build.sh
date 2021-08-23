helm package litmus/
sha=`sha256sum litmus-2.0.0.tgz |awk '{print $1}'`

cat <<EOF > index.yaml
apiVersion: v1
entries:
  litmus:
  - apiVersion: v1
    appVersion: "2.0.0"
    created: `date -Is`
    description: A Helm chart for litmus
    digest: $sha
    name: litmus
    urls:
    - litmus-2.0.0.tgz
    version: 2.0.0
generated: `date -Is`
EOF
