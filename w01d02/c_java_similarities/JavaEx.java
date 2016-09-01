class JavaEx {

  public static void main(String args[]) {
    
    char  c1 = 'a';

    short  s1 = 0;
    int    i1 = 0;
    long   l1 = 0;
    
    float  f1 = 0;
    double d1 = 0;

    System.out.printf("Hi! Number %d\n", 5);
    
    if(3 < 4) {
      System.out.printf("This works.\n");
    }
    
    if(3 > 4) {
      System.out.printf("This works.\n");
    } else {
      System.out.printf("This does not work.\n");
    }
    
    int counter = 0;
    while (counter < 10) {
      System.out.printf ("%d ", counter++);
    }
    System.out.printf ("\n");
    
    int x1 = 0;
    do {
      System.out.printf ("%d ", x1++);
    } while (x1 < 10);
    System.out.printf ("\n");
    
    for (int x2 = 0; x2 < 10; x2++){
      System.out.printf ("%d ", x2);
    }
    System.out.printf ("\n");
  }
  
  int add_values (int x, int y) {
    return x + y;
  }
  
}