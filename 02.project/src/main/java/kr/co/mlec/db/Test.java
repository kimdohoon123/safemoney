package kr.co.mlec.db;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import kr.co.mlec.main.controller.MainController;



public class Test {
	public static void main(String[] args) {
		try {
			ApplicationContext context = 
					new GenericXmlApplicationContext(
							"config/spring/repository-context.xml"
			);
			MainController controller = context.getBean(MainController.class);
			controller.Main(null, null);
			
			/*controller.retrieveBoard();*/
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}











