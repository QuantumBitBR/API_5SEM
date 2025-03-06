# API_5SEM

## Requisitos Funcionais e Não Funcionais

| ID | Requisito | Descrição |
| ----| --------| ------------|
RF01  | Criar um dashboard com indicadores | O sistema deve exibir um dashboard contendo métricas importantes para análise de desempenho. |
RF02 | Quantidade de cards por etiqueta	| Exibir a quantidade de cards categorizados por etiquetas. |
RF03 | Quantidade de cards criados por período |	Apresentar a quantidade de cards criados em determinados períodos (diário, semanal, mensal). |
RF04 | Quantidade de cards finalizados por período |	Exibir a quantidade de cards finalizados dentro de determinados períodos. |
RF05 | Quantidade de cards por status (coluna do kanban) |	Exibir a distribuição de cards conforme o status dentro do fluxo do kanban. |
RF06 | Tempo médio de execução do card |	Apresentar o tempo médio que um card leva para ser concluído.
RF07 | Cards por colaborador |	Exibir a quantidade de cards atribuídos por colaborador. |
RF08 | Retrabalhos |	Monitorar e exibir a quantidade de retrabalhos no sistema. |
RF09 | Controle de acesso por níveis |	Definir diferentes níveis de acesso para que os indicadores sejam visíveis conforme o time do usuário. |
RNF01 |Documentação da API |	A API deve ser documentada de maneira clara e detalhada. |
RNF02 | Responsividade |	O sistema deve ser responsivo e acessível em diferentes dispositivos. |
RNF03 | Manual do Usuário |	Deve ser fornecido um manual para orientar os usuários na utilização do sistema. |
RNF04 | Modelagem do Banco de Dados |	Criar um modelo de banco de dados eficiente para armazenar as informações necessárias. |

## Backlog do Produto

| **ID**  | **Descrição** | **ID Requisito** | **Prioridade** | **Sprint** |
|---------|-------------|----------------|--------------|---------|
| US01 | Como usuário, desejo visualizar os indicadores de etiqueta para identificar a quantidade de cards associados a cada categoria e facilitar a análise de organização. | RF01, RF02, RFN01 | 1 | 1 |
| US02 | Como usuário, desejo visualizar os indicadores de cards relacionados a períodos para acompanhar a evolução da criação e finalização dos cards ao longo do tempo. | RF01, RF03, RF04, RFN01 | 2 | 1 |
| US03 | Como usuário, desejo visualizar os indicadores de cards relacionados a status para entender a distribuição dos cards dentro do fluxo do Kanban. | RF01, RF05, RFN01 | 3 | 1 |
| US04 | Como usuário, desejo visualizar os indicadores de tempo gasto por card para analisar a eficiência do fluxo de trabalho e identificar possíveis gargalos. | RF01, RF06, RFN01 | 4 | 1 |
| US05 | Como usuário admin e gestor, desejo visualizar os indicadores de cards por colaborador para acompanhar a produtividade individual e distribuir melhor as tarefas. | RF01, RF07, RFN01 | 5 | 2 |
| US06 | Como usuário, quero filtrar os indicadores do dashboard por período, para visualizar informações relevantes de datas específicas e facilitar a análise temporal dos dados. | RF01, RF03, RF04 | 6 | 2 |
| US07 | Como usuário, desejo visualizar os indicadores de retrabalho para identificar tarefas que precisaram ser refeitas e melhorar a eficiência dos processos. | RF01, RF08, RFN01 | 7 | 2 |
| US08 | Como usuário Operador, desejo visualizar somente os meus indicadores para acompanhar minha própria produtividade e desempenho. | RF01, RFN01, RFN02, RFN03 | 8 | 2 |
| US09 | Como usuário Gestor, desejo visualizar os meus indicadores e do meu time para a gestão eficiente dos meus projetos e alocação de recursos. | RF01, RFN01, RFN02, RFN03 | 9 | 2 |
| US10 | Como usuário admin, desejo visualizar os indicadores de todos os times, para obter uma visão global do desempenho e tomar decisões estratégicas. | RF01, RFN01, RFN02, RFN03 | 10 | 3 |
| US11 | Como usuário, desejo realizar autenticação com meu usuário e senha, para garantir segurança aos dados e restringir o acesso apenas a usuários autorizados. | RF09, RFN01 | 11 | 3 |
| US12 | Como admin, desejo cadastrar, editar e remover usuários para controlar o acesso à ferramenta e gerenciar permissões de uso. | RF09, RFN01, RFN04 | 12 | 3 |
| US13 | Como admin, desejo cadastrar e remover projetos para organizar melhor as atividades e garantir que apenas projetos relevantes estejam disponíveis no sistema. | RF09, RFN01, RFN04 | 13 | 3 |

