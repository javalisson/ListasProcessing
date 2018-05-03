import java.util.List;
import java.util.LinkedList;
import java.util.Collections;

void setup() {
  List<Integer> listaInteiros = new ArrayList<Integer>();
  listaInteiros.add(1);
  // System.out.println(listaInteiros.get(0));
  
  List<String> listaPalavras = new ArrayList<String>();
  listaPalavras.add("Olá");
  listaPalavras.add("Mundo");
  listaPalavras.add("foo");
  listaPalavras.add("bar");
  listaPalavras.add("baz");
  listaPalavras.add("42");
  
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
  
  PVector v1 = new PVector(1.0, 2.0);
  PVector v2 = new PVector(1.0, -1.0);
  PVector r = PVector.add(v1, v2);
  
  System.out.println("v1: " + v1 + ", v2: " + v2 + ", r: " + r); 
}