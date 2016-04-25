package kr.ac.hansung.spring.di;

public class Dog implements AnimalType {
	
	String myName;
	
	public void setMyName(String myName) {
		this.myName = myName;
	}

	public void sound() {
		//interface에서 sound()를 정의했으니 구현하자
		System.out.println("Dog name="+myName+": "+"멍멍");
	}

}
