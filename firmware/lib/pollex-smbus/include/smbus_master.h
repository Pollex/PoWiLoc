#if !defined(_SMBUS_MASTER_H_)
#define _SMBUS_MASTER_H_

#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

  void smbm_quick_command(uint8_t addr, uint8_t rw);

#ifdef __cplusplus
}
#endif

#endif // _SMBUS_MASTER_H_