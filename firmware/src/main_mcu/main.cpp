#include <Arduino.h>
#include <tw_master.h>

void setup(void)
{
  Serial.begin(19200);
  Serial.println("Hello!");
  tw_master_init();
}

static uint8_t databuf[] = {0xDE, 0xAD, 0xBE, 0xEF};

void loop()
{
  Serial.println("Sending...");
  tw_write(0x33, databuf, sizeof(databuf));
  delay(2000);
}