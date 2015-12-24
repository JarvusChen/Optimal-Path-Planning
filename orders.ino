//　基本藍牙控制方向

#include <SoftwareSerial.h>

SoftwareSerial BTSerial(3,2); // TX | RX
byte val = 0;

//Servo servoRight;
//Servo servoLeft;
int i = 0;
void setup() 
{
  //Serial.println("Enter AT commands:");
  pinMode(6,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);

  Serial.begin(9600);  
  BTSerial.begin(38400);  // HC-05 default speed in AT command more
}

void loop()
{

  // Keep reading from HC-05 and send to Arduino Serial Monitor
  if (BTSerial.available())
  {
    Serial.write(BTSerial.read());
    val = BTSerial.read();
    Serial.println(val);
    if (val == 1)
    {
      Serial.println("forward");
      LEDsignal();
      forward(29);
    }
    if (val == 2)
    {
      Serial.println("backward");
      LEDsignal();
      backward();
    }
    if (val == 3)
    {
      Serial.println("stop");
      LEDsignal();
      //bestop();
    }
    if (val == 4)
    {
      Serial.println("turnleft45");
      LEDsignal();
      turnleft45();
    }
    if (val == 5)
    {
      Serial.println("turnleft90");
      LEDsignal();
      turnleft90();
    }
     if (val == 6)
    {
      Serial.println("turnright45");
      LEDsignal();
      turnright45();
    }
    if (val == 7)
    {
      Serial.println("turnright90");
      LEDsignal();
      turnright90();
    }
     if (val == 8)
    {
      Serial.println("forward");
      LEDsignal();
      forward(38);
    }
  }
  // Keep reading from Arduino Serial Monitor and send to HC-05
  if (Serial.available())
  {
    BTSerial.write(Serial.read());
  }
}
int LEDsignal()
{
  digitalWrite(6,1);
  delay(500);
  digitalWrite(6,0);
}
void forward(int time)
{
  for (i = 0;i<time;i++)
  {
    digitalWrite(12,1);
    delayMicroseconds(1390);
    digitalWrite(12,0);
    delay(20);
    digitalWrite(13,1);
    delayMicroseconds(1700);
    digitalWrite(13,0);
    delay(20);
  }
}
int backward()
{
  for (i = 0;i<34;i++)
  {
    digitalWrite(12,1);
    delayMicroseconds(1700);
    digitalWrite(12,0);
    delay(20);
    digitalWrite(13,1);
    delayMicroseconds(1330);
    digitalWrite(13,0);
    delay(20);
  }
}
int turnleft45()
{
  for (i = 0;i<6;i++)
  {
    digitalWrite(12,1);
    delayMicroseconds(1420);
    digitalWrite(12,0);
    delay(20);
    digitalWrite(13,1);
    delayMicroseconds(1420);
    digitalWrite(13,0);
    delay(20);
  }
}
int turnleft90()
{
  for (i = 0;i<13;i++)
  {
    digitalWrite(12,1);
    delayMicroseconds(1420);
    digitalWrite(12,0);
    delay(20);
    digitalWrite(13,1);
    delayMicroseconds(1420);
    digitalWrite(13,0);
    delay(20);
  }
}
int turnright45()
{
  for (i = 0;i<6;i++)
  {
    digitalWrite(12,1);
    delayMicroseconds(1650);
    digitalWrite(12,0);
    delay(20);
    digitalWrite(13,1);
    delayMicroseconds(1650);
    digitalWrite(13,0);
    delay(20);
  }
}
int turnright90()
{
  for (i = 0;i<13;i++)
  {
    digitalWrite(12,1);
    delayMicroseconds(1650);
    digitalWrite(12,0);
    delay(20);
    digitalWrite(13,1);
    delayMicroseconds(1650);
    digitalWrite(13,0);
    delay(20);
  }
}
