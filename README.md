# Loja de Jogos - Banco de Dados

## Descrição

Este repositório contém o script SQL necessário para criar e popular um banco de dados de uma loja de jogos. A estrutura do banco de dados é projetada para gerenciar eficientemente informações relacionadas a jogos e clientes, proporcionando uma base sólida para armazenamento e consultas.

## Estrutura do Banco de Dados

### Tabelas e Relacionamentos

- **País**: Armazena informações sobre os países, incluindo nome e código.
- **Moeda**: Armazena detalhes sobre as moedas utilizadas na loja, como nome e símbolo.
- **Usuário**: Armazena informações sobre os usuários, incluindo dados pessoais e país de origem.
- **Jogo**: Contém informações sobre os jogos disponíveis na loja, incluindo título, descrição e preço na moeda correspondente.
- **DLC**: Armazena informações sobre os conteúdos adicionais (DLCs) dos jogos, incluindo preços e vínculos aos jogos principais.
- **Conquista**: Registra as conquistas associadas aos jogos, permitindo que os usuários acompanhem seu progresso.
- **Assinatura**: Armazena informações sobre as assinaturas dos usuários, incluindo tipo, duração e benefícios.
- **Compra**: Registra as compras realizadas pelos usuários, com detalhes sobre a data e o valor total.
- **Item de Compra**: Armazena os itens que compõem cada compra, associando-os aos jogos adquiridos e suas respectivas quantidades.

Essa estrutura abrangente facilita a gestão de dados e oferece flexibilidade para futuras expansões, permitindo a adição de novas funcionalidades conforme a loja se desenvolve.
