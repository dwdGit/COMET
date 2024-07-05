pf = 'F-002'
mps = 135
mpe = 170

#sql_query = "INSERT INTO FORMULA_MATERIAPRIMA (CodiceFormula, CodiceProdottoMateriaPrima, QuantitaDaUtilizzare, OrdineDiUtilizzo) VALUES\n"

sql_query = ""

def getMP(mp):
    mp_str = "MP-"
    if mp < 10:
	    mp_str += "00" + str(mp)
    elif mp < 100:
	    mp_str += "0" + str(mp)
    else:
	    mp_str += str(mp)
		
    return mp_str
	
for mp in range(mps,mpe):
    if mp in set([40,81,82]):
        continue
    sql_query += f"('{pf}', '{getMP(mp)}', 150, 1),\n"

print(sql_query)