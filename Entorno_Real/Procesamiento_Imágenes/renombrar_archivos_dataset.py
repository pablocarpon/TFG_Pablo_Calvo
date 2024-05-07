import os
import re


# Función para eliminar el hash que se añade al principio del nombre de los archivos cuando
# se descargan las fotos etiquetadas de Label-Studio
def delete_hash(file_name):
    match = re.search(r'-', file_name)

    if match:
        file_name = file_name[match.start() + 1:]

    return file_name


# Función para obtener solo las imágenes de un directorio
def get_files_jpg(path):
    files_png = []
    
    for file in os.listdir(path):
        if file.endswith(".jpg"):
            os.rename(f'{path}/{file}', f'{path}/{delete_hash(file)}')
            files_png.append(delete_hash(file))

    return files_png


# Función para obtener solo las etiquetas de un directorio
def get_files_txt(path):
    files_txt = []
    
    for file in os.listdir(path):
        if file.endswith(".txt"):
            os.rename(f'{path}/{file}', f'{path}/{delete_hash(file)}')
            files_txt.append(delete_hash(file))

    return files_txt

def main():
    # Pedir al usuario que especifique el directorio donde se encuentran los archivos a renombrar
    # y comprobar que exista dicho directorio
    while True:
        base_path = input("Introduzca el nombre del directorio donde se encuentran los archivos que desea renombrar: ")
        if os.path.exists(base_path):
            break
        else:
            print("ERROR: El directorio introducido no existe\n")

    # Preguntar al usuario a partir de qué número se desea asignar el nombre de las fotos mal nombradas y la 
    # extensión de los archivos que quiere renombrar
    first_number = int(input("\nIngrese el número por el cual va a empezar a renombrar el dataset: "))
    ext = input("\nIngrese la extensión de los archivos que quiere renombrar(sin el punto delante): ")

    # Obtener los nombres de todas los archivos del directorio Dataset_Sin_Etiquetar
    wrong_names = []
    if ext == 'jpg':
        wrong_names = get_files_jpg(base_path)
    elif ext == 'txt':
        wrong_names = get_files_txt(base_path)

    # Longitud de los nombres erróneos
    len_wrong_names = len(wrong_names)

    # Crear los nuevos nombres para las fotos
    correct_names = [f'captura_{i}.{ext}' for i in range(first_number, first_number + len_wrong_names)]

    # Hacer el cambio de nombres solo si los nombres nuevos no existen ya para no producir sobreescritura
    if wrong_names[0] in correct_names or wrong_names[len_wrong_names-1] in correct_names:
        print("ERROR: Riesgo de sobreescritura de archivos")
    else:
        for i in range(0, len_wrong_names):
            os.rename(f'{base_path}/{wrong_names[i]}', f'{base_path}/{correct_names[i]}')


if __name__ == "__main__":
    main()