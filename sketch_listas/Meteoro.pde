class Meteoro {
  PVector posicao;
  PVector direcao;
  float velocidade;
  float tamanho;
  color cor;
  
  Meteoro(float x, float y, PVector dir, float vel, float tam, color cor){
    this.posicao = new PVector(x, y);
    this.direcao = dir;
    this.velocidade = vel;
    this.tamanho = tam;
    this.cor = cor;
  }
  
  void mover() {
    this.posicao.add(PVector.mult(this.direcao, this.velocidade));
  }
}