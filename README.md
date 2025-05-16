# Rastreabilidade de Requisitos - Stratify

---

## 1. Introdução
Este documento tem como objetivo apresentar a rastreabilidade dos requisitos funcionais e não funcionais do sistema Stratify. O processo de rastreabilidade visa garantir que todos os requisitos levantados durante a fase de levantamento foram devidamente compreendidos, documentados e implementados conforme esperado.


## 2. Objetivo do Sistema
O sistema Stratify foi idealizado com o objetivo de oferecer uma plataforma de apoio à gestão de projetos, integrando-se ao Taiga e permitindo a visualização de indicadores essenciais para o acompanhamento do fluxo de trabalho. O sistema conta com níveis de acesso diferenciados (operadores, gestores e administradores) e será acompanhado de uma API para integração com outras ferramentas de gestão.


## 3. Requisitos Funcionais e não funcionais detalhados

### R1 – Quantidade de cards por etiqueta  
O sistema deverá exibir a quantidade de cards associados a cada etiqueta cadastrada no kanban. Essa informação deverá ser apresentada de forma visual, como tabela, e permitir filtragem por projeto e período. As etiquetas devem ser sincronizadas com a ferramenta integrada (ex: Taiga) para garantir a consistência dos dados.

---

### R2 – Quantidade de cards criados por período  
O sistema deverá apresentar um relatório com a quantidade de cards criados por períodos pré-definidos (último dia, última semana, último mês, outros). O usuário deverá ser capaz de escolher o nível de visualização (colaborador ou projeto). A visualização poderá ser feita em forma de gráfico de colunas para análise de tendência.

---

### R3 – Quantidade de cards finalizados por período  
O sistema deverá mostrar a quantidade de cards que tiveram seu status alterado para "Finalizado" dentro de períodos específicos (último dia, última semana, último mês, outros). O usuário deverá ser capaz de escolher o nível de visualização (colaborador ou projeto). A visualização poderá ser feita em forma de gráfico de colunas para análise de tendência.

---

### R4 – Quantidade de cards por status (coluna do kanban)  
O sistema deverá exibir a distribuição atual dos cards de acordo com os status do fluxo de trabalho do kanban (por exemplo: "To Do", "In Progress", "Done"). A exibição deve permitir visualizar por colaborador ou projeto. Idealmente, o dashboard exibirá a informação com gráficos interativos.

---

### R5 – Tempo médio de execução do card  
O sistema deverá calcular e exibir o tempo médio que os cards levam para serem concluídos, considerando a diferença entre a data de criação e a data de finalização. Esse indicador deverá ser exibido por projeto e por colaborador, possibilitando a identificação de gargalos e eficiência no processo.

---

### R6 – Cards por colaborador  
O sistema deverá apresentar a quantidade total de cards atribuídos a cada colaborador, com possibilidade de filtragem por projeto. Essa informação visa permitir a análise de carga de trabalho individual. Pode ser apresentada em formato de card.

---

### R7 – Retrabalhos  
O sistema deverá identificar e contabilizar os cards que foram movidos para etapas anteriores do fluxo após já terem avançado (indicando necessidade de retrabalho). Para isso, será necessário manter um histórico de movimentações dos cards. O indicador poderá ser detalhado por colaborador e projeto.

---

### R8 – Controle de acesso por níveis  
O sistema deverá implementar três níveis de permissão: Operador (visualiza apenas seus próprios cards e indicadores), Gestor (acesso aos dados do time sob sua responsabilidade) e Admin (visualiza todos os dados de todos os usuários e equipes). O controle deve ser seguro, baseado em autenticação, e as permissões devem refletir em todas as visualizações de dashboards e relatórios.

---

### R9 – Quantidade de cards por sprint  
O sistema deverá apresentar a quantidade total de cards vinculados a cada sprint registrada no sistema ou na ferramenta integrada (ex: Taiga). A visualização deverá permitir a filtragem por projeto e por usuário, e poderá ser exibida em formato de gráfico de colunas. O objetivo é possibilitar o acompanhamento da carga de trabalho planejada em cada sprint, apoiando a análise de planejamento e execução.

---

### R10 – Exportação de indicadores em CSV  
O sistema deverá permitir a exportação dos dados apresentados nos dashboards e relatórios em formato CSV. O usuário poderá selecionar quais indicadores deseja exportar, aplicar filtros (como projeto, período, colaborador) antes da geração do arquivo, e o CSV resultante deverá refletir exatamente os dados filtrados. A funcionalidade de exportação deverá respeitar o nível de acesso do usuário (Operador, Gestor, Admin).

---

### R11 – Documentação da API  
A API do sistema deverá ser completamente documentada utilizando a especificação Swagger/OpenAPI. A documentação incluirá todos os endpoints disponíveis, métodos HTTP suportados, parâmetros de entrada e saída, códigos de erro e exemplos de uso. Isso garantirá que a API seja facilmente integrada com outras ferramentas e possa ser utilizada de forma eficiente por desenvolvedores.

---

### R12 – Responsividade  
O sistema deverá ser responsivo, ou seja, adaptar-se a diferentes tamanhos de tela e dispositivos (desktop, tablet e smartphone). A interface deve ser totalmente funcional em dispositivos móveis, com todos os elementos sendo redimensionados e reorganizados para proporcionar a melhor experiência ao usuário. A navegação deve ser fluida e intuitiva em dispositivos com toque.

---

### R13 – Manual do Usuário  
O sistema deverá disponibilizar um manual do usuário completo, acessível dentro da própria aplicação. O manual explicará todas as funcionalidades do sistema, desde o login até a visualização dos dados no dashboard, exportação de relatórios e configuração de filtros. O manual será acompanhado de imagens e capturas de tela para facilitar o entendimento.

---

### R14 – Modelagem do Banco de Dados  
O banco de dados do sistema deverá ser modelado de forma eficiente e otimizada para garantir o bom desempenho da aplicação. A modelagem incluirá tabelas que armazenem informações de cards, usuários, projetos, histórico de movimentações e outras entidades necessárias para o funcionamento do sistema. A modelagem deverá ser validada pela equipe de desenvolvimento e otimizada para consultas rápidas e eficientes.