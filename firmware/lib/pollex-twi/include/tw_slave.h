#if !defined(_TW_SLAVE_H_)
#define _TW_SLAVE_H_

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C"
{
#endif

  void tw_slave_init(uint8_t addr, bool general_call);

#ifdef __cplusplus
}
#endif

#endif // _TW_SLAVE_H_