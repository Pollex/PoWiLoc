#include "tw_slave.h"
#include <util/twi.h>
#include <avr/interrupt.h>

/*
TWCR = TW Control Register
TWDR = TW Address/Data Shift Register
TWBR = TW Bitrate Register
TWAR = TW Address Register
TWSR = TW Status Register
*/

static uint8_t _addr = 0b1110000;
static bool _gce = false;

//
// Helper functions
//

void _done(void)
{
  TWCR |= 1 << TWINT;
}

/**
 * The Two Wire Interface interrupt vector
 * This interrupt is fired everytime something has happened on the I2C bus.
 * 
 * The TWINT flag is set in the following situations:
 *  After the TWI has transmitted a START/REPEATED START condition.
 *  After the TWI has transmitted SLA+R/W.
 *  After the TWI has transmitted an address byte.
 *  After the TWI has lost arbitration.
 *  After the TWI has been addressed by own slave address or general call.
 *  After the TWI has received a data byte.
 *  After a STOP or REPEATED START has been received while still addressed as a
 *    slave.
 *  When a bus error has occurred due to an illegal START or STOP condition.
 * 
 * @reference ATmega328P Datasheet P.181 21.5.5 Control Unit
 */
ISR(TWI_vect)
{
  // Always clear the Interrupt Flag, otherwise the TWI peripheral assumes the
  // interrupt is still being handled and the SCL will be pulled low forever.
  // The interrupt flag can be cleared using `_done();`

  switch (TW_STATUS)
  {
  case TW_SR_SLA_ACK:
    break;
  case TW_ST_SLA_ACK:
    break;
  case TW_SR_GCALL_ACK:
    break;
  case TW_ST_ARB_LOST_SLA_ACK:
    break;
  case TW_ST_DATA_ACK:
    break;
  case TW_ST_DATA_NACK:
    break;
  case TW_ST_LAST_DATA:
    break;
  case TW_SR_ARB_LOST_SLA_ACK:
    break;
  case TW_SR_ARB_LOST_GCALL_ACK:
    break;
  case TW_SR_DATA_ACK:
    break;
  case TW_SR_DATA_NACK:
    break;
  case TW_SR_GCALL_DATA_ACK:
    break;
  case TW_SR_GCALL_DATA_NACK:
    break;
  case TW_SR_STOP:
    break;
  case TW_NO_INFO:
    break;
  case TW_BUS_ERROR:
    break;

  default:
    break;
  }

  _done();
}

//
// Public functions
//

void tw_slave_init(uint8_t addr, bool general_call)
{
  _addr = addr;
  _gce = general_call;
  TWAR = (addr << 1) | general_call;
  TWCR = _BV(TWEA) | _BV(TWIE) | _BV(TWEN);
}