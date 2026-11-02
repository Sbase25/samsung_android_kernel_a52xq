#!/bin/bash
# Apply Overgrowth patches after `repo sync`. Run from the LineageOS source root.
set -e
TG="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(pwd)"
[ -d "$ROOT/.repo" ] || { echo "run this from the LineageOS source root"; exit 1; }
apply() {  # $1 = project dir, $2 = patch dir
  echo "== $1"
  cd "$ROOT/$1"
  git am --abort >/dev/null 2>&1 || true
  for p in "$TG/$2"/*.patch; do
    subj=$(grep -m1 '^Subject:' "$p" | sed 's/^Subject: \[PATCH[^]]*\] //')
    if git log -50 --format=%s | grep -qxF "$subj"; then echo "   already applied: $subj"; continue; fi
    git -c user.name=Overgrowth -c user.email=overgrowth@localhost am -3 "$p" && echo "   applied: $subj"
  done
  cd "$ROOT"
}
apply kernel/samsung/sm7225 patches/kernel
apply device/samsung/a52xq patches/device_a52xq
echo "done."
