import java.math.BigInteger;


int e = 2;
int d = 2;
int k = 0;
int x;

int p = 61;
int q = 31;
int n = p*q;
int R;
int phi = (p-1)*(q-1);

BigInteger c;
BigInteger m;
int i =0;

void setup() {
  size(400, 600);
  println("N", n, "phi", phi, "e % phi", e % phi);
  frameRate(1000000);
  while (phi % e != 1 && e > 1 && e < phi) {
    while (phi % e > 0) {
      R = e % phi;
      e = phi;
      phi = R;
    }
    e++;
  }
  println("e", e);
  println((pow(e, -1)%phi));

  d = (1+k*phi)/e;
  while (d % 1 != 0 || k == e || (k*e) % phi != 1) {

    d = (1+k*phi)/e;
    k++;
    //println("HEJ");
    println("k", k);
  }
  d = k;
  println("d", d);
}
void draw() {
}
BigInteger temp;
BigInteger r;
BigInteger e1 = BigInteger.valueOf(e);
BigInteger d1 = BigInteger.valueOf(d);
BigInteger n1 = BigInteger.valueOf(p*q);
void keyPressed() {
  background(0);
  textSize(50);
  m = BigInteger.valueOf(key);
  r = m.pow(e);
  println("m^e", r);
  c = r.mod(n1);
  r = c.pow(d);
  temp = r.mod(n1);
  println("key", m, "e", e, "n", n, "d", d, "m^e1", r, "m mod(n)", c, "c mod(n)", temp);
  text(c.intValue(), 40, 40);
  text(char(c.intValue()), 40, 100);

  text(temp.intValue(), 200, 40);
  text(char(temp.intValue()), 200, 100);
}
