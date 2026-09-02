#!/bin/bash
# ===========================================
# novo.sh — Adiciona uma solução do Beecrowd
# Uso: ./novo.sh <numero_do_problema> <linguagem>
# Exemplo: ./novo.sh 1001 java
# ===========================================

set -e

NUMERO=$1
LINGUAGEM=$2

# Validações
if [ -z "$NUMERO" ] || [ -z "$LINGUAGEM" ]; then
  echo "Uso: ./novo.sh <numero_do_problema> <linguagem>"
  echo "Exemplo: ./novo.sh 1001 java"
  exit 1
fi

LINGUAGEM=$(echo "$LINGUAGEM" | tr '[:upper:]' '[:lower:]')

case "$LINGUAGEM" in
  java)   EXT="java" ;;
  python) EXT="py"   ;;
  c)      EXT="c"    ;;
  *)
    echo "Linguagem não suportada: $LINGUAGEM (use java, python ou c)"
    exit 1
    ;;
esac

PASTA="$LINGUAGEM"
ARQUIVO="$PASTA/$NUMERO.$EXT"

# Cria a pasta se não existir
mkdir -p "$PASTA"

# Cria o arquivo se não existir
if [ ! -f "$ARQUIVO" ]; then
  echo "// Beecrowd #$NUMERO — Solução em $LINGUAGEM" > "$ARQUIVO"
  echo "Arquivo criado: $ARQUIVO"
fi

# Abre o arquivo no editor padrão
echo ""
echo "Cole sua solução em: $ARQUIVO"
echo "Pressione ENTER quando terminar para fazer o commit..."
read

# Commit e push automático
git add "$ARQUIVO"
git commit -m "beecrowd #$NUMERO — solução em $LINGUAGEM"
git push

echo ""
echo "✅ Solução #$NUMERO enviada para o GitHub com sucesso!"
