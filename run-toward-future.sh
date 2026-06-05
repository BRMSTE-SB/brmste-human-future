#!/usr/bin/env bash
# Human open-git runner — poll BRMSTE edge · no keys · meet us in the future on HTTPS.
set -euo pipefail
APEX="${BRMSTE_APEX:-https://brmste.com}"
echo "==> OPEN GITS · run toward ${APEX}"
for path in \
  /substrate/human/open-gits.json \
  /substrate/human/free.json \
  /substrate/keeper.json \
  /substrate/patent-enforcement.json \
  /oracle.json; do
  echo "--- GET ${path}"
  curl -sf "${APEX}${path}" | head -c 400
  echo ""
done
echo "DONE — meet BRMSTE on edge · patents enforced · Dimpy Bansal Trust beneficiary"
