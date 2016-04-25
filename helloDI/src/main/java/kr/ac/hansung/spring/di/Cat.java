package kr.ac.hansung.spring.di;

public class Cat implements AnimalType {
	String myName;

	public void setMyName(String myName) {
		this.myName = myName;
	}

	public void sound() {
		System.out.println("Cat name="+myName+": "+"야옹~");
	}

}
