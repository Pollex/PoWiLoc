#if !defined(_TW_MASTER_H_)
#define _TW_MASTER_H_

#include <stdint.h>

/**
 * @brief tw_ctrl is fired when a new TWI event occurs
 * 
 * tw_ctrl (or TWI Controller) is used to gain control over
 * the non-blocking TWI interface.
 * 
 */
typedef void(tw_ctrl)(uint8_t status);

#ifdef __cplusplus
extern "C"
{
#endif

  void tw_master_init();
  void tw_write(uint8_t addr, uint8_t *data, uint8_t data_size);

#ifdef __cplusplus
}
#endif

#endif // _TW_MASTER_H_