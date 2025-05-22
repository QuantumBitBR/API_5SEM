# Rastreabilidade de Requisitos - Stratify

---

## 1. Introdução
Este documento tem como objetivo apresentar a rastreabilidade dos requisitos funcionais e não funcionais do sistema Stratify, e está elaborado com foco na rastreabilidade de requisitos voltada ao produto, garantindo que todas as funcionalidades esperadas sejam devidamente compreendidas, documentadas e implementadas.


## 2. Objetivo do Sistema
O sistema Stratify foi idealizado com o objetivo de oferecer uma plataforma de apoio à gestão de projetos, integrando-se ao Taiga e permitindo a visualização de indicadores essenciais para o acompanhamento do fluxo de trabalho. O sistema conta com níveis de acesso diferenciados (operadores, gestores e administradores) e será acompanhado de uma API para integração com outras ferramentas de gestão.


## 3. Justificativas dos Requisitos

As justificativas explicam por que cada requisito foi incluído no sistema e sua importância para os usuários e demais stakeholders. Elas asseguram que as funcionalidades atendam às necessidades reais do projeto, promovendo a qualidade e o alinhamento do Stratify com os objetivos do negócio. Dessa forma, contribuem para o sucesso da solução, facilitando o entendimento e a priorização durante o desenvolvimento.

### R1 – Quantidade de cards por etiqueta  
*Descrição:* O sistema deverá exibir a quantidade de cards associados a cada etiqueta cadastrada no kanban. Essa informação deverá ser apresentada de forma visual, como tabela, e permitir filtragem por projeto e período. As etiquetas devem ser sincronizadas com a ferramenta integrada (ex: Taiga) para garantir a consistência dos dados.

*Stakeholders:*: Gestores de projeto, equipe de desenvolvimento e Product Owner.

*Justificativa:*: Oferece uma visão rápida da distribuição das tarefas por etiqueta, facilitando o acompanhamento e identificação de gargalos. A integração com o Taiga assegura dados confiáveis para a análise.

---

### R2 – Quantidade de cards criados por período  
*Descrição:* O sistema deverá apresentar um relatório com a quantidade de cards criados por períodos pré-definidos (último dia, última semana, último mês, outros). O usuário deverá ser capaz de escolher o nível de visualização (colaborador ou projeto). A visualização poderá ser feita em forma de gráfico de colunas para análise de tendência.

*Stakeholders:*: Gestores de equipe, analistas de desempenho e Product Owner.

*Justificativa:*: Permite analisar o volume de entrada de tarefas, colaborando para o planejamento da equipe. A visualização por colaborador ou projeto apoia o ajuste da produtividade.

---

### R3 – Quantidade de cards finalizados por período  
*Descrição:* O sistema deverá mostrar a quantidade de cards que tiveram seu status alterado para "Finalizado" dentro de períodos específicos (último dia, última semana, último mês, outros). O usuário deverá ser capaz de escolher o nível de visualização (colaborador ou projeto). A visualização poderá ser feita em forma de gráfico de colunas para análise de tendência.

*Stakeholders:*: Gestores de projeto, Scrum Master e Product Owner.

*Justificativa:*: Ajuda a mensurar a entrega da equipe e o avanço do projeto. A filtragem por colaborador ou projeto contribui na identificação de melhorias.

---

### R4 – Quantidade de cards por status (coluna do kanban)  
*Descrição:* O sistema deverá exibir a distribuição atual dos cards de acordo com os status do fluxo de trabalho do kanban (por exemplo: "To Do", "In Progress", "Done"). A exibição deve permitir visualizar por colaborador ou projeto. Idealmente, o dashboard exibirá a informação com gráficos interativos.

*Stakeholders:*: Gestores de projeto e equipe de desenvolvimento.

*Justificativa:*: Facilita o monitoramento do fluxo de trabalho e dos gargalos em tempo real. Os gráficos tornam a análise mais acessível para decisões ágeis.

---

### R5 – Tempo médio de execução do card  
*Descrição:* O sistema deverá calcular e exibir o tempo médio que os cards levam para serem concluídos, considerando a diferença entre a data de criação e a data de finalização. Esse indicador deverá ser exibido por projeto e por colaborador, possibilitando a identificação de gargalos e eficiência no processo.

*Stakeholders:*: Gestores de projeto, analistas de desempenho e Product Owner.

*Justificativa:*: Mede a eficiência da equipe e revela pontos de melhoria no processo. Auxilia na redução de atrasos e no aumento da produtividade.

---

### R6 – Cards por colaborador  
*Descrição:* O sistema deverá apresentar a quantidade total de cards atribuídos a cada colaborador, com possibilidade de filtragem por projeto. Essa informação visa permitir a análise de carga de trabalho individual. Pode ser apresentada em formato de card.

*Stakeholders:*: Gestores de equipe e equipe de desenvolvimento.

*Justificativa:*: Garante uma distribuição mais equilibrada das tarefas, prevenindo sobrecargas e contribuindo para o bem-estar e desempenho da equipe.

---

### R7 – Retrabalhos  
*Descrição:* O sistema deverá identificar e contabilizar os cards que foram movidos para etapas anteriores do fluxo após já terem avançado (indicando necessidade de retrabalho). Para isso, será necessário manter um histórico de movimentações dos cards. O indicador poderá ser detalhado por colaborador e projeto.

*Stakeholders:*: Gestores de projeto, QA e Product Owner.

*Justificativa:*: Indica falhas no processo e direciona ações corretivas. Contribui para aumentar a qualidade e reduzir custos com retrabalho.

---

### R8 – Controle de acesso por níveis  
*Descrição:* O sistema deverá implementar três níveis de permissão: Operador (visualiza apenas seus próprios cards e indicadores), Gestor (acesso aos dados do time sob sua responsabilidade) e Admin (visualiza todos os dados de todos os usuários e equipes). O controle deve ser seguro, baseado em autenticação, e as permissões devem refletir em todas as visualizações de dashboards e relatórios.

*Stakeholders:*: Administradores e usuários.

*Justificativa:*: Assegura que cada usuário acesse apenas o necessário, promovendo segurança da informação e conformidade com políticas internas.

---

### R9 – Quantidade de cards por sprint  
*Descrição:* O sistema deverá apresentar a quantidade total de cards vinculados a cada sprint registrada no sistema ou na ferramenta integrada (ex: Taiga). A visualização deverá permitir a filtragem por projeto e por usuário, e poderá ser exibida em formato de gráfico de colunas. O objetivo é possibilitar o acompanhamento da carga de trabalho planejada em cada sprint, apoiando a análise de planejamento e execução.

*Stakeholders:*: Gestores de projeto, Scrum Master e equipe de desenvolvimento.

*Justificativa:*: Permite o acompanhamento das sprints, medindo o desempenho da equipe por ciclo. Facilita ajustes no planejamento ágil.

---

### R10 – Exportação de indicadores em CSV  
*Descrição:* O sistema deverá permitir a exportação dos dados apresentados nos dashboards e relatórios em formato CSV. O usuário poderá selecionar quais indicadores deseja exportar, aplicar filtros (como projeto, período, colaborador) antes da geração do arquivo, e o CSV resultante deverá refletir exatamente os dados filtrados. A funcionalidade de exportação deverá respeitar o nível de acesso do usuário (Operador, Gestor, Admin).

*Stakeholders:*: Gestores de projeto e analistas de dados.

*Justificativa:*: A exportação amplia as possibilidades de análise e integração com outras ferramentas, contribuindo com relatórios mais completos.

---

### R11 – Documentação da API  
*Descrição:* A API do sistema deverá ser completamente documentada utilizando a especificação Swagger/OpenAPI. A documentação incluirá todos os endpoints disponíveis, métodos HTTP suportados, parâmetros de entrada e saída, códigos de erro e exemplos de uso. Isso garantirá que a API seja facilmente integrada com outras ferramentas e possa ser utilizada de forma eficiente por desenvolvedores.

*Stakeholders:*: Equipe de desenvolvimento.

*Justificativa:*: Facilita integrações futuras e a manutenção do sistema, promovendo padronização e clareza no uso dos recursos da API.

---

### R12 – Responsividade  
*Descrição:* O sistema deverá ser responsivo, ou seja, adaptar-se a diferentes tamanhos de tela e dispositivos (desktop, tablet e smartphone). A interface deve ser totalmente funcional em dispositivos móveis, com todos os elementos sendo redimensionados e reorganizados para proporcionar a melhor experiência ao usuário. A navegação deve ser fluida e intuitiva em dispositivos com toque.

*Stakeholders:*: Todos os usuários.

*Justificativa:*: Garante boa experiência de uso em qualquer dispositivo, beneficiando especialmente usuários remotos ou em campo.

---

### R13 – Manual do Usuário  
*Descrição:* O sistema deverá disponibilizar um manual do usuário completo, acessível dentro da própria aplicação. O manual explicará todas as funcionalidades do sistema, desde o login até a visualização dos dados no dashboard, exportação de relatórios e configuração de filtros. O manual será acompanhado de imagens e capturas de tela para facilitar o entendimento.

*Stakeholders:*: Usuários finais e suporte.

*Justificativa:*: Reduz a curva de aprendizado, promovendo autonomia dos usuários e melhor aproveitamento do sistema.

---

### R14 – Modelagem do Banco de Dados  
*Descrição:* O banco de dados do sistema deverá ser modelado de forma eficiente e otimizada para garantir o bom desempenho da aplicação. A modelagem incluirá tabelas que armazenem informações de cards, usuários, projetos, histórico de movimentações e outras entidades necessárias para o funcionamento do sistema. A modelagem deverá ser validada pela equipe de desenvolvimento e otimizada para consultas rápidas e eficientes.

*Stakeholders:*: Equipe de desenvolvimento e DBAs.

*Justificativa:*: Garante desempenho, escalabilidade, integridade e facilidade de manutenção conforme o sistema cresce.