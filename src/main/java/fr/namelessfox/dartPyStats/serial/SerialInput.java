package fr.namelessfox.dartPyStats.serial;


import java.util.Optional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import fr.namelessfox.dartPyStats.domain.DartCase;
import fr.namelessfox.dartPyStats.repository.DartCaseRepository;
import jssc.SerialPort;
import jssc.SerialPortException;
import jssc.SerialPortList;

@Component
public class SerialInput {

	private static Logger logger = LogManager.getLogger(SerialInput.class);
	
	
	private DartCaseRepository dartCaseRepository;
	
	private String dataReading = "";
	private String dataParsed = "";
	
	private SerialPort serialPort;
	
	private boolean isWriting = false;
	
	public SerialInput(DartCaseRepository dartCaseRepository) {
		this.dartCaseRepository = dartCaseRepository;
		String[] portNames = SerialPortList.getPortNames();
	    for(int i = 0; i < portNames.length; i++){
	        logger.info(portNames[i]);
	       
	        if(portNames[i].contains("ACM0") || portNames[i].contains("usbmodem14201")) {
	        	
	        	serialPort = new SerialPort(portNames[i]);
	        }
	    }
	}
	
	public void startSerialReading() {
		logger.info("Port : {}", serialPort.getPortName());
	    try {
	        serialPort.openPort();//Open serial port
	        serialPort.setParams(9600, 8, 1, 0);//Set params.
	        while(true) {
	        	dataReading = serialPort.readString(1);
	        	
	        	if(dataReading != null) {
	        		logger.debug(dataReading);
	        		if(dataReading.equals("%")) {
	        			logger.debug("Start reading");
	        			isWriting = true;

	        		}
	        		if(isWriting) {
	        			if(dataReading.equals("$")) {
	        				logger.debug("Stop reading");
	        				logger.debug("Result: "+dataParsed);
	        				logger.debug(Character.getNumericValue(dataParsed.charAt(0)));

	        				logger.debug(Character.getNumericValue(dataParsed.charAt(2)));
	        				Optional<DartCase> caseInput = dartCaseRepository.findDartCaseByXY(Character.getNumericValue(dataParsed.charAt(0)),
	        						Character.getNumericValue(dataParsed.charAt(2)));
	        				if(caseInput.isPresent()) {
	        					logger.info("Hit {} for {} points !", caseInput.get().getLabel(), caseInput.get().getValue());
	        				}
	        				dataParsed = "";
	        				isWriting = false;
	        			} else if (!dataReading.equals("%")){
	        				dataParsed = dataParsed + dataReading;
	        			}
	        		}
	        	}
	        }
	        
	       
	    }
	    catch (SerialPortException ex) {
	        logger.error(ex);
	    }
	}
}
