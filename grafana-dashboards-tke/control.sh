#!/bin/bash

update_kustomize() {
  find dashboards -type f -name '*.json' | cut -d . -f1 | xargs basename | xargs -I{} bash -c "set -x;kustomize edit add configmap dashboard-{} --from-file=dashboards/{}.json"
}

$1