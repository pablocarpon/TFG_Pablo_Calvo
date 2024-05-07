#!/usr/bin/env python3

import rospy
from tfg_real_env.msg import obsmsg
from geometry_msgs.msg import Twist
import numpy as np
from stable_baselines3 import DDPG
import torch

class ActionProcess:
    def __init__(self):
        rospy.init_node('action_process')

        self.model = DDPG.load("/home/pablo/Escritorio/TFG/Código/Entrenamientos/Modelos/M1/futbolista.zip")

        # Suscripción al topic de entrada
        rospy.Subscriber('observation_agent', obsmsg, self.callback)

        # PARA SABER ESTE TOPIC HAY QUE HACER ROSTOPIC LIST PERO ES ALGO ASÍ
        # "COMMANDS VELOCITY"
        self.action_pub = rospy.Publisher('/mobile_base/commands/velocity', Twist, queue_size=10)


    def callback(self, obs):
        # Lógica de procesamiento: procesar el mensaje recibido y generar el mensaje a publicar
        new_obs = self.process_obs(obs)

        action = self.model.predict(new_obs)

        new_action = self.process_action(action)

        # Publicar el mensaje procesado
        self.action_pub.publish(new_action)


    def process_obs(self, obs):
        new_obs = np.array([
            obs.ball_x,
            obs.ball_y,
            obs.ball_v_x,
            obs.ball_v_y,
            obs.agent_x,
            obs.agent_y,
            obs.agent_theta_x,
            obs.agent_theta_y,
            obs.agent_v_x,
            obs.agent_v_y,
            obs.agent_v_theta,
            obs.rival_x,
            obs.rival_y,
            obs.rival_v_x,
            obs.rival_v_y,
            obs.rival_v_theta
        ])

        return new_obs
    

    def process_action(self, action):
        new_action = Twist()

        # La acción son las velocidades de las ruedas derecha e izquierda
        right_wheel_speed = action[0]
        left_wheel_speed = action[1]

        new_action.linear.x = (right_wheel_speed + left_wheel_speed) / 2.0  # Velocidad lineal en el eje x
        new_action.angular.z = (right_wheel_speed - left_wheel_speed) / 2.0  # Velocidad angular en el eje z

        return new_action


def main():
    node = ActionProcess()
    rospy.spin()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
