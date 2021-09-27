
int convPin = 2;

void setup() {
  // put your setup code here, to run once:
  pinMode(convPin, OUTPUT);
  digitalWrite(convPin, 1);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(convPin, 1);
  digitalWrite(convPin, 0);
  digitalWrite(convPin, 1);
  delay(1000);
}
