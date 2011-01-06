
/*=============================================================================
**                                 GEENSYS
**                      Proprietary - Copyright (C) 2009
**-----------------------------------------------------------------------------
** Supported MCUs      : MCU independent
** Supported Compilers : Compiler independent
**-----------------------------------------------------------------------------
** File name         : Com_Cfg.c
**
** Module name       : AUTOSAR COM
**
** Requirement specification : AUTOSAR_SWS_COM.pdf
**
** Summary: Configuration pre-compile-time parameters of Autosar COM module
**          (VARIANT-PRE-COMPILE)
**
**= History ===================================================================
** Generation date: Mon Nov 29 09:29:49 CET 2010
=============================================================================*/
/*=============================================================================
**
**                 AUTOMATICALLY GENERATED FILE : DO NOT EDIT
**
=============================================================================*/
        
/*****************************************************************************/
/* INCLUSIONS                                                                */
/*****************************************************************************/
#include "ComStack_Types.h"
#include "Com_Cfg.h"
#include "Com_Cbk.h"

#include "Cdd_Common_Bsw.h"


/*****************************************************************************/
/* DEFINITION OF CONFIGURATION DEPENDENT DATA                                */
/*****************************************************************************/
#define COM_START_SEC_VAR_NOINIT_BOOLEAN
#include "MemMap.h"
/* Signal Value */


#define COM_STOP_SEC_VAR_NOINIT_BOOLEAN
#include "MemMap.h"


#define COM_START_SEC_CONST_BOOLEAN
#include "MemMap.h"
/* Signal Init Values */



/* Signal Invalid Values */


#define COM_STOP_SEC_CONST_BOOLEAN
#include "MemMap.h"

#define AUTOSAR_START_COMSTACKDATA_8BIT
#include "MemMap.h"
/* Ipdu Values */

STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue0[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue1[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue2[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue3[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue4[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue5[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue6[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue7[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue8[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue9[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue10[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue11[2];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue12[4];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue13[6];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue14[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue15[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue16[1];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue17[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue18[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue19[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue20[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue21[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue22[2];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue23[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue24[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue25[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue26[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_RxIpduValue27[8];


STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue0[1];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue1[1];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue2[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue3[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue4[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue5[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue6[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue7[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue8[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue9[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue10[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue11[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue12[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue13[4];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue14[4];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue15[5];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue16[1];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue17[2];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue18[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue19[2];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue20[1];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue21[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue22[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue23[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue24[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue25[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue26[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue27[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue28[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue29[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue30[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue31[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue32[8];
STATIC VAR(uint8, AUTOSAR_COMSTACKDATA)  Com_TxIpduValue33[8];
#define AUTOSAR_STOP_COMSTACKDATA_8BIT
#include "MemMap.h"

#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
/* Signal Value */

STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue2[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue5[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue6[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue7[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue8[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue12[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue15[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue16[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue17[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue18[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue19[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue20[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue21[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue23[1];
STATIC VAR(sint8, COM_VAR_NOINIT)    Com_SignalValue24;
STATIC VAR(sint8, COM_VAR_NOINIT)    Com_SignalValue25;
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue26[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue27[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_SignalValue28[1];

STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue0[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue1[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue2[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue3[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue4[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue5[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue6[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue7[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue11[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue12[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue13[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue14[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue15[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue16[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue17[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue18[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue19[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue20[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue21[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue22[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue24[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue25[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue26[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue27[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue28[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue33[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue34[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue35[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue36[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue37[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue38[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue42[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue43[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue47[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue48[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue52[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue53[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue54[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue55[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue56[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue57[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue58[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue59[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue60[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue61[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue62[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue63[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue64[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue65[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue78[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue79[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue80[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue81[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue82[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue83[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue84[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue85[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue98[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue99[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue100[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue101[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue102[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue103[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue104[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue105[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue106[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue107[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue108[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue109[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue110[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue111[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue112[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue113[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue114[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue115[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue116[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue117[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue118[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue119[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue120[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue121[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue122[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue123[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue124[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue125[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue126[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue127[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue128[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue129[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue130[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue131[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue132[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue133[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue134[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue135[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue136[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue137[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue138[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue139[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue140[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue141[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue142[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue143[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue144[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue145[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue146[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue147[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue148[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue149[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue150[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue151[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue152[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue153[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue154[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue155[2];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue156[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue157[6];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue158[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue159[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue160[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue161[5];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue162[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue163[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue164[6];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue165[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue166[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue167[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue168[5];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue169[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue170[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue171[6];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue172[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue173[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue174[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue175[5];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue176[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue177[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue178[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue179[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue180[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue181[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue182[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue183[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue184[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue185[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue186[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue190[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue191[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue192[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue193[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue194[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue195[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue196[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue197[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue198[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue199[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue200[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue201[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue202[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue203[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue204[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue205[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue206[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue207[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue208[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue209[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue210[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue211[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue212[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue213[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue214[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue215[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue216[1];
STATIC VAR(sint8, COM_VAR_NOINIT)    Com_GroupSignalValue217;
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue218[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue219[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue220[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue221[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue222[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue223[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue226[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue227[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue230[4];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue231[4];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue233[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue235[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue236[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue237[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue239[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue240[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue241[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue242[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue243[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue244[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue245[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue246[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue247[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue248[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue249[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue250[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue251[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue252[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue253[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue254[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue255[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue256[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue257[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue258[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue259[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue260[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue261[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue262[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue263[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue264[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue265[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue266[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue267[1];
STATIC VAR(uint8, COM_VAR_NOINIT)    Com_GroupSignalValue268[1];
#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"

#define COM_START_SEC_CONST_8BIT
#include "MemMap.h"
/* Signal Init Values */



STATIC CONST(sint8, COM_CONST)   Com_SINT8_SignalInitValue0 = 0;
STATIC CONST(sint8, COM_CONST)   Com_SINT8_SignalInitValue1 = 0;

	
	
STATIC CONST(uint8, COM_CONST)   Com_UINT8_N_SignalInitValue<%i()%>[<%varGet("Length")%>] =
    {
      0x0
        ,      0x0
        ,      0x0
        ,      0x0
        ,      0x0
        ,      0x0
    };
	
	
STATIC CONST(uint8, COM_CONST)   Com_UINT8_N_SignalInitValue<%i()%>[<%varGet("Length")%>] =
    {
      0x0
        ,      0x0
        ,      0x0
        ,      0x0
        ,      0x0
        ,      0x0
    };
	
	
STATIC CONST(uint8, COM_CONST)   Com_UINT8_N_SignalInitValue<%i()%>[<%varGet("Length")%>] =
    {
      0x23000000
        ,      0x20000000
        ,      0x10000000
        ,      0x0
    };

/* Signal Invalid Values */




#define COM_STOP_SEC_CONST_8BIT
#include "MemMap.h"

#define COM_START_SEC_VAR_NOINIT_16BIT
#include "MemMap.h"
/* Signal Value */

STATIC VAR(uint16, COM_VAR_NOINIT) Com_SignalValue0;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_SignalValue3;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_SignalValue4;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_SignalValue9;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_SignalValue10;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_SignalValue11;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_SignalValue13;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_SignalValue14;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_SignalValue22;

STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue8;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue9;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue10;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue23;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue29;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue31;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue32;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue39;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue40;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue41;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue44;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue45;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue46;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue49;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue50;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue51;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue66;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue67;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue68;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue69;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue70;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue71;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue72;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue73;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue74;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue75;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue76;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue77;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue86;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue87;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue88;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue89;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue90;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue91;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue92;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue93;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue94;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue95;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue96;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue97;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue187;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue188;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue189;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue224;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue225;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue228;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue229;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue232;
STATIC VAR(sint16, COM_VAR_NOINIT) Com_GroupSignalValue234;
STATIC VAR(uint16, COM_VAR_NOINIT) Com_GroupSignalValue238;
#define COM_STOP_SEC_VAR_NOINIT_16BIT
#include "MemMap.h"

#define COM_START_SEC_VAR_NOINIT_32BIT
#include "MemMap.h"
/* Signal Value */

STATIC VAR(uint32, COM_VAR_NOINIT) Com_SignalValue1;

STATIC VAR(sint32, COM_VAR_NOINIT) Com_GroupSignalValue30;
#define COM_STOP_SEC_VAR_NOINIT_32BIT
#include "MemMap.h"


#define COM_START_SEC_CONST_16BIT
#include "MemMap.h"
/* Signal Init Value */


STATIC CONST(uint16, COM_CONST)   Com_UINT16_SignalInitValue0 = 0x0;
STATIC CONST(uint16, COM_CONST)   Com_UINT16_SignalInitValue1 = 0x0;

STATIC CONST(sint16, COM_CONST)   Com_SINT16_SignalInitValue0 = 0;
/* Signal Invalid Values */



#define COM_STOP_SEC_CONST_16BIT
#include "MemMap.h"

#define COM_START_SEC_CONST_32BIT
#include "MemMap.h"
/* Signal Init Value */



STATIC CONST(uint32, COM_CONST)   Com_UINT32_SignalInitValue0 = 0x0;

STATIC CONST(sint32, COM_CONST)   Com_SINT32_SignalInitValue0 = 0;
/* Signal Invalid Values */




#define COM_STOP_SEC_CONST_32BIT
#include "MemMap.h"

/*****************************************************************************/
/* DEFINITION OF CONFIGURATION                                               */
/*****************************************************************************/
#define COM_START_SEC_CONST_UNSPECIFIED
#include "MemMap.h"
/* Ipdu configuration table */

CONST(Com_RxIpduConfigType,COM_CONST) Com_RxIpduConfig[28] =
{
  /* Ipdu 0: F_DataTransferFromUcConfort_Confort_506 */
  {

    /*ValuePtr*/                    Com_RxIpduValue0,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       24,
    /*NextIpduInGroupIdx*/          1,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL,
    /*Unused*/                      0
  }
	,  /* Ipdu 1: F_RightSKAISingleInverterErrorDebug_Chassis_190 */
  {

    /*ValuePtr*/                    Com_RxIpduValue1,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       17,
    /*NextIpduInGroupIdx*/          2,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 2: F_RightSKAISingleInverterData1_Chassis_290 */
  {

    /*ValuePtr*/                    Com_RxIpduValue2,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       18,
    /*NextIpduInGroupIdx*/          3,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 3: F_RightSKAISingleInverterData2_Chassis_390 */
  {

    /*ValuePtr*/                    Com_RxIpduValue3,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       19,
    /*NextIpduInGroupIdx*/          4,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 4: F_RightSKAISingleInverterData3_Chassis_490 */
  {

    /*ValuePtr*/                    Com_RxIpduValue4,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       20,
    /*NextIpduInGroupIdx*/          5,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 5: F_LeftSKAISingleInverterErrorDebug_Chassis_193 */
  {

    /*ValuePtr*/                    Com_RxIpduValue5,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       21,
    /*NextIpduInGroupIdx*/          6,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 6: F_LeftSKAISingleInverterData1_Chassis_293 */
  {

    /*ValuePtr*/                    Com_RxIpduValue6,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       22,
    /*NextIpduInGroupIdx*/          7,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 7: F_LeftSKAISingleInverterData2_Chassis_393 */
  {

    /*ValuePtr*/                    Com_RxIpduValue7,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       23,
    /*NextIpduInGroupIdx*/          8,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 8: F_LeftSKAISingleInverterData3_Chassis_493 */
  {

    /*ValuePtr*/                    Com_RxIpduValue8,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       24,
    /*NextIpduInGroupIdx*/          9,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 9: F_CopleyAccelnetAmplifierConfigurationRxFrame_Tilt_581 */
  {

    /*ValuePtr*/                    Com_RxIpduValue9,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       10,
    /*NextIpduInGroupIdx*/          10,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 10: F_CopleyAccelnetAmplifierPDO1_Tilt_181 */
  {

    /*ValuePtr*/                    Com_RxIpduValue10,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       11,
    /*NextIpduInGroupIdx*/          11,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 11: F_CopleyAccelnetAmplifierPDO2_Tilt_281 */
  {

    /*ValuePtr*/                    Com_RxIpduValue11,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       22,
    /*NextIpduInGroupIdx*/          12,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      2,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL,
    /*Unused*/                      0
  }
	,  /* Ipdu 12: F_CopleyAccelnetAmplifierPDO3_Tilt_381 */
  {

    /*ValuePtr*/                    Com_RxIpduValue12,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       30,
    /*NextIpduInGroupIdx*/          13,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      4,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL,
    /*Unused*/                      0
  }
	,  /* Ipdu 13: F_BoschSteeringWheelSensorData_Tilt_305 */
  {

    /*ValuePtr*/                    Com_RxIpduValue13,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       12,
    /*NextIpduInGroupIdx*/          14,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      6,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 14: F_ACTIA_ErrorWarning_Confort_201 */
  {

    /*ValuePtr*/                    Com_RxIpduValue14,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       7,
    /*NextIpduInGroupIdx*/          15,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 15: F_ACTIA_ShortInfo_Confort_202 */
  {

    /*ValuePtr*/                    Com_RxIpduValue15,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       31,
    /*NextIpduInGroupIdx*/          16,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL,
    /*Unused*/                      0
  }
	,  /* Ipdu 16: F_ACTIA_WakeUp_Confort_221 */
  {

    /*ValuePtr*/                    Com_RxIpduValue16,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       23,
    /*NextIpduInGroupIdx*/          17,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      1,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL,
    /*Unused*/                      0
  }
	,  /* Ipdu 17: F_ACTIA_Data_Confort_251 */
  {

    /*ValuePtr*/                    Com_RxIpduValue17,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       6,
    /*NextIpduInGroupIdx*/          18,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 18: F_BSI_Status_Confort_101 */
  {

    /*ValuePtr*/                    Com_RxIpduValue18,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       13,
    /*NextIpduInGroupIdx*/          19,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 19: F_IHM_Status_Confort_102 */
  {

    /*ValuePtr*/                    Com_RxIpduValue19,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       14,
    /*NextIpduInGroupIdx*/          20,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 20: F_EXT_Status_Confort_103 */
  {

    /*ValuePtr*/                    Com_RxIpduValue20,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       15,
    /*NextIpduInGroupIdx*/          21,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 21: F_CLASDebugData_Confort_110 */
  {

    /*ValuePtr*/                    Com_RxIpduValue21,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       16,
    /*NextIpduInGroupIdx*/          22,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 22: F_TOR_Output_Confort_7FC */
  {

    /*ValuePtr*/                    Com_RxIpduValue22,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       8,
    /*NextIpduInGroupIdx*/          23,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      2,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 23: F_Debug_Reserve_Rx_Confort_7FE */
  {

    /*ValuePtr*/                    Com_RxIpduValue23,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       9,
    /*NextIpduInGroupIdx*/          24,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 24: F_ACTIA_CellVoltage_Confort_203 */
  {

    /*ValuePtr*/                    Com_RxIpduValue24,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       37,
    /*NextIpduInGroupIdx*/          25,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL,
    /*Unused*/                      0
  }
	,  /* Ipdu 25: F_IMMODiagConfiguration_Confort_592 */
  {

    /*ValuePtr*/                    Com_RxIpduValue25,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       25,
    /*NextIpduInGroupIdx*/          26,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 26: F_IMMORcuConfiguration_Confort_593 */
  {

    /*ValuePtr*/                    Com_RxIpduValue26,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       26,
    /*NextIpduInGroupIdx*/          27,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu 27: F_IMMOData_Confort_603 */
  {

    /*ValuePtr*/                    Com_RxIpduValue27,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*FirstElementInIpduIdx*/       27,
    /*NextIpduInGroupIdx*/          COM_IPDU_OUT_IDX,
    /*DeadlineTimerIndex*/          COM_IPDU_OUT_IDX,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
};

CONST(Com_TxIpduConfigType,COM_CONST) Com_TxIpduConfig[34] =
{
  /* Ipdu TX : F_CanOpenSynchFrame_Chassis_80 */
  {
    /*ValuePtr*/                    Com_TxIpduValue0,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         1,
    /*FirstElementInIpduIdx*/       30,
    /*NextIpduInGroupIdx*/          1,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    0,
    /*DefaultValue*/                0,
    /*Length*/                      1,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CanOpenSynchFrame_Tilt_80 */
  {
    /*ValuePtr*/                    Com_TxIpduValue1,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       31,
    /*NextIpduInGroupIdx*/          2,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    1,
    /*DefaultValue*/                0,
    /*Length*/                      1,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CLAS_Data_Confort_504 */
  {
    /*ValuePtr*/                    Com_TxIpduValue2,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         1,
    /*FirstElementInIpduIdx*/       33,
    /*NextIpduInGroupIdx*/          3,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    2,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CLAS_Status_Confort_100 */
  {
    /*ValuePtr*/                    Com_TxIpduValue3,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       19,
    /*NextIpduInGroupIdx*/          4,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    13,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_BSIDebugData_Confort_111 */
  {
    /*ValuePtr*/                    Com_TxIpduValue4,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       20,
    /*NextIpduInGroupIdx*/          5,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    14,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_IHMDebugData_Confort_112 */
  {
    /*ValuePtr*/                    Com_TxIpduValue5,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       21,
    /*NextIpduInGroupIdx*/          6,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    15,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_EXTDebugData_Confort_113 */
  {
    /*ValuePtr*/                    Com_TxIpduValue6,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       22,
    /*NextIpduInGroupIdx*/          7,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    16,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CLASToIHM_Confort_500 */
  {
    /*ValuePtr*/                    Com_TxIpduValue7,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         2,
    /*FirstElementInIpduIdx*/       23,
    /*NextIpduInGroupIdx*/          8,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    17,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_IMMOData_Confort_591 */
  {
    /*ValuePtr*/                    Com_TxIpduValue8,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       31,
    /*NextIpduInGroupIdx*/          9,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    18,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_IMMODiagConfiguration_Confort_594 */
  {
    /*ValuePtr*/                    Com_TxIpduValue9,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       32,
    /*NextIpduInGroupIdx*/          10,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    19,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_IMMORcuConfiguration_Confort_595 */
  {
    /*ValuePtr*/                    Com_TxIpduValue10,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       33,
    /*NextIpduInGroupIdx*/          11,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    20,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_RightSKAISingleInverterCommandData_Chassis_210 */
  {
    /*ValuePtr*/                    Com_TxIpduValue11,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       24,
    /*NextIpduInGroupIdx*/          12,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    3,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_LeftSKAISingleInverterCommandData_Chassis_213 */
  {
    /*ValuePtr*/                    Com_TxIpduValue12,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       25,
    /*NextIpduInGroupIdx*/          13,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    4,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_RightSKAISingleInverterClearError_Chassis_610 */
  {
    /*ValuePtr*/                    Com_TxIpduValue13,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       26,
    /*NextIpduInGroupIdx*/          14,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    5,
    /*DefaultValue*/                0,
    /*Length*/                      4,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_LeftSKAISingleInverterClearError_Chassis_613 */
  {
    /*ValuePtr*/                    Com_TxIpduValue14,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       27,
    /*NextIpduInGroupIdx*/          15,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    6,
    /*DefaultValue*/                0,
    /*Length*/                      4,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CopleyAccelnetAmplifierCommandData_Tilt_201 */
  {
    /*ValuePtr*/                    Com_TxIpduValue15,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       28,
    /*NextIpduInGroupIdx*/          16,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    7,
    /*DefaultValue*/                0,
    /*Length*/                      5,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CopleyAccelnetAmplifierNodeGuarding_Tilt_701 */
  {
    /*ValuePtr*/                    Com_TxIpduValue16,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       32,
    /*NextIpduInGroupIdx*/          17,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    8,
    /*DefaultValue*/                0,
    /*Length*/                      1,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CopleyAccelnetAmplifierMode_Tilt_000 */
  {
    /*ValuePtr*/                    Com_TxIpduValue17,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       29,
    /*NextIpduInGroupIdx*/          18,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    9,
    /*DefaultValue*/                0,
    /*Length*/                      2,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CopleyAccelnetAmplifierConfigurationTxFrame_Tilt_601 */
  {
    /*ValuePtr*/                    Com_TxIpduValue18,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       30,
    /*NextIpduInGroupIdx*/          19,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    10,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_BoschSteeringWheelSensorCalibration_Tilt_7C0 */
  {
    /*ValuePtr*/                    Com_TxIpduValue19,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       4,
    /*NextIpduInGroupIdx*/          20,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    11,
    /*DefaultValue*/                0,
    /*Length*/                      2,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_ACTIA_DataRequest_Confort_250 */
  {
    /*ValuePtr*/                    Com_TxIpduValue20,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       5,
    /*NextIpduInGroupIdx*/          21,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    12,
    /*DefaultValue*/                0,
    /*Length*/                      1,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_ADC_Value_A_Confort_7F0 */
  {
    /*ValuePtr*/                    Com_TxIpduValue21,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       6,
    /*NextIpduInGroupIdx*/          22,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    21,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_ADC_Value_B_Confort_7F1 */
  {
    /*ValuePtr*/                    Com_TxIpduValue22,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       7,
    /*NextIpduInGroupIdx*/          23,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    22,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_TOR_Input_Confort_7F2 */
  {
    /*ValuePtr*/                    Com_TxIpduValue23,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       8,
    /*NextIpduInGroupIdx*/          24,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    23,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CI_X_AXIS_Value_Confort_7F3 */
  {
    /*ValuePtr*/                    Com_TxIpduValue24,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       9,
    /*NextIpduInGroupIdx*/          25,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    24,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CI_Y_AXIS_Value_Confort_7F4 */
  {
    /*ValuePtr*/                    Com_TxIpduValue25,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       10,
    /*NextIpduInGroupIdx*/          26,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    25,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CI_Z_AXIS_Value_Confort_7F5 */
  {
    /*ValuePtr*/                    Com_TxIpduValue26,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       11,
    /*NextIpduInGroupIdx*/          27,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    26,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CI_X_AXIS_Info1_Confort_7F6 */
  {
    /*ValuePtr*/                    Com_TxIpduValue27,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       12,
    /*NextIpduInGroupIdx*/          28,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    27,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CI_X_AXIS_Info2_Confort_7F7 */
  {
    /*ValuePtr*/                    Com_TxIpduValue28,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       13,
    /*NextIpduInGroupIdx*/          29,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    28,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CI_Y_AXIS_Info1_Confort_7F8 */
  {
    /*ValuePtr*/                    Com_TxIpduValue29,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       14,
    /*NextIpduInGroupIdx*/          30,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    29,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CI_Y_AXIS_Info2_Confort_7F9 */
  {
    /*ValuePtr*/                    Com_TxIpduValue30,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       15,
    /*NextIpduInGroupIdx*/          31,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    30,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CI_Z_AXIS_Info1_Confort_7FA */
  {
    /*ValuePtr*/                    Com_TxIpduValue31,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       16,
    /*NextIpduInGroupIdx*/          32,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    31,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_CI_Z_AXIS_Info2_Confort_7FB */
  {
    /*ValuePtr*/                    Com_TxIpduValue32,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       17,
    /*NextIpduInGroupIdx*/          33,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    32,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
	,  /* Ipdu TX : F_Debug_Reserve_Tx_Confort_7FD */
  {
    /*ValuePtr*/                    Com_TxIpduValue33,
    /*FirstTimeoutFactor*/          0,
    /*TimeoutFactor*/               0,
    /*MinimumDelayTimeFactor*/      0,
    /*TransmissionModeIdx*/         0,
    /*FirstElementInIpduIdx*/       18,
    /*NextIpduInGroupIdx*/          COM_IPDU_OUT_IDX,
    /*TimerIndex[4]*/
    {
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX,
      COM_IPDU_OUT_IDX
    },
    /*HandleId*/                    33,
    /*DefaultValue*/                0,
    /*Length*/                      8,
    /*SignalProcessing*/            COM_DEFERED,
    /*TMSalwaysTRUE*/               TRUE,
    /*FirstElementInIpduType*/      COM_SIGNAL_GROUP,
    /*Unused*/                      0
  }
};


CONST(Com_IpduGroupConfigType,COM_CONST) Com_IpduGroupConfig[2] =
{
  /* Ipdu Group 0 : ComIPduGroupTX */
  {
    /*FirstElementInGroupIdx*/      0,
    /*NextIpduGroupInGroupIdx*/     COM_IPDU_GROUP_OUT_IDX,
    /*Direction*/                   ipdu.gceIPduGroupDirection(),
    /*ElementType*/                 ipdu.gceIPduGroupElementType(),
    /*Unused*/                      0
  }
,  /* Ipdu Group 1 : ComIPduGroupRx */
  {
    /*FirstElementInGroupIdx*/      0,
    /*NextIpduGroupInGroupIdx*/     COM_IPDU_GROUP_OUT_IDX,
    /*Direction*/                   ipdu.gceIPduGroupDirection(),
    /*ElementType*/                 ipdu.gceIPduGroupElementType(),
    /*Unused*/                      0
  }
};








	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
  	

  	
    	
    	
    	
	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
  	

  	
    	
    	
    	
	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
  	

  	
    	
    	
    	
	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
  	

  	
    	
    	
    	
	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
  	

  	
    	
    	
    	
	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
  	

  	
    	
    	
    	
	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
  	

  	
    	
    	
    	
	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
  	

  	
    	
    	
    	
	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	
	
		
	

  	
    	
  	

  		
		
	

  	
    	
  	

  	
		
	

  	
    	
  	


CONST(Com_RxSignalCfgTimeoutNotificationCbkType, COM_CONST) Com_RxSignalCfgTimeoutNotificationCbk[1] =
{

};

CONST(Com_RxSignalCfgInvalidNotificationCbkType, COM_CONST) Com_RxSignalCfgInvalidNotificationCbk[1] =
{

};



		


/* ENVIRONMENT */		
/* Mon Nov 29 09:29:50 CET 2010 */
/* D:\Helios */
	