class Cliente
  attr_accessor :cliente_banco

  def initialize
    @cliente_banco = []
  end


  def lista_clientes
    clientes = [
    { nome: "José da Silva", cpf: "123.456.789-00", endereco: "Rua A, 123, Bairro X, Cidade Y" },
    { nome: "Maria Oliveira", cpf: "234.567.890-11", endereco: "Rua B, 456, Bairro Y, Cidade Z" },
    { nome: "Pedro Santos", cpf: "345.678.901-22", endereco: "Rua C, 789, Bairro Z, Cidade X" },
    { nome: "Ana Costa", cpf: "456.789.012-33", endereco: "Rua D, 101, Bairro W, Cidade Y" },
    { nome: "Carlos Pereira", cpf: "567.890.123-44", endereco: "Rua E, 202, Bairro V, Cidade Z" }
  ]
  end

  def cadastrar
    puts "Sistema de cadastro de clientes"
    print "Nome: "
    nome = gets.chomp.capitalize
    print "CPF: "
    cpf = gets.chomp
    print "Endereço: "
    endereco = gets.chomp
    saldo = 0.0
    @cliente_banco << { nome: nome, cpf: cpf, endereco: endereco, saldo: saldo}
  end
end

class Conta

  @@contador_conta = 100

  attr_accessor :contas

  def initialize
    @contas = []
  end

  def adicionar_conta(clientes)
    clientes.each_with_index do |item, indice|
      puts "#{indice + 1} - Nome: #{item[:nome]} | CPF: #{item[:cpf]} | Endereço: #{item[:endereco]}"
    end

    puts "Digite o número do indice do cliente"
    puts "Enter para sair"
    buscar_cliente = gets.chomp.to_i - 1

    if buscar_cliente.between?(0, clientes.length - 1)
      cliente_selecionado = clientes[buscar_cliente]
      nova_conta = { numero_conta: @@contador_conta, cliente: cliente_selecionado}
      @@contador_conta += 1
      @contas << nova_conta
      puts "Conta criada para #{cliente_selecionado[:nome]} - Número da conta: #{nova_conta[:numero_conta]}"
    else
      puts "Seleção inválida!"
    end
  end

  def remover_conta
    if @contas.empty?
      puts "Nenhuma conta criada!"
      puts "Criar conta?"
      puts "1 - Sim | Enter - Sair"
      opcao = gets.chomp.to_i
      if opcao == 1
        adicionar_conta
      else
        puts "Saindo..."
        return
      end
    else
      @contas.each_with_index do |numero_conta, indice|
        puts "#{indice + 1} - Cliente: #{numero_conta[:cliente][:nome]} | CPF: #{numero_conta[:cliente][:cpf]}"
      end
      puts "Qual conta excluir?"
      puts "Digite o número do indice"
      escolha = gets.chomp.to_i - 1
      if escolha > 0 && escolha < @contas.size
        @contas.delete_at(escolha)
        puts "Conta Excluida!"
      else
        puts "Escolha inválida!"
      end
    end
  end

  def listar_contas
    @contas.each do |conta|
      puts "Número da conta: #{conta[:numero_conta]}, Cliente: #{conta[:cliente][:nome]}"
    end
  end
end

class Transacao
  attr_accessor :cliente

  def initialize
    @contas
  end

  def depositar
    puts "Depositar"
    print "Conta: "
    conta = gets.chomp
    print "Valor: "
    valor = gets.chomp.to_f
    cliente = @contas.find {|c| c[:conta] == conta}

    if cliente
      puts "Cliente encontrado!"
      puts "Nome: #{cliente[:nome]}"
      puts "CPF: #{cliente[:cpf]}"
      puts "R$ #{valor}"
      puts "Confirma depósito? 1 - Sim | Enter - Sair"
      opcao = gets.chomp
      if opcao == '1'
        cliente[:saldo] += valor
        puts "Depósito de R$ #{valor} efetuado!"
        puts "Saldo atual: #{'%.2f' % cliente[:saldo]}"
      else
        puts "depósito não realizado!"
        return
      end
    else
      puts "Conta inexistente!"
    end
  end

  def sacar
    puts "Conta: "
    conta = gets.chomp
    puts "Sacar"
    print "Valor R$: "
    valor_saque = gets.chomp.to_f
    cliente = @contas.find {|c| c[:conta] == conta}

    if cliente
      puts "Cliente encontrado!"
      puts "Nome: #{cliente[:nome]}"
      puts "CPF: #{cliente[:cpf]}"
      puts "Saldo atual: #{'%.2f' % cliente[:saldo]}"

      if valor_saque <= 0
        puts "Valor de saque inválido!"
        return
      end

      if cliente[:saldo] >= valor_saque
      puts "Confirmar saque? 1 - Sim | Enter - Sair"
      opcao = gets.chomp

      if opcao == '1'
        cliente[:saldo] = cliente[:saldo] - valor_saque
        puts "Saque realizado!"
        puts "Saldo atual: R$ #{'%.2f' % cliente[:saldo]}"
      else
        puts "Saque não realizado!"
      end
    else
      puts "Conta inexistente!"
    end
  end

  def transferir
  end
end

cliente = Cliente.new
#cliente.cadastrar
cliente.lista_clientes

conta = Conta.new
conta.adicionar_conta(cliente.cliente_banco)
conta.adicionar_conta(cliente.cliente_banco)

conta.listar_contas
conta.remover_conta