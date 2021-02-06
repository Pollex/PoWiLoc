#include <Arduino.h>
#include <tw_slave.h>

void setup(void)
{
  tw_slave_init(0x33, false);
}

void loop(void)
{
}