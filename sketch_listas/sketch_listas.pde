import java.util.List;
import java.util.LinkedList;
import java.util.Collections;

List<Meteoro> listaMeteoros;
List<PVector> listaVetores;

PVector v1, v2, r;

void setup() {
  List<Integer> listaInteiros = new ArrayList<Integer>();
  listaInteiros.add(42);
  // listaInteiros.add("Olá"); // erro
  // System.out.println(listaInteiros.get(0));
  
  List<String> listaPalavras = new ArrayList<String>();
  listaPalavras.add("Olá");
  listaPalavras.add("Mundo");
  listaPalavras.add("foo");
  listaPalavras.add("bar");
  listaPalavras.add("baz");
  listaPalavras.add("42");
  // listaPalavras.add(42); // erro
  
  //System.out.println(listaPalavras.get(0));
  //System.out.println(listaPalavras.get(1));
  //System.out.println(listaPalavras.get(2));
  //System.out.println(listaPalavras.get(3));
  //System.out.println(listaPalavras.get(4));
  //System.out.println(listaPalavras.get(5));
  
  //for (int i = 0; i < listaPalavras.size(); i++) {
  //  System.out.println(listaPalavras.get(i));
  //}
  
  for(String palavra: listaPalavras) {
    System.out.println(palavra);
  }
  
  Pessoa p1 = new Pessoa("Rafael", "Poltronieri");
  Pessoa p2 = new Pessoa("Gregory Vinicius", "Connor");
  Pessoa[] pessoas = {
    new Pessoa("Paulo Ricardo", "de Souza"),
    new Pessoa("João Henrique", "Berssanette"),
    new Pessoa("Suelyn", "Silva")
  };
  
  List<Pessoa> listaPessoas = new LinkedList<Pessoa>();
  listaPessoas.add(p1);
  listaPessoas.add(p2);
  Collections.addAll(listaPessoas, pessoas);
  listaPessoas.add(new Pessoa("Alisson", "Prestes"));  
  
  for (Pessoa p: listaPessoas) System.out.println(p);
  
  // List<Object> listaGenerica = new ArrayList<Object>();
  List listaGenerica = new ArrayList();
  
  listaGenerica.add(42);
  listaGenerica.add("Olá, Mundo!");
  listaGenerica.add(p1);
  
  for (Object o: listaGenerica) System.out.println(o);
  
  v1 = new PVector(100.0, 200.0);
  v2 = new PVector(100.0, 100.0);
  r = PVector.add(v1, v2);
  
  System.out.println("v1: " + v1 + ", v2: " + v2 + ", r: " + r);
   
  colorMode(HSB, 239, 240, 240);
  size(800, 600);
  
  listaVetores = new ArrayList<PVector>();
  
  // width, height
  float x = 0;
  float y = 0;
  for (int i = 0; i < 50; i++) {
    x = random(0, width);
    y = random(0, height);
    
    listaVetores.add(new PVector(x, y));
  }
  
  listaMeteoros = new ArrayList<Meteoro>();
  PVector direcao;
  float velocidade;
  float tamanho;
  color cor;
 
  for (int i = 0; i < 50; i++) {
    x = random(0, width);
    y = random(0, height);
    direcao = PVector.fromAngle(random(0, TWO_PI));
    velocidade = random(0.1, 3);
    tamanho = random(15, 25);
    cor = color(random(0, 239), 240, 120);
    
    listaMeteoros.add(new Meteoro(x, y, direcao, velocidade, tamanho, cor));
  }
}

void draw() {
  background(0, 0, 240);
  
  stroke(0);
  fill(153, 217, 234);
  ellipse(v1.x, v1.y, 20, 20);
  
  fill(249, 141, 138);
  ellipse(v2.x, v2.y, 20, 20);
  
  fill(210, 138, 249);
  ellipse(r.x, r.y, 20, 20); 
  
  //fill(255);
  //float diametro = 0;
  //for (PVector v: listaVetores) {
  //  diametro = random(15, 25);
  //  ellipse(v.x, v.y, diametro, diametro);
  //}
  
  for (Meteoro m: listaMeteoros) {
    m.mover();
    m.desenhar();
  }
}