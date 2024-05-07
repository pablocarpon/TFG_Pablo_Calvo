import os
import shutil
import errno


# Función para obtener solo las imágenes de un directorio
def get_files_jpg(path):
    files_jpg = []
    
    for file in os.listdir(path):
        if file.endswith(".jpg"):
            files_jpg.append(file)

    files_jpg = sorted(files_jpg)

    return files_jpg


# Función para obtener solo las etiquetas de un directorio
def get_files_txt(path):
    files_txt = []
    
    for file in os.listdir(path):
        if file.endswith(".txt"):
            files_txt.append(file)

    files_txt = sorted(files_txt)

    return files_txt

def main():
    # Almacenar las rutas que se van a usar
    current_path = os.getcwd()
    images_path = os.path.join(current_path, '..', 'Imágenes_Etiquetadas', 'images')
    labels_path = os.path.join(current_path, '..', 'Imágenes_Etiquetadas', 'labels')
    train_images_path = os.path.join(images_path, 'train')
    val_images_path = os.path.join(images_path, 'val')
    train_labels_path = os.path.join(labels_path, 'train')
    val_labels_path = os.path.join(labels_path, 'val')

    # Crear los directorios de entrenamiento y validación tanto en la carpeta de imágenes como en la de 
    # etiquetas
    try:
        os.mkdir(train_images_path)
        os.mkdir(val_images_path)
        os.mkdir(train_labels_path)
        os.mkdir(val_labels_path)
    except OSError as e:
        if e.errno != errno.EEXIST:
            raise

    # Preguntar al usuario qué acción quiere tomar dependiendo de donde se encuentren los datos
    print("Indique por pantalla el número de la acción que desea realizar")
    print("1  -->  Dividir el dataset en entrenamiento y validación")
    print("2  -->  Eliminar la división del dataset")
    modo = int(input("\n"))

    while(modo != 1 and modo != 2):
        print("\nERROR: El número introducido no es correcto")
        print("Introduzca un número según las indicaciones:")
        modo = int(input("\n"))

    # Si hay imágenes sin dividir las divide según indique el usuario, sino se lanza un error 
    if modo == 1:
        split_images = get_files_jpg(images_path)
        split_labels = get_files_txt(labels_path)

        if len(split_images) > 0 and len(split_labels) > 0:
            print("\nIntroduzca el porcentaje(entre 0% y 100%) de imágenes que quiere para el entrenamiento:")
            percent = int(input())
            while(percent < 0 or percent > 100):
                print("\nERROR: El número proporcionado no corresponde a un porcentaje")
                print("Introduzca un número que corresponda a un porcentaje:")
                percent = int(input())
            
            train_images_num = int((len(split_images) * percent) / 100)
            train_split_images = split_images[:train_images_num]
            val_split_images = split_images[train_images_num:]
            train_split_labels = split_labels[:train_images_num]
            val_split_labels = split_labels[train_images_num:]

            for img in train_split_images:
                shutil.move(os.path.join(images_path, img), train_images_path)
            for img in val_split_images:
                shutil.move(os.path.join(images_path, img), val_images_path)
            for lbl in train_split_labels:
                shutil.move(os.path.join(labels_path, lbl), train_labels_path)
            for lbl in val_split_labels:
                shutil.move(os.path.join(labels_path, lbl), val_labels_path)

            print("\nIMÁGENES CORRECTAMENTE DIVIDIDAS")

        else:
            print("\nERROR: No existen imágenes para ser divididas")

    # Si hay imágenes divididas las saca de los directorios 'train' y 'val' para que puedan ser dividas de 
    # nuevo
    elif modo == 2:
        train_split_images = get_files_jpg(train_images_path)
        val_split_images = get_files_jpg(val_images_path)
        train_split_labels = get_files_txt(train_labels_path)
        val_split_labels = get_files_txt(val_labels_path)
        
        if len(train_split_images) > 0 or len(val_split_images) > 0 or len(train_split_labels) > 0 or len(val_split_labels) > 0:
            for img in train_split_images:
                shutil.move(os.path.join(train_images_path, img), images_path)
            for img in val_split_images:
                shutil.move(os.path.join(val_images_path, img), images_path)
            for lbl in train_split_labels:
                shutil.move(os.path.join(train_labels_path, lbl), labels_path)
            for lbl in val_split_labels:
                shutil.move(os.path.join(val_labels_path, lbl), labels_path)

            print("\nDESHECHA LA DIVISIÓN DE IMÁGENES")
        else:
            print("\nERROR: No existen imágenes ya divididas")


if __name__ == "__main__":
    main()