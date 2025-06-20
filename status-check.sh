URL="https://www.infnet.edu.br/infnet/"
STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

echo "Status HTTP para $URL: $STATUS"
if [ "$STATUS" -ne 200 ]; then
  echo "Site fora do ar ou inacessível."
  exit 1
else
  echo "Site acessível com sucesso."
  exit 0
fi
