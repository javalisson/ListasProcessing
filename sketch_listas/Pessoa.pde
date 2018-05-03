class Pessoa {
  String nome;
  String sobrenome;
  
  Pessoa(String nome, String sobrenome) {
    this.nome = nome;
    this.sobrenome = sobrenome;
  }
  
  @Override
  String toString() {
    return nome + " " + sobrenome;
  }
}