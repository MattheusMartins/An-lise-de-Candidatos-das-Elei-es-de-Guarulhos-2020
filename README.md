# Análise de Candidatos das Eleições de Guarulhos 2020

Este repositório contém o código e a análise de dados referentes aos candidatos das eleições municipais de 2020 em Guarulhos, utilizando o pacote [`electionsBR`](https://cran.r-project.org/package=electionsBR). O foco desta análise foi examinar as características demográficas, profissionais e partidárias dos candidatos, fornecendo insights sobre representatividade de gênero, raça/cor, escolaridade, e ocupação.

## Objetivo

O principal objetivo deste projeto é explorar a representatividade e a disparidade entre os candidatos, oferecendo uma visão crítica sobre áreas que precisam de maior atenção, como a inclusão racial e a equidade de gênero. A análise foi conduzida a partir de dados abertos disponibilizados pelo Tribunal Superior Eleitoral (TSE) e coletados através do pacote `electionsBR` em R.

## Principais Insights

A seguir estão os principais resultados obtidos a partir dos gráficos gerados durante a análise:

1. **Comparação de Cor/Raça e Gênero**:  
   Observa-se uma disparidade significativa entre gêneros, com predominância masculina em quase todas as categorias raciais, além de sub-representação de algumas raças, sugerindo barreiras de acesso para grupos específicos.

2. **Distribuição de Cor/Raça por Cargo**:  
   Cargos mais elevados são ocupados majoritariamente por pessoas de raças específicas, indicando uma dificuldade de minorias em alcançar posições de maior destaque.

3. **Distribuição de Grau de Instrução por Cargo**:  
   Candidatos com maior escolaridade tendem a ocupar cargos mais competitivos, enquanto aqueles com menor formação se concentram em cargos menos expressivos.

4. **Distribuição de Idade por Cargo**:  
   Há uma clara divisão etária entre cargos, com candidatos mais jovens concentrados em determinadas posições e lideranças mais antigas dominando outros cargos.

5. **Distribuição por Cor/Raça**:  
   Certos grupos raciais têm uma presença dominante entre os candidatos, enquanto algumas minorias continuam sub-representadas, levantando questões sobre inclusão racial na política local.

6. **Distribuição por Grau de Instrução**:  
   A maioria dos candidatos possui pelo menos o ensino médio completo, mas ainda existe uma parcela significativa com escolaridade inferior, o que pode influenciar o preparo técnico.

7. **Distribuição por Ocupação**:  
   Profissionais como advogados, servidores públicos e empresários dominam o cenário político, o que reflete a influência dessas categorias no processo eleitoral.

8. **Distribuição por Partido**:  
   Partidos maiores têm uma presença predominante, mas partidos menores também se destacam, sugerindo mudanças nas alianças políticas.

9. **Gênero dos Candidatos**:  
   A desproporção de gênero é evidente, com os homens sendo a maioria. No entanto, as mulheres candidatas tendem a apresentar maior escolaridade, o que indica desafios adicionais para competir em igualdade de condições.

10. **Gênero x Grau de Instrução**:  
    Mulheres candidatas geralmente possuem níveis de escolaridade mais elevados do que os homens, sugerindo uma desigualdade estrutural que exige maior preparo educacional para competir em termos iguais.

Esses gráficos ajudam a visualizar melhor a representatividade e disparidade nos candidatos de Guarulhos em 2020, destacando áreas como a equidade de gênero e a inclusão racial que ainda precisam de mais atenção.

## Requisitos

- R (versão 3.6 ou superior)
- Pacote [`electionsBR`](https://cran.r-project.org/package=electionsBR)
- Outros pacotes: `ggplot2`, `dplyr`, `tidyverse`, `readr`

### Instalação do pacote `electionsBR`

Para instalar o pacote `electionsBR`, execute o seguinte código no R:

```r
install.packages("electionsBR")
```

## Como Utilizar

1. Clone este repositório para sua máquina local:

```bash
git clone https://github.com/seu-usuario/elections-guarulhos-2020.git
```

2. Instale as dependências necessárias no R:

```r
install.packages(c("ggplot2", "dplyr", "readr", "tidyverse"))
```

3. Baixe os dados utilizando o `electionsBR`:

```r
library(electionsBR)

# Exemplo: Baixar dados de candidatos para a eleição de 2020
df <- elections_tse(year = 2020, type = "candidate")
```

4. Execute o script de análise para gerar os gráficos e insights:

```r
source("analise_candidatos.R")
```

## Estrutura do Repositório

- **`analise_candidatos.R`**: Código principal que baixa os dados e gera os gráficos com base nas variáveis analisadas.
- **`graficos/`**: Pasta com os gráficos gerados pela análise.
- **`dados/`**: Arquivo CSV com os dados dos candidatos.
- **`README.md`**: Este arquivo de documentação.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma _issue_ ou enviar um _pull request_ para melhorar este projeto.

## Autores e Contribuidores

Este projeto foi inspirado e facilitado pelo pacote `electionsBR`, criado por [Denisson Silva](https://denissonsilva.com/), [Fernando Meireles](https://fmeireles.com/), e Beatriz Costa, com contribuições de [Willber Nascimento](https://github.com/willbernascimento), [Ian Araujo](https://github.com/ianaraujo), [Guilherme Duarte Jardim](https://github.com/duarteguilherme), [Robert Myles McDonnel](https://github.com/RobertMyles), e [Lucas Gelape](https://github.com/lgelape).

## Licença

Este projeto está licenciado sob a licença MIT. Para mais informações, veja o arquivo [LICENSE](LICENSE).
