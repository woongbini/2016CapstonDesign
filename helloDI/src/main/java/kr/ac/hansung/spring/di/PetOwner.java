package kr.ac.hansung.spring.di;

public class PetOwner {
	
	//인터페이스에 대한 타입으로 지정
	private AnimalType animal;
	
	//constructor를 통해 주입
	public PetOwner(AnimalType animal) {
		this.animal = animal;
	}

	public void play() {
		//animal 은 dog가 될수도 있고 cat이 될수도 있음
		animal.sound();
	}
}
