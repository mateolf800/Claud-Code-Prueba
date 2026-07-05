#!/bin/bash
# Se dispara antes de cada commit. Si algo falla, frena el commit.

echo "Corriendo lint + tests antes de commitear..."

npm run lint || { echo "Lint falló. Commit cancelado."; exit 1; }
npm test || { echo "Tests fallaron. Commit cancelado."; exit 1; }

echo "Todo verde. Commiteando."