# Sistema Bancário

Este projeto implementa um sistema bancário simples em Ruby, que permite gerenciar clientes, criar contas, realizar depósitos, saques e transferências entre contas. O sistema funciona através de um menu interativo.

## Funcionalidades

1. **Cadastrar Cliente**: Permite adicionar um novo cliente ao sistema, solicitando nome, CPF e endereço.
2. **Adicionar Conta**: Cria uma nova conta bancária associada a um cliente já cadastrado.
3. **Listar Contas**: Exibe a lista de contas criadas com os respectivos números e nomes dos clientes.
4. **Remover Conta**: Exclui uma conta bancária existente.
5. **Depositar**: Permite realizar depósitos em uma conta bancária.
6. **Sacar**: Permite realizar saques de uma conta bancária, respeitando o saldo disponível.
7. **Transferir**: Permite realizar transferências entre contas bancárias, desde que a conta remetente tenha saldo suficiente.

## Como usar

### Pré-requisitos

- Ter o Ruby instalado em sua máquina.

### Execução

1. Clone o repositório para sua máquina local.
2. Navegue até o diretório do projeto e execute o arquivo principal:

```
ruby
ruby nome_do_arquivo.rb
```

    O sistema exibirá um menu interativo com as opções de operação:

```
ruby

--- Sistema Bancário ---
1 - Cadastrar Cliente
2 - Adicionar Conta
3 - Listar Contas
4 - Remover Conta
5 - Depositar
6 - Sacar
7 - Transferir
0 - Sair
Escolha uma opção:
```

   - Digite a opção desejada e siga as instruções fornecidas pelo sistema.

## Exemplo de Uso

Ao executar o sistema, você pode cadastrar um cliente, adicionar uma conta e realizar operações como depósitos e saques. Por exemplo:

```
ruby

--- Sistema Bancário ---
1 - Cadastrar Cliente
Escolha uma opção: 1
Nome: João Souza
CPF: 123.456.789-00
Endereço: Rua A, 123
```

Após cadastrar o cliente, você pode adicionar uma conta, depositar dinheiro, sacar ou transferir entre contas.

### Licença

Este projeto está licenciado sob a licença MIT.
