import numpy as np
import gymnasium as gym
import rsoccer_gym

def main():
  # Cargar el entorno
  env = gym.make('VSS1vs1-v0')

  # Resetear el entorno para adquirir la primera observación
  obs, info = env.reset()

  # Determinar el número de episodios
  episodes = 100

  # Vector para guardar las recompesas de cada episodio
  sum_rewards = []

  # Probar el modelo ya entrenado e imprimir la recompensa media obtenida en
  # cada episodio
  for i in range(episodes):
    done = False
    while not done:
      action = env.action_space.sample()
      obs, rewards, terminated, truncated, info = env.step(action)
      done = terminated or truncated
      sum_rewards.append(rewards)
      reward_stats = np.sum(sum_rewards)
      if done:
        obs = env.reset()
        sum_rewards = []
        print(f"La recompensa media del episodio {i} ha sido de: {reward_stats}")
        if rewards == 10:
          print("El agente ha marcado gol al rival")
        elif rewards == -10:
          print("El agente ha recibido un gol del rival")

if __name__ == "__main__":
  main()