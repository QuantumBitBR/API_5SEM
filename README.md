# Rastreabilidade de Requisitos - Stratify

---

## 1. Introdução
Este documento tem como objetivo apresentar a rastreabilidade dos requisitos funcionais e não funcionais do sistema Stratify. O processo de rastreabilidade visa garantir que todos os requisitos levantados durante a fase de levantamento foram devidamente compreendidos, documentados e implementados conforme esperado.


## 2. Objetivo do Sistema
O sistema Stratify foi idealizado com o objetivo de oferecer uma plataforma de apoio à gestão de projetos, integrando-se ao Taiga e permitindo a visualização de indicadores essenciais para o acompanhamento do fluxo de trabalho. O sistema conta com níveis de acesso diferenciados (operadores, gestores e administradores) e será acompanhado de uma API para integração com outras ferramentas de gestão.


## 3. Rastreabilidade de Commits e Requisitos

### Objetivo
Estabelecer a ligação clara entre alterações de código e requisitos do sistema, garantindo rastreabilidade desde a implementação até a origem no Jira.

Para realizar a conexão das entregas com os requisitos, será feita a ligação da ferramenta Git com o Jira, garantindo assim a transparência e confirmação do que será desenvolvido. Esta conexão é realizada através da mensagem do commit, definindo assim uma atenção e observação rígida nos commits a serem realizados.

### Contexto
- Cada commit deve referenciar a tarefa correspondente no Jira.  
- Essa vinculação permite:
  - Auditoria de mudanças.
  - Visibilidade do progresso real.
  - Alinhamento entre código e requisitos.

### Formato Básico
`<ID_JIRA>-<tipo>: <descrição>`

### Benefícios
1. **Rastreamento**: Liga código às demandas de negócio.  
2. **Transparência**: Mostra o que foi implementado e por quê.  
3. **Eficiência**: Facilita identificação de impactos.

### Exemplo
`SCRUM-23-fix: corrige validação de formulário` → Vinculado à tarefa SCRUM-23 no Jira.

### Observação
Detalhes técnicos sobre tipos de commit e padrões estão disponíveis no documento *"Regras de desenvolvimento"*.

---

## 4. Requisitos Funcionais e Rastreabilidade

### RF01 – Quantidade de cards por etiqueta
O sistema deverá exibir a quantidade de cards associados a cada etiqueta cadastrada no kanban. Essa informação deverá ser apresentada de forma visual, como tabela, e permitir filtragem por projeto e período. As etiquetas devem ser sincronizadas com a ferramenta integrada (ex: Taiga) para garantir a consistência dos dados.

---

### RF02 – Quantidade de cards criados por período
O sistema deverá apresentar um relatório com a quantidade de cards criados por períodos pré-definidos (último dia, última semana, último mês, outros). O usuário deverá ser capaz de escolher o nível de visualização (colaborador ou projeto). A visualização poderá ser feita em forma de gráfico de colunas para análise de tendência.

---

### RF03 – Quantidade de cards finalizados por período
O sistema deverá mostrar a quantidade de cards que tiveram seu status alterado para "Finalizado" dentro de períodos específicos (último dia, última semana, último mês, outros). O usuário deverá ser capaz de escolher o nível de visualização (colaborador ou projeto). A visualização poderá ser feita em forma de gráfico de colunas para análise de tendência.

---

### RF04 – Quantidade de cards por status (coluna do kanban)
O sistema deverá exibir a distribuição atual dos cards de acordo com os status do fluxo de trabalho do kanban (por exemplo: "To Do", "In Progress", "Done"). A exibição deve permitir visualizar por colaborador ou projeto. Idealmente, o dashboard exibirá a informação com gráficos interativos.

---

### RF05 – Tempo médio de execução do card
O sistema deverá calcular e exibir o tempo médio que os cards levam para serem concluídos, considerando a diferença entre a data de criação e a data de finalização. Esse indicador deverá ser exibido por projeto e por colaborador, possibilitando a identificação de gargalos e eficiência no processo.

---

### RF06 – Cards por colaborador
O sistema deverá apresentar a quantidade total de cards atribuídos a cada colaborador, com possibilidade de filtragem por projeto. Essa informação visa permitir a análise de carga de trabalho individual. Pode ser apresentada em formato de card.

---

### RF07 – Retrabalhos
O sistema deverá identificar e contabilizar os cards que foram movidos para etapas anteriores do fluxo após já terem avançado (indicando necessidade de retrabalho). Para isso, será necessário manter um histórico de movimentações dos cards. O indicador poderá ser detalhado por colaborador e projeto.

---

### RF08 – Controle de acesso por níveis
O sistema deverá implementar três níveis de permissão: Operador (visualiza apenas seus próprios cards e indicadores), Gestor (acesso aos dados do time sob sua responsabilidade) e Admin (visualiza todos os dados de todos os usuários e equipes). O controle deve ser seguro, baseado em autenticação, e as permissões devem refletir em todas as visualizações de dashboards e relatórios.

---

### RF09 – Quantidade de cards por sprint
O sistema deverá apresentar a quantidade total de cards vinculados a cada sprint registrada no sistema ou na ferramenta integrada (ex: Taiga). A visualização deverá permitir a filtragem por projeto e por usuário, e poderá ser exibida em formato de gráfico de colunas. O objetivo é possibilitar o acompanhamento da carga de trabalho planejada em cada sprint, apoiando a análise de planejamento e execução.

---

### RF10 – Exportação de indicadores em CSV
O sistema deverá permitir a exportação dos dados apresentados nos dashboards e relatórios em formato CSV. O usuário poderá selecionar quais indicadores deseja exportar, aplicar filtros (como projeto, período, colaborador) antes da geração do arquivo, e o CSV resultante deverá refletir exatamente os dados filtrados. A funcionalidade de exportação deverá respeitar o nível de acesso do usuário (Operador, Gestor, Admin).


---

## 5. Requisitos Não Funcionais e Rastreabilidade

### RNF01 – Documentação da API
A API do sistema deverá ser completamente documentada utilizando a especificação Swagger/OpenAPI. A documentação incluirá todos os endpoints disponíveis, métodos HTTP suportados, parâmetros de entrada e saída, códigos de erro e exemplos de uso. Isso garantirá que a API seja facilmente integrada com outras ferramentas e possa ser utilizada de forma eficiente por desenvolvedores.

---

### RNF02 – Responsividade
O sistema deverá ser responsivo, ou seja, adaptar-se a diferentes tamanhos de tela e dispositivos (desktop, tablet e smartphone). A interface deve ser totalmente funcional em dispositivos móveis, com todos os elementos sendo redimensionados e reorganizados para proporcionar a melhor experiência ao usuário. A navegação deve ser fluida e intuitiva em dispositivos com toque.

---

### RNF03 – Manual do Usuário
O sistema deverá disponibilizar um manual do usuário completo, acessível dentro da própria aplicação. O manual explicará todas as funcionalidades do sistema, desde o login até a visualização dos dados no dashboard, exportação de relatórios e configuração de filtros. O manual será acompanhado de imagens e capturas de tela para facilitar o entendimento.

---

### RNF04 – Modelagem do Banco de Dados
O banco de dados do sistema deverá ser modelado de forma eficiente e otimizada para garantir o bom desempenho da aplicação. A modelagem incluirá tabelas que armazenem informações de cards, usuários, projetos, histórico de movimentações e outras entidades necessárias para o funcionamento do sistema. A modelagem deverá ser validada pela equipe de desenvolvimento e otimizada para consultas rápidas e eficientes.

## 6. Rastreabilidade e ferramentas

### Atribuição de User Stories e Requisitos no Jira

No Jira, as Tasks são vinculadas às User Stories, e as User Stories atendem aos Requisitos vinculados proporcionalmente. Esse relacionamento é essencial para garantir que o trabalho seja realizado de acordo com as expectativas do cliente e que o progresso seja rastreado corretamente. 

Essa estrutura ajuda a manter o foco no que precisa ser feito e assegura que as funcionalidades desenvolvidas correspondam aos Requisitos do sistema.

### Relação entre Requisitos e User Stories

Para facilitar o acompanhamento do progresso, a tabela a seguir mostra como cada Requisito está relacionado à User Story correspondente. Isso permite entender facilmente como os Requisitos são atendidos pelas User Stories, seguindo a organização do Jira.

| RF \ US | US01 | US02 | US03 | US04 | US05 | US06 | US07 | US08 | US09 | US10 | US11 | US12 |
|---------|------|------|------|------|------|------|------|------|------|------|------|------|
| RF01    |  X   |      |      |      |      |      |      |      |      |      |      |      |
| RF02    |      |  X   |      |      |      |      |      |      |      |      |      |      |
| RF03    |      |  X   |      |      |      |      |      |      |      |      |      |      |
| RF04    |      |      |  X   |      |      |      |      |      |      |      |      |      |
| RF05    |      |      |      |  X   |      |      |      |      |      |      |      |      |
| RF06    |      |      |      |      |  X   |  X   |      |      |      |      |      |      |
| RF07    |      |      |      |      |  X   |      |      |  X   |      |      |      |      |
| RF08    |      |      |      |      |      |      |  X   |  X   |  X   |  X   |      |      |
| RF09    |      |      |      |      |      |      |      |      |      |      |  X   |      |
| RF10    |      |      |      |      |      |      |      |      |      |      |      |  X   |
| RNF01   |  X   |  X   |  X   |  X   |  X   |  X   |  X   |  X   |  X   |  X   |  X   |  X   |
| RNF02   |  X   |  X   |  X   |  X   |  X   |  X   |      |  X   |      |  X   |  X   |      |
| RNF03   |  X   |  X   |  X   |  X   |  X   |  X   |      |  X   |      |  X   |  X   |      |
| RNF04   |      |      |      |      |      |      |      |      |      |      |      |      |



Esse processo de organização permite que o desenvolvimento seja claro e bem direcionado, com **Requisitos**, **User Stories** e **Tasks** alinhados e rastreados de forma eficiente no **Jira**.