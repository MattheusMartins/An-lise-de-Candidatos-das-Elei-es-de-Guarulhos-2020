# Instalar pacotes necessários
  install.packages("electionsBR")
install.packages("tidyverse")
install.packages("showtext")

# Carregar bibliotecas
library(electionsBR)
library(tidyverse)
library(showtext)

# Baixar dados das eleições federais
df <- elections_tse(year = 2020, type = "candidate", uf="SP")

# Filtrar e selecionar os dados relevantes para Guarulhos
DF_NOVO = df %>%
  select(DS_CARGO, NM_CANDIDATO,
         SG_PARTIDO, DS_GRAU_INSTRUCAO,
         DS_ESTADO_CIVIL, DS_COR_RACA, NR_IDADE_DATA_POSSE,
         DS_OCUPACAO,
         DS_GENERO, NM_UE) %>%
  filter(NM_UE == "GUARULHOS")

# 1. Distribuição de Gênero dos Candidatos
ggplot(DF_NOVO, aes(x = DS_GENERO)) +
  geom_bar(fill = "steelblue") +
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5) +
  labs(title = "Distribuição de Gênero dos Candidatos em Guarulhos (2020)",
       x = "Gênero",
       y = "Número de Candidatos") +
  theme_minimal()

# 2. Distribuição por Grau de Instrução
ggplot(DF_NOVO, aes(x = DS_GRAU_INSTRUCAO)) +
  geom_bar(fill = "tomato") +
  geom_text(stat = "count", aes(label = ..count..), hjust = -0.3) +
  labs(title = "Grau de Instrução dos Candidatos em Guarulhos (2020)",
       x = "Grau de Instrução",
       y = "Número de Candidatos") +
  theme_minimal() +
  coord_flip()

# 3. Distribuição por Partido
ggplot(DF_NOVO, aes(x = SG_PARTIDO)) +
  geom_bar(fill = "darkgreen") +
  geom_text(stat = "count", aes(label = ..count..), hjust = -0.3) +
  labs(title = "Distribuição de Candidatos por Partido (Guarulhos, 2020)",
       x = "Partido",
       y = "Número de Candidatos") +
  theme_minimal() +
  coord_flip()

# 4. Distribuição por Cor/Raça
ggplot(DF_NOVO, aes(x = DS_COR_RACA)) +
  geom_bar(fill = "purple") +
  geom_text(stat = "count", aes(label = ..count..), hjust = -0.3) +
  labs(title = "Distribuição de Candidatos por Cor/Raça (Guarulhos, 2020)",
       x = "Cor/Raça",
       y = "Número de Candidatos") +
  theme_minimal() +
  coord_flip()

# 5. Distribuição por Ocupação
ggplot(DF_NOVO, aes(x = DS_OCUPACAO)) +
  geom_bar(fill = "orange") +
  geom_text(stat = "count", aes(label = ..count..), hjust = -0.3) +
  labs(title = "Distribuição de Candidatos por Ocupação (Guarulhos, 2020)",
       x = "Ocupação",
       y = "Número de Candidatos") +
  theme_minimal() +
  theme(
    axis.text.y = element_text(size = 5),   # Tamanho do texto no eixo y
    axis.text.x = element_text(size = 5),
    plot.title = element_text(size = 5)     # Tamanho do título
  ) +
  coord_flip()

# 6. Relação entre Gênero e Grau de Instrução
ggplot(DF_NOVO, aes(x = DS_GRAU_INSTRUCAO, fill = DS_GENERO)) +
  geom_bar(position = "dodge") +
  geom_text(stat = "count", aes(label = ..count..), position = position_dodge(width = 1), vjust = -0.5) +
  labs(title = "Gênero vs. Grau de Instrução (Guarulhos, 2020)",
       x = "Grau de Instrução",
       y = "Número de Candidatos") +
  theme_minimal() +
  coord_flip()

# 7. Comparação de Cor/Raça e Gênero
ggplot(DF_NOVO, aes(x = DS_COR_RACA, fill = DS_GENERO)) +
  geom_bar(position = "dodge") +
  geom_text(stat = "count", aes(label = ..count..), position = position_dodge(width = 1), vjust = -0.5) +
  labs(title = "Distribuição de Gênero por Cor/Raça (Guarulhos, 2020)",
       x = "Cor/Raça",
       y = "Número de Candidatos") +
  theme_minimal()

# Gráfico de barras lado a lado: Grau de Instrução por Cargo com rótulos de valores
ggplot(DF_NOVO, aes(x = DS_CARGO, fill = DS_GRAU_INSTRUCAO)) +
  geom_bar(position = "dodge") +
  geom_text(stat = "count", aes(label = ..count..), position = position_dodge(width = 1), vjust = -0.5) +
  labs(title = "Distribuição de Grau de Instrução por Cargo (Guarulhos, 2020)",
       x = "Cargo",
       y = "Número de Candidatos",
       fill = "Grau de Instrução") +
  theme_minimal() +
  coord_flip()  # Inverte os eixos para facilitar a leitura

# Gráfico de barras lado a lado: Cor/Raça por Cargo com rótulos de valores
ggplot(DF_NOVO, aes(x = DS_CARGO, fill = DS_COR_RACA)) +
  geom_bar(position = "dodge") +
  geom_text(stat = "count", aes(label = ..count..), position = position_dodge(width = 1), vjust = -0.5) +
  labs(title = "Distribuição de Cor/Raça por Cargo (Guarulhos, 2020)",
       x = "Cargo",
       y = "Número de Candidatos",
       fill = "Cor/Raça") +
  theme_minimal() +
  coord_flip()  # Inverte os eixos para facilitar a leitura

# Gráfico de boxplot: Idade por Cargo
ggplot(DF_NOVO, aes(x = DS_CARGO, y = NR_IDADE_DATA_POSSE, fill = DS_CARGO)) +
  geom_boxplot() +
  stat_summary(fun = median, geom = "text", aes(label = round(..y.., 1)), vjust = -0.5, color = "black") +
  labs(title = "Distribuição de Idade por Cargo (Guarulhos, 2020)",
       x = "Cargo",
       y = "Idade",
       fill = "Cargo") +
  theme_minimal() +
  theme(legend.position = "none") +
  coord_flip()  # Inverte os eixos para melhor leitura



