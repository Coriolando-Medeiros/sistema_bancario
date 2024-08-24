class ContaBancaria
  attr_accessor :numero_conta, :saldo, :titular, :historico_transações

  def initialize
    @numero_conta = numero
    @saldo = 0
    @titular = []
    @historico_transações = []
  end
  def criar_conta
    if Cliente
      puts "Nome: #{@titular.nome}, CPF: #{@titular.cpf}"
      puts "Numero da conta"
      numero = gets.chomp.to_i
      puts "Saldo inicial R$ #{@saldo}"
      puts "Para a conta ser aberta, é necesário"
      puts "fazer um deposito mninimo de R$ 50,00"
      depositar
    end

  end

  def depositar
    if @numero_conta
      puts "Valor"
      valor = gets.chomp.to_f
      @saldo = valor
      puts "Deposito realizado de R$:  #{valor}"
      puts "Saldo atual R$: #{@saldo}"
    end
  end

  def sacar
    if @conta > 0
      puts "Seu saldo é R$: #{@saldo}"
      puts "Valor do saque"
      saque = gets.chomp.to_f
      @saldo = @saldo - saque
      puts "Foi sacado R$: #{saque}"
      puts "Saldo atual R$: #{@saldo}"
    end
  end

  def transferir
    puts
  end

  def exibir_saldo
    puts
  end

  def exibir_historico
    puts
  end

end

class Cliente

  attr_accessor :nome, :cpf, :enderecos, :contas

  def initialize
    @nome = nome
    @cpf = cpf
    @enderecos = []
    @contas = []
  end

  def cadastar
    puts "Nome"
    nome_cadastro = gets.chomp.capitalize
    puts "CPF"
    cpf_cadastro = gets.chomp
    @titular << { nome: nome_cadastro, cpf: cpf_cadastro }
  end

  def adicionar_endereco
    puts "Endereço"
    endereco = gets.chomp.capitalize
    puts "Cidade"
    cidade = gets.chomp.capitalize
    puts "Estado"
    estado = gets.chomp.capitalize
    @enderecos << { endereco: endereco, cidade: cidade, estado: estado }
  end

  def adicionar_conta
    puts
  end

  def exibir_contas
    puts
  end

end

class Transacao

  attr_accessor :data, :tipo, :valor, :conta_origem, :conta_destino

  def initialize
    @data
    @tipo
    @valor
    @conta_origem
    @conta_destino
  end

  def detalhes_transacao
    puts
  end
end

minha_conta = ContaBancaria.new
meu_cliente = Cliente.new
meu_cliente.cadastar
meu_cliente.adicionar_endereco