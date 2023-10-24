package test;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Test test = new Test();
		
		String testString ="";
		
		System.out.println("testString : " + testString);
		

		
	}
	public String superstring(String a) {
		String result = a + "슈퍼";
		
		Test test = new Test();
		test.childstring(a);
		
		return result;
	}
	
	public String childstring(String b) {
		String result = b + "상속";
		System.out.println(result);
		return result;
	}
}
