#!/usr/bin/env bash
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Deploy target — mirrors the odem.terminal.skeletons ansible role.
# Override for testing, e.g. MPS_SKELETONS_DIR=$PWD/tmp.
DEST="${MPS_SKELETONS_DIR:-/etc/mps/skeletons}"

SUDO=""
[[ ${EUID} -eq 0 ]] || SUDO="sudo"

${SUDO} install -d -m 0755 "${DEST}"
${SUDO} cp -a "${SRC}/skeletons/." "${DEST}/"
${SUDO} find "${DEST}" -type d -exec chmod 0755 {} +
${SUDO} find "${DEST}" -type f -exec chmod 0644 {} +

echo "mps-terminal-skeletons installed to ${DEST}."