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
    if (posicao.x > width) posicao.x -= width;
    if (posicao.x < 0) posicao.x += width;
    if (posicao.y > height) posicao.y -= height;
    if (posicao.y < 0) posicao.y += height;
  }
  
  void desenhar() {
    noStroke();
    fill(cor);
    ellipse(posicao.x, posicao.y, tamanho, tamanho);
  }
}