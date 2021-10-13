package fr.namelessfox.dartPyStats;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import fr.namelessfox.dartPyStats.repository.DartCaseRepository;
import fr.namelessfox.dartPyStats.serial.SerialInput;

@SpringBootApplication
public class DartPyStatsApplication implements CommandLineRunner{

	private SerialInput serialInput;
		
	@Autowired
	private DartCaseRepository dartCaseRepository;
	public static void main(String[] args) {
        SpringApplication.run(DartPyStatsApplication.class, args);
    }
 
    @Override
    public void run(String... args) throws Exception 
    {       
		System.out.println("Starting Spring Boot Application");
		serialInput = new SerialInput(dartCaseRepository);
		serialInput.startSerialReading();
		
    }
}
