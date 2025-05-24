![stratify](https://github.com/user-attachments/assets/21165edb-00a7-42bb-9fbc-997461174033)

<div align=center>
     <a href="https://github.com/QuantumBitBR/API_5SEM_FRONT">Front-end |</a>
     <a href="https://github.com/QuantumBitBR/API_5SEM_BACK">Back-end |</a>
     <a href="#sobre">Sobre |</a>
     <a href="#equipe">Contribuidores |</a>
     <a href="#requisitos">Requisitos Funcionais e Não Funcionais |</a>
     <a href="#backlog">Product Backlog |</a>
     <a href="#cronograma">Cronograma de Entregas |</a>
     <a href="#resumo">Resumo das Sprints |</a>
     <a href="#tecnologias">Tecnologias</a>
</div>

<span id="sobre">
  
## Problema
<p>A Youtan, empresa de desenvolvimento de software, busca aprimorar a gestão de projetos utilizando a plataforma Taiga. Atualmente, a equipe enfrenta desafios na visualização de indicadores essenciais do fluxo de trabalho, dificultando o acompanhamento do progresso dos projetos e a tomada de decisões estratégicas. A ausência de um painel centralizado que apresente métricas relevantes, como quantidade de cards criados em um período, tempo médio de finalização, e distribuição de tarefas entre os membros da equipe, torna a gestão menos eficiente e menos transparente.
</p>
<p>
Além disso, a diferenciação de acesso por níveis de usuário não é nativamente oferecida da maneira necessária, o que dificulta a exibição de informações personalizadas para operadores, gestores e administradores.
</p>

## Solução
<p>Desenvolver uma plataforma integrada ao banco de dados do Taiga para consolidar e exibir indicadores estratégicos sobre o andamento dos projetos. Essa solução permitirá que diferentes perfis de usuários tenham acesso a informações específicas, garantindo uma visão clara e organizada:</p>

- Operador: poderá visualizar métricas relacionadas aos cards sob sua responsabilidade.
- Gestor: poderá visualizar métricas dos cards sob sua responsabilidade e do seu time.
- Admin: terá acesso a todas as métricas de todos os times.
<p>A plataforma fornecerá dashboards interativos para facilitar o acompanhamento dos projetos, tornando a gestão mais eficiente e transparente.
</p>

## Diretório de Documentação 

- <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/Manual-de-Usu%C3%A1rio"/>Manual do Usuário</a>
- <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/Padr%C3%B5es-de-Desenvolvimento">Padrões de Desenvolvimento</a>
- <a href="https://quantumbitbr.github.io/API_5SEM/#/">Devops - Requirement Tracking</a>
- <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/DevOps-%E2%80%90-Database">Devops - Database</a>
- <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/DevOps-%E2%80%90-Testes-Unit%C3%A1rios">Devops - Testes Unitários</a>
- <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/DevOps-%E2%80%90-Documenta%C3%A7%C3%A3o">Devops - Documentação</a>
- <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/DevOps--%E2%80%90-Quality-Assurence">Devops - Quality Assurence</a>
- <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/Devops-%E2%80%90-Deploy">Devops - Deploy</a>
- <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/DevOps-%E2%80%90-Continuos-Integration">Devops - Continuous Integration</a>

<span id="requisitos"> 

## Requisitos Funcionais e Não Funcionais
<details>

<summary>Clique aqui</summary>

| ID | Requisito | Descrição |
| ----| --------| ------------|
RF01 | Quantidade de cards por etiqueta | O sistema deverá exibir a quantidade de cards associados a cada etiqueta cadastrada no kanban. Essa informação deverá ser apresentada de forma visual, como tabela, e permitir filtragem por projeto e usuário. As etiquetas devem ser sincronizadas com a ferramenta integrada (ex: Taiga) para garantir a consistência dos dados.
RF02 | Quantidade de cards criados por período | O sistema deverá apresentar um relatório com a quantidade de cards criados por períodos pré-definidos (último dia, última semana, último mês, outros). O usuário deverá ser capaz de escolher o nível de visualização (colaborador ou projeto). A visualização poderá ser feita em forma de gráfico colunas para análise de tendência.
RF03 | Quantidade de cards finalizados por período | O sistema deverá mostrar a quantidade de cards que tiveram seu status alterado para "Finalizado" dentro de períodos específicos (último dia, última semana, último mês, outros). O usuário deverá ser capaz de escolher o nível de visualização (colaborador ou projeto). A visualização poderá ser feita em forma de gráfico colunas para análise de tendência.
RF04 | Quantidade de cards por status (coluna do kanban) | O sistema deverá exibir a distribuição atual dos cards de acordo com os status do fluxo de trabalho do kanban (por exemplo: "To Do", "In Progress", "Done"). Deverá visualizar por colaborador ou projeto. Idealmente, o dashboard exibirá a informação com gráficos interativos.
RF05 | Tempo médio de execução do card | O sistema deverá calcular e exibir o tempo médio que os cards levam para serem concluídos, considerando a diferença entre a data de criação e a data de finalização. Esse indicador deverá ser exibido por projeto e por colaborador, possibilitando a identificação de gargalos e eficiência no processo.
RF06 | Cards por colaborador | O sistema deverá apresentar a quantidade total de cards atribuídos a cada colaborador, com possibilidade de filtragem por projeto. Essa informação visa permitir a análise de carga de trabalho individual. Pode ser apresentada em formato de card.
RF07 | Retrabalhos | O sistema deverá identificar e contabilizar os cards que foram movidos para etapas anteriores do fluxo após já terem avançado (indicando necessidade de retrabalho). Para isso, será necessário manter um histórico de movimentações dos cards. O indicador poderá ser detalhado por colaborador e projeto.
RF08 | Controle de acesso por níveis | O sistema deverá implementar três níveis de permissão: Operador (visualiza apenas seus próprios cards e indicadores), Gestor (acesso aos dados do time sob sua responsabilidade) e Admin (visualiza todos os dados de todos os usuários e equipes). O controle deve ser seguro, baseado em autenticação, e as permissões devem refletir em todas as visualizações de dashboards e relatórios.
RF09 | Quantidade de cards por sprint | O sistema deverá apresentar a quantidade total de cards vinculados a cada sprint registrada no sistema ou na ferramenta integrada (ex: Taiga). A visualização deverá permitir a filtragem por projeto e por usuário, e poderá ser exibida em formato de tabela. O objetivo é possibilitar o acompanhamento da carga de trabalho planejada em cada sprint, apoiando a análise de planejamento e execução.
RF10 | Exportação de indicadores em CSV | O sistema deverá permitir a exportação dos dados apresentados nos dashboards e relatórios em formato CSV. O usuário poderá selecionar quais indicadores deseja exportar, aplicar filtros (como projeto, período, colaborador) antes da geração do arquivo, e o CSV resultante deverá refletir exatamente os dados filtrados. A funcionalidade de exportação deverá respeitar o nível de acesso do usuário (Operador, Gestor, Admin).
RNF01 | Documentação da API | A API desenvolvida para integração com sistemas externos (Taiga) deverá ser completamente documentada, utilizando ferramentas como Swagger. A documentação deve conter: endpoints, métodos suportados (GET, POST etc.), parâmetros esperados, exemplos de requisições/respostas e códigos de erro.
RNF02 | Responsividade | A aplicação deverá funcionar corretamente em diferentes resoluções e dispositivos (desktop, e smartphones). Deve seguir princípios de design responsivo, garantindo boa usabilidade mesmo em telas reduzidas. Frameworks como Bootstrap, Tailwind ou CSS Grid/Flexbox podem ser utilizados para esse fim.
RNF03 | Manual do Usuário | Deve ser disponibilizado um manual do usuário, em formato digital (PDF ou online/Readme), contendo instruções passo a passo sobre como acessar o sistema, interpretar os indicadores, filtrar dados, exportar relatórios e alterar configurações. O manual deve ser claro, objetivo e incluir imagens ilustrativas.
RNF04 | Modelagem do Banco de Dados | O sistema deverá contar com uma modelagem de banco de dados relacional otimizada, garantindo integridade referencial, desempenho nas consultas e escalabilidade. A modelagem deverá considerar normalização, chaves estrangeiras, índices e histórico de movimentações dos cards para cálculo de indicadores como tempo de execução e retrabalho.
RNF05 | DevOps | O sistema deve utilizar ferramentas de devops sendo: integração contínua (CI) com testes automatizados, controle de versão do banco de dados e documentação atualizada. Deve haver rastreamento de requisitos e validação por QA. 
</details>


<span id="backlog"> 

## Backlog do Produto

<details>

<summary>Clique aqui</summary>

| ID |Rank | Prioridade | User Story | Estimativa | Sprint | Requisitos Relacionados
|---------|---------|-------------|----------------|--------------|---------|--------|
| US01 | 1 | Alta | Como usuário, desejo visualizar os indicadores de etiqueta para identificar a quantidade de cards associados a cada categoria e facilitar a análise de organização. | 7 | 1 | RF01, RFN01
| US02 |2 | Alta | Como usuário, desejo visualizar os indicadores de cards relacionados a períodos para acompanhar a evolução da criação e finalização dos cards ao longo do tempo. | 9 | 1 | RF02, RF03, RFN01
| US03 |3 | Alta | Como usuário, desejo visualizar os indicadores de cards relacionados a status para entender a distribuição dos cards dentro do fluxo do Kanban. | 6 | 1 | RF04, RFN01
| US04 |4 | Alta | Como usuário, desejo visualizar os indicadores de tempo gasto por card para analisar a eficiência do fluxo de trabalho e identificar possíveis gargalos. | 8 | 1 | RF05, RFN01
| US05 |5 | Média | Como usuário admin e gestor, desejo visualizar os indicadores por colaborador para acompanhar a produtividade individual e distribuir melhor as tarefas. | 6 | 2 | RF06, RFN01
| US06 |6 | Média | Como usuário admin, desejo visualizar os indicadores de todos os times, para obter uma visão global do desempenho e tomar decisões estratégicas. | 7 | 2 | RF06, RFN03
| US07 |7 | Baixa | Como usuário, desejo realizar autenticação com meu usuário e senha, para garantir segurança aos dados e restringir o acesso apenas a usuários autorizados. | 9 | 2 | RF08, RFN01
| US08 |8 | Baixa | Como admin, desejo gerenciar as contas de usuário para controlar o acesso à ferramenta e gerenciar permissões de uso. | 6 | 2 | RF08, RFN01
| US09 |9 | Média | Como usuário Operador, desejo visualizar somente os meus indicadores para acompanhar minha própria produtividade e desempenho. | 4 | 2 | RF01, RF02, RF03, RF04, RF05, RFN01, RFN02, RFN03
| US10 |10 | Baixa | Como usuário, desejo visualizar os indicadores de retrabalho para identificar tarefas que precisaram ser refeitas e melhorar a eficiência dos processos. | 5 | 3 | RF07, RFN01
| US11 |11 | Baixa | Como usuário, desejo visualizar a quantidade de user stories presentes por sprint, para poder identificar a evolução do volume de trabalho planejado ao longo do tempo e apoiar a análise da capacidade da equipe. | 7 | 3 | RF09, RFN01
| US12 |12 | Baixa | Como usuário, desejo exportar os dados com indicadores calculados através de um arquivo CSV para poder realizar análises externas, compartilhar informações ou manter registros offline. | 4 | 3 | RF10, RFN01

</details>


<span id="resumo">

## Sprints Backlog

| **Sprint** | **Link** |
|-----|-----|
| 01 | <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/Sprint-01" >Clique aqui</a>
| 02 | <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/Sprint-02" >Clique aqui</a>
| 02 | <a href="https://github.com/QuantumBitBR/API_5SEM/wiki/Sprint-03" >Clique aqui</a>


<span id="cronograma">

## Cronograma de Entregas

Sprint| Início| Entrega  
--- | --- | ---
Kick off do projeto| 27/02/2025| -------------
Sprint 1| 10/03/2025 | 30/03/2025 
Sprint 2| 07/04/2025| 27/04/2025
Sprint 3| 05/05/2025| 25/05/2025 
Feira de Soluções| 17/06/2025 | -------------

<span id="equipe"> 

## Contribuidores

| Nome | Função | Networking | Identificação |
| -----| ---------| ----------------| ---------|
André Filipe | Developer | <a href="https://github.com/AndreMeneses0103"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"></a><a href="https://www.linkedin.com/in/andre-meneses-dev/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a> | <a href="" ><img src="https://github.com/TechHorizonBR/API_3SEM/assets/89109574/ca09a732-b248-41dc-ab7c-145822ffd74b" width="60"></a> |
Cainan Thomas | Developer | <a href="https://github.com/Kainanthyz"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"></a><a href="https://www.linkedin.com/in/cainan-santos-70938094/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a>| <a href="" ><img src="https://media.licdn.com/dms/image/v2/D4D03AQH4_cl23_Fzug/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1715111667286?e=1753315200&v=beta&t=B_w6FU-E-t8aHSJfvcJq8VMQnkS6uLYgC0dUngPl0-A" width="60"></a>
Caio Sousa | Developer | <a href="https://github.com/caio-sousafatec"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"></a><a href="https://www.linkedin.com/in/caiomsousa01/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a> | <img src="https://avatars.githubusercontent.com/u/111454312?v=4" width="60" > |
Gabriel Mota | Developer | <a href="https://github.com/gabmota8"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"></a><a href="https://www.linkedin.com/in/gabriel-mota-4a0816a0/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a> |<img src="https://avatars.githubusercontent.com/u/44507787?v=4" width="60">|
Gilvane Amaro | Scrum Master | <a href="https://github.com/gilvaneamaro"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white5" alt="GitHub"></a> <a href="https://www.linkedin.com/in/gilvane-amaro/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a> |<img src="https://avatars.githubusercontent.com/u/121205315?v=4" width="60">|
Jhony Santos | Product Owner | <a href="https://github.com/santosjhony12"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"></a><a href="https://www.linkedin.com/in/jhony-santos-de-souza-920229238"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a> |<img src="https://avatars.githubusercontent.com/u/123211025?v=4" width="60">|
João Matheus | Developer | <a href="https://github.com/JoaoMatheusLamao"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"></a><a href="https://www.linkedin.com/in/joaomatheuslamao/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a> |<img src="https://avatars.githubusercontent.com/u/77554165?v=4" width="60">|
Julio Freitas | Developer | <a href="https://github.com/JulioFreitas07"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"></a><a href="https://www.linkedin.com/in/julio-freitas-415b73216/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"></a> |<img src="https://avatars.githubusercontent.com/u/127301327?v=4" width="60">|



<span id="tecnologias">
  
## Tecnologias Utilizadas

![Readme TechHorizon 2S](https://github.com/user-attachments/assets/ee44423e-1620-468f-9583-52e0b82a4155)
