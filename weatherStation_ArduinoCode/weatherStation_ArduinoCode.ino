#include <ESP8266WiFi.h>
#include <Adafruit_Sensor.h>
#include <DHT.h>
#include <DHT_U.h>

#define DHTPin D4
#define DHTTYPE DHT22

DHT dht(DHTPin,DHTTYPE);

const char[] ssid = "myNetworkName";
const char[] password = "myNetworkPassword";

int status = WL_IDLE_STATUS;

char server[]= "www.petar-petrov.com"

String postData1;
String postData2;
String postVariable1 = "Temperature(°C)= ";
String postVariablr2 = "Humidity in % = ";

WiFiClient client;

void setup() {
Serial.begin(115200);
  delay(100);

  pinMode(DHTPin,INPUT);
  dht.begin();
 

  while(status()!=WL_CONNECTED){
    Serial.println("Connecting to ");
    Serial.println(ssid);
    status = WiFi.begin(ssid, password);
    delay(1000);
}
    Serial.print("SSID: ");
    Serial.println(WiFi.SSID());
    IPAddress ip = WiFi.localIP();
    IPAddress gateway = WiFi.gatewayIP();
    Serial.print("Got IP: ");
    Serial.print(ip);

}
void loop() {
dhtObject.read(DHTPin);
delay(100);
float temperature = dhtObject.temperature;
dhtObject.read(DHTPin);
float humidity = dht.Object.humidity;

postData1 = postVariable1 + temperature;
postData2 = postVariable2 + humidity;

if(client.connect(server, 80)){
client.println("POST /apiary/api.php HTTP/1.1");
client.println("Host: www.petar-petrov.com");
client.println("Content-Type: application/x-www-form-urlencoded");
client.println("Content-Length");
client.println(postData1.length());
client.println(postData2.length());
client.println();
client.print(postData1);
client.print(postData2);

}

if(client.connected)){
  client.stop();
  }
  Serial.println(postData1);
  Serial.println(postData2);

  delay(3000);
}
