import numpy as np
import gymnasium as gym
from stable_baselines3.common.env_util import unwrap_wrapper, is_wrapped
from stable_baselines3.common.vec_env import DummyVecEnv
from stable_baselines3 import DDPG, SAC, PPO
import rsoccer_gym

def main():
  # Cargar el entorno
  env = gym.make('VSS1vs1-v0')

  # Cargar el modelo
  model = DDPG.load("../Modelos/DDPG_M1/best_model.zip", env=env)

  # Obtener el entorno del modelo con los wrappers necesarios para ejecutar el
  # algoritmo en él
  env = model.get_env()

  # Resetear el entorno para adquirir la primera observación
  obs = env.reset()

  # Determinar el número de episodios
  episodes = 20

  # Number of goals scored by the agent and scored to the agent
  own_goals = 0
  opp_goals = 0

  # Vector para guardar las recompesas de cada episodio
  sum_rewards = []

  # Probar el modelo ya entrenado e imprimir la recompensa media obtenida en
  # cada episodio
  for i in range(episodes):
    done = False
    while not done:
      action, obs = model.predict(obs)
      obs, rewards, done, info = env.step(action)
      sum_rewards.append(rewards)
      reward_stats = np.sum(sum_rewards) 
      if done:
        obs = env.reset()
        sum_rewards = []
        print(f"La recompensa media del episodio {i} ha sido de: {reward_stats}")
        if rewards == 10:
          # print("El agente ha marcado gol al rival")
          own_goals += 1
        elif rewards == -10:
          # print("El agente ha recibido un gol del rival")
          opp_goals += 1

  print(f"El número de goles marcados en {episodes} episodios ha sido: {own_goals} goles")
  print(f"El número de goles recibidos en {episodes} episodios ha sido: {opp_goals} goles")

  env.close()

if __name__ == "__main__":
  main()