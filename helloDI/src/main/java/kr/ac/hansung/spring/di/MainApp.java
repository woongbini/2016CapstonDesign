package kr.ac.hansung.spring.di;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {

	public static void main(String[] args) {
		//spring conatiner 만드는 작업이 먼저되야
		ClassPathXmlApplicationContext context = 
				new ClassPathXmlApplicationContext("kr/ac/hansung/spring/di/beans/animal.xml");
		
		PetOwner person = (PetOwner) context.getBean("petOwner");
		person.play();
		
		context.close();
		
	}

}
