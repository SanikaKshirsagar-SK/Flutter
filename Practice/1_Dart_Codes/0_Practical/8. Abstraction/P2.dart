abstract class Test{
  void bulid();
}

class Test1 extends Test{
  void bulid(){
    // super.build(); //Error: Superclass has no method named 'build'.
  }
}
main(){}