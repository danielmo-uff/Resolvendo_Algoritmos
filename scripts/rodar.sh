#!/usr/bin/env bash
set -e

if [ -z "$1" ]; then
  echo "Uso: ./scripts/rodar.sh arquivo"
  echo "Exemplo: ./scripts/rodar.sh python/teste.py"
  exit 1
fi

FILE="$1"

case "$FILE" in
  *.py)
    python3 "$FILE"
    ;;

  *.c)
    gcc -Wall -o "${FILE%.c}.out" "$FILE"
    ./"${FILE%.c}.out"
    ;;

  *.cpp)
    g++ -Wall -o "${FILE%.cpp}.out" "$FILE"
    ./"${FILE%.cpp}.out"
    ;;

  *.rs)
    rustc "$FILE" -o "${FILE%.rs}"
    ./"${FILE%.rs}"
    ;;

  *.java)
    javac "$FILE"
    java -cp "$(dirname "$FILE")" "$(basename "$FILE" .java)"
    ;;

  *.js)
    node "$FILE"
    ;;

  *.ts)
    npx --yes tsx "$FILE"
    ;;

  *.sql)
    sqlite3 :memory: < "$FILE"
    ;;

  *)
    echo "Extensão não suportada."
    exit 1
    ;;
esac
