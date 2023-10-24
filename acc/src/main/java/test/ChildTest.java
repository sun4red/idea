package test;

public class ChildTest extends Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("자식 클래스 실행");
		
		
		ChildTest c = new ChildTest();
		System.out.println(c.childstring("상속테스트:자식클래스"));
		System.out.println(c.superstring("상속테스트:부모클래스"));
		

		
	}

	public String childstring(String b) {
		String result = b + "child";

		System.out.println(result);
		super.superstring("testing");
		return result;
	}

}
