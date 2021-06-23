#language: pt

@Consultar_resultado_triangulo
Funcionalidade: Consultar resultado inseridos na aplicação
    Como usuário do aplicativo
    Eu quero realizar inserção de dados no aplicativo
    E validar o resultado

  @triangulo
  Esquema do Cenario: Validar triangulo
    Dado acessar a tela inicial
    Quando Inserir os dado do tringulo "<lado1>" "<lado2>" "<lado3>" 
    Então validar que o tringulo é "<triangulo>"

	Exemplos:
    | lado1   | lado2   | lado3   | triangulo                 |
    | 1       | 1       | 1       | "O triângulo é Equilátero"|
    # | 1       | 1       | 2       | "O triângulo é Isósceles" |
    # | 1       | 2       | 3       | "O triângulo é Escaleno"  |