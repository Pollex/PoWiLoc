#include "tw_master.h"
#include <util/twi.h>
#include <avr/interrupt.h>
#include <stdbool.h>

/*
TWCR = TW Control Register
TWDR = TW Address/Data Shift Register
TWBR = TW Bitrate Register
TWAR = TW Address Register
TWSR = TW Status Register
*/

tw_ctrl *_ctrl = 0;
uint8_t _addr = 0x0;
uint8_t *_data_ptr = 0;
uint8_t _data_size = 0;

//
// Register utilities
//
void _done(void)
{
  TWCR |= 1 << TWINT;
}

void _start(void)
{
  TWCR |= 1 << TWSTA;
}

void _unstart(void)
{
  TWCR &= ~(1 << TWSTA);
}

void _stop(void)
{
  TWCR |= 1 << TWSTO;
}

//
// Private functions
//

void _write_next_data_byte(void)
{
  if (_data_size-- > 0)
  {
    TWDR = *(_data_ptr++);
  }
  else
  {
    _stop();
  }
  _done();
}

//
// Interrupt listeners
//

void _on_start(void)
{
  TWDR = _addr;
  // Unset the start condition bit to avoid a second start condition
  _unstart();
  _done();
}

void _on_repeated_start(void)
{
  TWDR = _addr;
  // Unset the start condition bit to avoid a second start condition
  _unstart();
  _done();
}

void _on_slave_addr_ack(void)
{
  _write_next_data_byte();
  _done();
}

void _on_slave_addr_nack(void)
{
  _stop();
  _done();
}

void _on_tx_data_ack(void)
{
  _write_next_data_byte();
  _done();
}

void _on_tx_data_nack(void)
{
  _stop();
  _done();
}

void _on_rx_data_ack(void)
{
  _done();
}

void _on_rx_data_nack(void)
{
  _done();
}

void _on_arbitration_lost(void)
{
  _done();
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
  case TW_START:
    _on_start();
    break;
  case TW_REP_START:
    _on_repeated_start();
    break;
  case TW_MT_SLA_ACK:
    _on_slave_addr_ack();
    break;
  case TW_MT_SLA_NACK:
    _on_slave_addr_nack();
    break;
  case TW_MT_DATA_ACK:
    _on_tx_data_ack();
    break;
  case TW_MT_DATA_NACK:
    _on_tx_data_nack();
    break;
  case TW_MT_ARB_LOST | TW_MR_ARB_LOST:
    _on_arbitration_lost();
    break;
  case TW_MR_SLA_ACK:
    _on_slave_addr_ack();
    break;
  case TW_MR_SLA_NACK:
    _on_slave_addr_nack();
    break;
  case TW_MR_DATA_ACK:
    _on_rx_data_ack();
    break;
  case TW_MR_DATA_NACK:
    _on_rx_data_nack();
    break;
  case TW_NO_INFO:
    _stop();
    _done();
    break;
  case TW_BUS_ERROR:
    _stop();
    break;

  default:
    _stop();
    break;
  }
}

//
// Public functions
//

void tw_master_init()
{
  PRR &= ~(1 << PRTWI);
  TWSR = 0; // Set prescaler to 1;
  TWBR = 50;
  TWCR = _BV(TWEN) | _BV(TWIE);
}

void tw_write(uint8_t addr, uint8_t *data, uint8_t data_size)
{
  _addr = (addr << 1) | TW_WRITE;
  _data_ptr = data;
  _data_size = data_size;
  _start();
}