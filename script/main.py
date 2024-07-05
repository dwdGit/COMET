import re
from datetime import datetime

# Definisci il formato della data
date_format = '%Y-%m-%d %H:%M:%S'

# Leggi il file con gli statement SQL
with open('vendita.sql', 'r') as file:
    sql_statements = file.read()

# Definisci il formato della data che cercherai e sostituirai
date_pattern = re.compile(r"('(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}.\d{3})')")

# Funzione per sostituire il formato della data con TO_DATE
def replace_date(match):
    date_str = match.group(2)
    date_str = date_str[0:19]
    date_obj = datetime.strptime(date_str, date_format)
    month = date_obj.month if date_obj.month >= 10 else "0" + str(date_obj.month)
    day = date_obj.day if date_obj.day >= 10 else "0" + str(date_obj.day)
    hour = date_obj.hour if date_obj.hour >= 10 else "0" + str(date_obj.hour)
    minute = date_obj.minute if date_obj.minute >= 10 else "0" + str(date_obj.minute)
    second = date_obj.second if date_obj.second >= 10 else "0" + str(date_obj.second)
    return f"TO_DATE('{date_obj.year}-{month}-{day}T{hour}:{minute}:{second}Z', 'YYYY-MM-DD\"T\"HH24:MI:SS\"Z\"')"

# Applica la sostituzione
updated_sql_statements = date_pattern.sub(replace_date, sql_statements)

# Scrivi gli statement aggiornati in un nuovo file
with open('updated_inserts.sql', 'w') as file:
    file.write(updated_sql_statements)
