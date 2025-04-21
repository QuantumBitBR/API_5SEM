
# Documentação do Produto - Dashboard de Indicadores de Projetos - Strategy

## 1. Visão Geral do Produto
**Nome do Produto:** Strategy  
**Descrição:** Plataforma web que exibe indicadores de desempenho com base em dados extraídos da ferramenta Taiga, visando apoiar a gestão eficiente de projetos.  
**Objetivo:** Proporcionar visibilidade sobre o fluxo de trabalho e facilitar a tomada de decisões com base em métricas relevantes.  
**Público-Alvo:** Equipes de desenvolvimento, gestores de projeto, analistas e operadores.  

## 2. Contexto e Motivação
A Youtan, empresa de desenvolvimento de software, identificou a necessidade de aprimorar sua gestão de projetos, especialmente no que diz respeito à visualização e análise de indicadores estratégicos. Atualmente, a equipe utiliza a plataforma Taiga, que oferece uma interface Kanban funcional para acompanhamento de tarefas. No entanto, o sistema não fornece, de forma nativa, relatórios detalhados ou dashboards que consolidem métricas essenciais para o acompanhamento do fluxo de trabalho.

### Problema
Entre os principais desafios enfrentados, destacam-se:

- **Falta de visibilidade centralizada**: Informações como a quantidade de cards criados ou finalizados por período, tempo médio de execução de tarefas e volume de retrabalho não estão facilmente acessíveis.
- **Dificuldade na distribuição e acompanhamento das tarefas por colaborador**: A ausência de relatórios específicos impacta na alocação equilibrada da carga de trabalho.
- **Ausência de diferenciação de acesso por perfil de usuário**: A plataforma atual não permite restringir ou personalizar a visualização de dados com base na função do usuário (operador, gestor ou administrador), comprometendo a segurança da informação e a eficiência da análise.

Essas limitações tornam a tomada de decisão menos ágil e a gestão menos transparente, afetando diretamente a produtividade das equipes e o controle estratégico dos projetos.

### Solução
A proposta consiste em desenvolver uma aplicação web integrada ao banco de dados do Taiga, capaz de consolidar, organizar e apresentar indicadores de desempenho de forma visual, interativa e personalizada, por meio de dashboards modernos e filtros inteligentes.
Essa solução contará com níveis diferenciados de acesso, permitindo que cada perfil visualize apenas os dados relevantes ao seu escopo:

- **Operador**: visualizará métricas relacionadas exclusivamente aos cards sob sua responsabilidade.
- **Gestor**: terá acesso aos indicadores de sua própria atuação e também do time que lidera.
- **Administrador (Admin)**: poderá visualizar todos os indicadores, de todos os usuários e equipes, com visão global do sistema.

### Benefícios Esperados
- Melhoria na gestão visual dos projetos, com maior clareza sobre o progresso das tarefas.
- Tomada de decisão mais assertiva, baseada em dados reais e atualizados.
- Aumento da produtividade e da eficiência, por meio da identificação de gargalos, retrabalhos e sobrecargas de trabalho.
- Organização e segurança da informação, com controle de acesso personalizado.

## 3. Funcionalidades do Sistema
1. **Quantidade de Cards por Etiqueta**:
Permite a visualização da quantidade de cards associados a cada etiqueta cadastrada. Os dados são exibidos por meio de gráficos (pizza ou barras) e podem ser filtrados por projeto, equipe e período. Essa funcionalidade facilita a análise de quais categorias (como "Bug", "Melhoria", "Urgente") concentram mais tarefas, auxiliando na priorização.

2. **Quantidade de Cards Criados por Período (Diário, Semanal, Mensal)**:
Exibe a quantidade de cards criados ao longo de diferentes períodos de tempo, com possibilidade de seleção de intervalos personalizados. A funcionalidade permite acompanhar a produtividade da equipe e o ritmo de chegada de novas demandas.

3. **Quantidade de Cards Finalizados por Período**:
Permite acompanhar o número de cards concluídos dentro de períodos específicos, como dias, semanas ou meses. Os dados ajudam a medir a eficiência da equipe e a verificar se os prazos estão sendo cumpridos ao longo do tempo.

4. **Quantidade de Cards por Status (Coluna do Kanban)**:
Exibe a distribuição atual dos cards nas colunas do Kanban (por exemplo: “A Fazer”, “Em Andamento”, “Concluído”). Essa visualização facilita a análise do fluxo de trabalho e ajuda a identificar possíveis gargalos em etapas específicas.

5. **Tempo Médio de Execução do Card**:
Calcula o tempo médio entre a criação e a finalização dos cards. Os dados podem ser filtrados por colaborador, equipe ou projeto. Essa funcionalidade é fundamental para identificar atrasos, avaliar a eficiência dos processos e comparar a performance ao longo do tempo.

6. **Cards por Colaborador**:
Apresenta a quantidade de cards atribuídos a cada colaborador, com opção de filtro por status (ativos, finalizados etc.). Auxilia gestores no balanceamento da carga de trabalho e na identificação de sobrecargas ou baixa produtividade.

7. **Retrabalhos (Cards que Voltaram Etapas)**:
Identifica e contabiliza os cards que regrediram no fluxo (ex: da coluna “Concluído” de volta para “Em Andamento”), indicando retrabalho. Esse dado é valioso para detectar falhas nos processos, problemas de comunicação ou baixa qualidade nas entregas.

8. **Controle de Acesso por Níveis (Operador, Gestor, Admin)**:  
   Implementa uma hierarquia de permissões no sistema:

    - **Operador**: visualiza apenas os dados dos cards sob sua responsabilidade;
    - **Gestor**: acessa indicadores de sua equipe;
    - **Admin**: tem acesso irrestrito a todos os dados do sistema.

9. **API para Integração com Ferramentas como Taiga**
Disponibiliza uma API RESTful documentada, permitindo a integração da plataforma com a ferramenta de gestão Taiga. A API possibilita a extração e envio de dados, promovendo interoperabilidade e expansão do uso da solução.

## 4. Requisitos Não Funcionais
- API documentada com Swagger/OpenAPI
- Interface responsiva para diversos dispositivos
- Manual do usuário digital
- Banco de dados modelado de forma eficiente e escalável

## 5. Arquitetura do Sistema
**Frontend:** Vue.js  
**Backend:** Spring Boot  
**Banco de Dados:** PostgreSQL  
**Integrações:** Taiga (via API REST)  
**Segurança:** Autenticação com controle de permissões baseado em perfil

## 6. Modelagem de Dados
Inclui tabelas como:  
- `usuarios` (perfil, nome, e-mail)
- `cards` (id, título, status, data criação, data finalização, etiquetas)
- `movimentacoes` (card_id, status_antigo, status_novo, data_movimentacao)

## 7. Casos de Uso / Fluxos do Usuário
- Visualizar indicadores por status, período, colaborador, etiqueta
- Filtrar e exportar gráficos
- Acessar conforme nível de permissão
- Realizar login seguro

## 8. Interface do Usuário
- Tela de login
- Dashboard principal com gráficos interativos
- Filtros de data, status, colaborador, etiqueta
- Layout adaptável para desktop e mobile

## 9. Testes Realizados
- Testes manuais nas funcionalidades principais
- Validação dos cálculos dos indicadores
- Testes de responsividade em diferentes dispositivos

## 10. Planejamento e Execução
- Metodologia Scrum
- Entregas divididas por Sprints com reuniões de planejamento e retrospectiva
- Principais entregas da Sprint 1: US01 a US04 (indicadores principais)

## 11. Manual do Usuário
1. Acesse o sistema via navegador web
2. Faça login com suas credenciais
3. Navegue pelo dashboard e aplique os filtros desejados
4. Exporte relatórios se necessário

## 12. Considerações Finais
O projeto entregou uma base sólida para acompanhamento de indicadores em ambientes ágeis. Com possibilidade de expansão para outros sistemas (Trello, Jira), o produto pode se tornar uma ferramenta abrangente de gestão visual.

