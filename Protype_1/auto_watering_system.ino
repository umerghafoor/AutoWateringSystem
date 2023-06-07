#define SOIL_MOISTURE_PIN A0
#define LED_PIN_2 2
#define LED_PIN_3 3
#define LED_PIN_4 4
#define LED_PIN_5 5
#define LED_PIN_6 6
#define PUMP_1 7

void setup() 
{
  pinMode(LED_PIN_2, OUTPUT);
  pinMode(LED_PIN_3, OUTPUT);
  pinMode(LED_PIN_4, OUTPUT);
  pinMode(LED_PIN_5, OUTPUT);
  pinMode(LED_PIN_6, OUTPUT);
  pinMode(PUMP_1, OUTPUT);
  Serial.begin(9600);
  Serial.print("Senser Started");
}

void loop() 
{
  int soilMoistureValue = analogRead(SOIL_MOISTURE_PIN);

  int mappedMoisture = map(soilMoistureValue,  564, 269, 0, 100);

  if (mappedMoisture > 100) 
  {
    mappedMoisture = 100;
  } 
  else if (mappedMoisture < 0) 
  {
    mappedMoisture = 0;
  }

  Serial.print("Soil moisture: ");
  Serial.print(mappedMoisture);
  Serial.println("%");

//  mappedMoisture=50;
  if (mappedMoisture < 20) //red led
  {
    digitalWrite(LED_PIN_2, HIGH);
    digitalWrite(PUMP_1, HIGH);
  }
  else if (mappedMoisture < 40) //yellow
  {
    digitalWrite(LED_PIN_3, HIGH);
 //   digitalWrite(PUMP_1, HIGH);
  }
  else if (mappedMoisture < 60)
  {
    digitalWrite(LED_PIN_4, HIGH);
  }
  else if (mappedMoisture < 80)
  {
    digitalWrite(LED_PIN_5, HIGH);
  }
  else if (mappedMoisture <= 100)
  {
    digitalWrite(LED_PIN_6, HIGH);
  }
  
  // digitalWrite(LED_PIN_2, HIGH);
  // delay(100);
  // digitalWrite(LED_PIN_3, HIGH);
  // delay(100);
  // digitalWrite(LED_PIN_4, HIGH);
  // delay(100);
  // digitalWrite(LED_PIN_5, HIGH);
  // delay(100);
  // digitalWrite(LED_PIN_6, HIGH);
  // delay(100);
  // digitalWrite(LED_PIN_2, LOW);
  // delay(100);
  // digitalWrite(LED_PIN_3, LOW);
  // delay(100);
  // digitalWrite(LED_PIN_4, LOW);
  // delay(100);
  // digitalWrite(LED_PIN_5, LOW);
  // delay(100);
  // digitalWrite(LED_PIN_6, LOW);

  delay(1000);
  digitalWrite(LED_PIN_2, LOW);
  digitalWrite(LED_PIN_3, LOW);
  digitalWrite(LED_PIN_4, LOW);
  digitalWrite(LED_PIN_5, LOW);
  digitalWrite(LED_PIN_6, LOW);
  delay(100);
  digitalWrite(PUMP_1, LOW);

}