import cv2
import os


def save_frame_camera_key(device_num, dir_path, basename, ext='jpg', delay=1, window_name='frame'):
    cap = cv2.VideoCapture(device_num)

    if not cap.isOpened():
        return

    os.makedirs(dir_path, exist_ok=True)
    base_path = os.path.join(dir_path, basename)

    n = int(input("Introduzca el dígito a partir del cual se van a numerar las fotos tomadas dentro del dataset: "))
    while True:
        ret, frame = cap.read()
        cv2.imshow(window_name, frame)
        key = cv2.waitKey(delay) & 0xFF
        if key == ord('c'):
            file_name = f"{base_path}_{n}.{ext}"
            cv2.imwrite(file_name, frame)
            n += 1
        elif key == ord('q'):
            break

    cv2.destroyWindow(window_name)


def main():
    print("Introduce el número del dispositivo que quieras usar:")
    print("0 --> Dispositivo móvil")
    print(" --> Webcam")
    device_num = int(input(""))
    save_frame_camera_key(device_num, '../Imágenes_Sin_Etiquetar', 'captura')


if __name__ == "__main__":
    main()