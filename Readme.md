# API_5SEM

# Backlog do Projeto - Ferramenta de Indicadores para Gestão de Projetos

| ID  | Épico | User Story | Critérios de Aceitação |
|------|-----------| -----------| -----------------------|
| EP01 | Dashboard de Indicadores | Como usuário (Operador, Gestor ou Admin), quero visualizar um painel com os principais indicadores, para acompanhar o andamento dos projetos. | O dashboard deve exibir os seguintes indicadores:<br>- Quantidade de cards por etiqueta.<br>- Quantidade de cards criados por período.<br>- Quantidade de cards finalizados por período.<br>- Quantidade de cards por status (coluna do kanban).<br>- Tempo médio de execução do card.<br>- Cards por colaborador. |
| EP02 | Filtrar indicadores por período | Como usuário, quero filtrar os indicadores do dashboard por período, para visualizar informações relevantes de datas específicas. | O usuário pode selecionar datas ou períodos predefinidos (última semana, último mês, etc.).<br>Os dados do dashboard são atualizados conforme o filtro. |
| EP03 | Acesso restrito por nível de usuário | Como Operador, quero visualizar apenas os indicadores dos cards que estou responsável. | Os dados visíveis são filtrados conforme o nível de acesso Operador.
| EP04 | Acesso restrito por nível de usuário | Como Gestor, quero visualizar os indicadores dos meus cards e dos meus times. | Os dados visíveis são filtrados conforme o nível de acesso Gestor.
| EP05 | Acesso restrito por nível de usuário | Como Admin, quero visualizar os indicadores de todos os times. | Os dados visíveis são filtrados conforme o nível de acesso Admin. |
| EP06 | Conectar à API do Taiga | Como sistema, quero me conectar ao banco de dados da ferramenta Taiga, para obter os dados necessários para os indicadores. | Implementação de uma conexão segura com a API do Taiga.<br>Sincronização periódica ou em tempo real dos dados. |
| EP07 | Gerenciar usuários e permissões | Como Admin, quero cadastrar, editar e remover usuários, para controlar o acesso à ferramenta. | CRUD de usuários.<br>Definição de níveis de acesso (Operador, Gestor, Admin). |
| EP08 | Documentação da API | Como desenvolvedor, quero acessar a documentação da API, para entender como integrar outros sistemas. | Disponibilizar documentação clara e organizada da API. |
| EP09 | Interface Responsiva | Como usuário, quero acessar a ferramenta em diferentes dispositivos (desktop, tablet e mobile), para visualizar os indicadores de forma confortável. | Interface adaptável a diferentes tamanhos de tela. |
| EP10 | Manual do Usuário | Como novo usuário, quero acessar um manual de uso, para entender como utilizar a ferramenta. | Disponibilizar um manual detalhado com ilustrações e explicações sobre cada funcionalidade. |
| EP11 | Modelagem de Dados | Como desenvolvedor, quero uma estrutura de banco de dados eficiente, para armazenar e recuperar dados dos indicadores de forma otimizada. | Definição do esquema de banco de dados.<br>Implementação de índices e otimizações para performance. |
| EP12 | Gerar relatório dos indicadores | Como usuário, quero gerar relatórios dos indicadores, para analisar o desempenho do projeto. | Opção para exportar relatórios em PDF e CSV. |







