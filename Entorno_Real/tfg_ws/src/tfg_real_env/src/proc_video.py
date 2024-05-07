#!/usr/bin/env python3

import rospy
from tfg_real_env.msg import obsmsg
from ultralytics import YOLO
import cv2
import os
import numpy as np
import math


class VideoProcess:
    DEVICE = 0  # Cambia el valor de DEVICE según el dispositivo de tu cámara

    def __init__(self):
        rospy.init_node('video_process')

        # Publisher para publicar las observaciones
        self.observation_pub = rospy.Publisher('observation_agent', obsmsg, queue_size=10)

        # Inicializar el modelo de YOLO (este es solo un ejemplo, reemplázalo con tu propio modelo)
        self.yolo_model = self.init_yolo_model()
        self.class_names = [
            "Agent_Back",
            "Agent_Front",
            "Ball",
            "Rival_Back",
            "Rival_Front"
        ]

        # Attributes to store yolo frame information
        self.agent_back = 0
        self.agent_front = 0
        self.ball = 0
        self.rival_back = 0
        self.rival_front = 0

        # Attributes to store yolo previous frame information
        self.prev_agent_back = 0
        self.prev_agent_front = 0
        self.prev_ball = 0
        self.prev_rival_back = 0
        self.prev_rival_front = 0

        # Inicializar la captura de vídeo desde la cámara
        self.video_capture = cv2.VideoCapture(self.DEVICE)


    def init_yolo_model(self):
        model_path = "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/best.pt"
        model = YOLO(model_path)

        return model  
    

    def get_ball_info(self, observation):
        new_observation = observation

        # Calculate ball center
        ball_center_x = (self.ball[0] + self.ball[2]) / 2
        ball_center_y = (self.ball[1] + self.ball[3]) / 2
        prev_ball_center_x = (self.prev_ball[0] + self.prev_ball[2]) / 2
        prev_ball_center_y = (self.prev_ball[1] + self.prev_ball[3]) / 2

        # Apply new reference system
        ball_x = ball_center_x - 0.5
        ball_y = 0.5 - ball_center_y
        prev_ball_x = prev_ball_center_x - 0.5
        prev_ball_y = 0.5 - prev_ball_center_y

        # Calculate velocities
        ball_v_x = ball_x - prev_ball_x
        ball_v_y = ball_y - prev_ball_y

        # Write values into observation
        new_observation.ball_x = ball_x
        new_observation.ball_y = ball_y
        new_observation.ball_v_x = ball_v_x
        new_observation.ball_v_y = ball_v_y

        return new_observation
    

    def get_agent_info(self, observation):
        new_observation = observation

        # Calculate agent center
        agent_center_x = (self.agent_front[0] + self.agent_front[2]) / 2
        agent_center_y = (self.agent_front[1] + self.agent_front[3]) / 2
        agent_center_back_x = (self.agent_back[0] + self.agent_back[2]) / 2
        agent_center_back_y = (self.agent_back[1] + self.agent_back[3]) / 2
        prev_agent_center_x = (self.prev_agent_front[0] + self.prev_agent_front[2]) / 2
        prev_agent_center_y = (self.prev_agent_front[1] + self.prev_agent_front[3]) / 2
        prev_agent_center_back_x = (self.prev_agent_back[0] + self.prev_agent_back[2]) / 2
        prev_agent_center_back_y = (self.prev_agent_back[1] + self.prev_agent_back[3]) / 2

        # Apply new reference system
        agent_x = agent_center_x - 0.5
        agent_y = 0.5 - agent_center_y
        agent_back_x = agent_center_back_x - 0.5
        agent_back_y = 0.5 - agent_center_back_y
        prev_agent_x = prev_agent_center_x - 0.5
        prev_agent_y = 0.5 - prev_agent_center_y
        prev_agent_back_x = prev_agent_center_back_x - 0.5
        prev_agent_back_y = 0.5 - prev_agent_center_back_y

        # Calculate robot agent orientation
        agent_theta_x = agent_x - agent_back_x
        agent_theta_y = agent_y - agent_back_y

        # Calculate linear velocities
        agent_v_x = agent_x - prev_agent_x
        agent_v_y = agent_y - prev_agent_y

        # Calculate angular velocity
        delta_x = agent_x - prev_agent_x
        delta_y = agent_y - prev_agent_y
        delta_back_x = agent_back_x - prev_agent_back_x
        delta_back_y = agent_back_y - prev_agent_back_y
        angle = np.arctan2(agent_theta_y, agent_theta_x)
        prev_angle = np.arctan2(delta_y, delta_x) - np.arctan2(delta_back_y, delta_back_x)
        agent_v_theta = angle - prev_angle

        # Write values into observation
        new_observation.agent_x = agent_x
        new_observation.agent_y = agent_y
        new_observation.agent_theta_x = agent_theta_x
        new_observation.agent_theta_y = agent_theta_y
        new_observation.agent_v_x = agent_v_x
        new_observation.agent_v_y = agent_v_y
        new_observation.agent_v_theta = agent_v_theta

        return new_observation
    

    def get_rival_info(self, observation):
        new_observation = observation

        # Calculate rival center
        rival_center_x = (self.rival_front[0] + self.rival_front[2]) / 2
        rival_center_y = (self.rival_front[1] + self.rival_front[3]) / 2
        rival_center_back_x = (self.rival_back[0] + self.rival_back[2]) / 2
        rival_center_back_y = (self.rival_back[1] + self.rival_back[3]) / 2
        prev_rival_center_x = (self.prev_rival_front[0] + self.prev_rival_front[2]) / 2
        prev_rival_center_y = (self.prev_rival_front[1] + self.prev_rival_front[3]) / 2
        prev_rival_center_back_x = (self.prev_rival_back[0] + self.prev_rival_back[2]) / 2
        prev_rival_center_back_y = (self.prev_rival_back[1] + self.prev_rival_back[3]) / 2

        # Apply new reference system
        rival_x = rival_center_x - 0.5
        rival_y = 0.5 - rival_center_y
        rival_back_x = rival_center_back_x - 0.5
        rival_back_y = 0.5 - rival_center_back_y
        prev_rival_x = prev_rival_center_x - 0.5
        prev_rival_y = 0.5 - prev_rival_center_y
        prev_rival_back_x = prev_rival_center_back_x - 0.5
        prev_rival_back_y = 0.5 - prev_rival_center_back_y

        # Calculate robot rival orientation
        rival_theta_x = rival_x - rival_back_x
        rival_theta_y = rival_y - rival_back_y

        # Calculate linear velocities
        rival_v_x = rival_x - prev_rival_x
        rival_v_y = rival_y - prev_rival_y

        # Calculate angular velocity
        delta_x = rival_x - prev_rival_x
        delta_y = rival_y - prev_rival_y
        delta_back_x = rival_back_x - prev_rival_back_x
        delta_back_y = rival_back_y - prev_rival_back_y
        angle = np.arctan2(rival_theta_y, rival_theta_x)
        prev_angle = np.arctan2(delta_y, delta_x) - np.arctan2(delta_back_y, delta_back_x)
        rival_v_theta = angle - prev_angle

        # Write values into observation
        new_observation.rival_x = rival_x
        new_observation.rival_y = rival_y
        new_observation.rival_v_x = rival_v_x
        new_observation.rival_v_y = rival_v_y
        new_observation.rival_v_theta = rival_v_theta

        return new_observation


    def process_frame(self, frame):
        # Procesar el fotograma: detectar objetos y extraer sus propiedades
        objects = self.yolo_model(frame, stream=True)
        observation = obsmsg()

        # Iterar sobre los objetos detectados y extraer sus propiedades
        for obj in objects:
            boxes = obj.boxes
            for i, box in enumerate(boxes):
                confidence = math.ceil((box.conf[0]*100))/100
                cls = int(box.cls[0])
                if confidence > 0.4:
                    if cls == 0:
                        self.prev_agent_back = self.agent_back
                        self.agent_back = box[i].xyxyn
                    elif cls == 1:
                        self.prev_agent_front = self.agent_front
                        self.agent_front = box[i].xyxyn
                    elif cls == 2:
                        self.prev_ball = self.ball
                        self.ball = box[i].xyxyn
                    elif cls == 3:
                        self.prev_rival_back = self.rival_back
                        self.rival_back = box[i].xyxyn
                    elif cls == 4:
                        self.prev_rival_front = self.rival_front
                        self.rival_front = box[i].xyxyn

        if self.prev_ball is not 0:
            observation = self.get_ball_info(observation)
        if self.prev_agent_front is not 0 and self.prev_agent_back is not 0:
            observation = self.get_agent_info(observation)
        if self.prev_rival_front is not 0 and self.prev_rival_back is not 0:
            observation = self.get_rival_info(observation)

        return observation


    def publish_data(self):
        # Capturar un fotograma desde la cámara
        ret, frame = self.video_capture.read()
        if not ret:
            rospy.logerr("No se pudo capturar el fotograma de la cámara")
            return

        # Procesar el fotograma para detectar objetos y extraer sus propiedades
        observation = self.process_frame(frame)

        # Publicar las observaciones
        self.observation_pub.publish(observation)


    def __del__(self):
        # Liberar la captura de vídeo al finalizar
        self.video_capture.release()


def main():
    node = VideoProcess()
    rate = rospy.Rate(10)  # Frecuencia de publicación (10 Hz)

    while not rospy.is_shutdown():
        node.publish_data()
        rate.sleep()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

