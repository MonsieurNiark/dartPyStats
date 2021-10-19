#define NUM_PINS 17

// pin definitions
#define P_YELLOW 44
#define P_ORANGE 45
#define P_RED 46
#define P_BROWN 47
#define P_BLACK 48
#define P_WHITE 49
#define P_GREY 50
#define P_PURPLE 51
#define P_BLUE 52
#define P_GREEN 53



#define LOW_GREEN A0
#define LOW_WHITE A1
#define LOW_YELLOW A2
#define LOW_RED A3
#define LOW_ORANGE A4
#define LOW_PURPLE A5
#define LOW_BROWN A6

int masterLines = 10; //Change here to the number of lines of your Master Layer
int slaveLines = 7; //Change here to the number of lines of your Slave Layer
int matrixMaster[] =  {P_ORANGE, P_RED, P_BROWN, P_BLACK, P_WHITE, P_GREY, P_PURPLE, P_BLUE, P_GREEN, P_YELLOW}; //Put here the pins you connected the lines of your Master Layer 
int matrixSlave[] = {LOW_GREEN, LOW_WHITE,LOW_YELLOW, LOW_RED, LOW_ORANGE, LOW_PURPLE, LOW_BROWN}; //Put here the pins you connected the lines of your Slave Layer
int result;
void setup() {     
    Serial.begin(9600);     
    Serial.println("OpenDarts"); //This line is not necessary, is just here for debug purposes
    for(int i = 0; i < slaveLines; i++){         
        pinMode(matrixSlave[i], INPUT);
        digitalWrite(matrixSlave[i], HIGH);     
    }
   for(int i = 0; i < masterLines; i++){         
       pinMode(matrixMaster[i], OUTPUT);         
       //digitalWrite(matrixMaster[i], HIGH);     
   }
}
void loop() {     
    for(int i = 0; i < masterLines; i++){         
        digitalWrite(matrixMaster[i], HIGH);  
        //Serial.println(i);       
        for(int j = 0; j < slaveLines; j++){
          /*
                         Serial.print(j);                 
                Serial.print(",");
                           Serial.println(analogRead(matrixSlave[j]));
                         */  
            //Serial.println(result);
            if(digitalRead(matrixSlave[j]) == 1){
                Serial.print("%");
                Serial.print(j);                 
                Serial.print(",");                 
                Serial.print(i);
                Serial.println("$");
                //Serial.println(result);
                                 
                delay(200);          
                      
                break;             
            }         
        }
        //delay(100);
        //Serial.println("------");         
        digitalWrite(matrixMaster[i], LOW);     
    } 
}
