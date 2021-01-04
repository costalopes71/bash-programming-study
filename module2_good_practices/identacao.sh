#! /usr/bin/env bash

# identar comandos é muito importante

find ~/Documentos -iname "*.sh"       \
                  -user developer     \
                  -type f             \
                  -size 1M            \
                  -exec ls -lah {}    \;