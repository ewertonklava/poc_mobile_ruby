#language: pt

@Consultar_resultado_triangulo
Funcionalidade: Consultar resultado inseridos na aplicação
    Como usuário do aplicativo
    Eu quero realizar inserção de dados no aplicativo
    E validar o resultado

  @teste1
  Esquema do Cenario: Validar triangulo
    Dado acessar a tela inicial1
    Quando Inserir os dado do tringulo1 "<lado1>" "<lado2>" "<lado3>" 
    Então validar que o tringulo é1 "<triangulo>"