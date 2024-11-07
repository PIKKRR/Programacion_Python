from io import open 

archivo_texto=open("archivo.txt","r+")

lista_texto=archivo_texto.readlines();

lista_texto[1]=" Esta línea ha sido incluida desde el exterior \n"

archivo_texto.seek(0)

archivo_texto.writelines(lista_texto)

archivo_texto.close()