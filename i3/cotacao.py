from json import loads
from urllib import request
from sys import stdout

URL = "https://economia.awesomeapi.com.br/last/EUR-BRL"

response = request.urlopen(URL).read()

dict_response = loads(response)

low_value = dict_response.get("EURBRL").get("low")
high_value = dict_response.get("EURBRL").get("high")

# stdout.write(f"Cotação: High: {high_value} Low: {low_value}")
print(f"€-R$: High: R${high_value} Low: R${low_value}")
