	/*=============================================================================
**                                 GEENSYS
**                      Proprietary - Copyright (C) 2009
**-----------------------------------------------------------------------------
** Supported MCUs      : MCU independent
** Supported Compilers : Compiler independent
**-----------------------------------------------------------------------------
** File name         : Com_Cfg.h
**
** Module name       : AUTOSAR COM
**
** Requirement specification : AUTOSAR_SWS_COM.pdf
**
** Summary: Configuration header file of Autosar COM module
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

#ifndef COM_CFG_H
#define COM_CFG_H

/*****************************************************************************/
/* INCLUSIONS                                                                */
/*****************************************************************************/
#include "ComStack_Types.h"

/*****************************************************************************/
/* SYMBOLIC NAMES                                                            */
/*****************************************************************************/
/* Signals symbolic names */
#define S_AmplifierTemperature_281 0
#define S_ManufacturerStatusRegister_381 1
#define S_0x07_202 2
#define S_Battery_Voltage_202 3
#define S_BatteryCurrent_202 4
#define S_AverageTemperature_202 5
#define S_StateOfCharge_202 6
#define S_Udiff_202 7
#define S_0x07_203 8
#define S_AverageCell_Voltage_203 9
#define S_MinCellVoltage_203 10
#define S_MaxCellVoltage_203 11
#define S_WakeUpData_221 12
#define S_Renesas_TOR_inputs_506 13
#define S_Renesas_TOR_outputs_506 14
#define S_Shift_selector_position_506 15
#define S_Service_battery_voltage_506 16
#define S_UserSelectedCarMode_506 17
#define S_CarSpeedCommand_506 18
#define S_Unused_Chassis_80 144
#define S_Unused_Tilt_80 145
#define S_CopleyAccelnetAmplifier_Nodeguarding_701 146
#define S_CarSpeedSigned_504 147
#define S_PropulsionInvertersMeanPowersupply_504 148
#define S_PropulsionInvertersMaxTemperature_504 149
#define S_MotorsMaxTemperature_504 150
#define S_ShiftSelectorState_504 151
#define S_SocCorrige_504 152
#define S_Throttleposition_504 153
/* Group signals symbolic names */
#define GS_SubId_251 19
#define GS_SubId_Data_0_251 20
#define GS_SubId_Data_1_251 21
#define GS_SubId_Data_2_251 22
#define GS_SubId_Data_3_251 23
#define GS_SubId_Data_4_251 24
#define GS_SubId_Data_5_251 25
#define GS_SubId_Data_6_251 26
#define GS_ShutdownError_201 27
#define GS_ActualError_201 28
#define GS_ActualWarning_201 29
#define GS_Unused1_201 30
#define GS_Unused2_201 31
#define GS_TOR_OUT_2_7FC 32
#define GS_Data1_7FE 33
#define GS_Data2_7FE 34
#define GS_Data3_7FE 35
#define GS_Data4_7FE 36
#define GS_Data5_7FE 37
#define GS_Data6_7FE 38
#define GS_Data7_7FE 39
#define GS_Data8_7FE 40
#define GS_Command_581 41
#define GS_Index_581 42
#define GS_SubIndex_581 43
#define GS_ConfigData0_581 44
#define GS_ConfigData1_581 45
#define GS_ConfigData2_581 46
#define GS_ConfigData3_581 47
#define GS_StatusWord_181 48
#define GS_EncoderPosition_181 49
#define GS_ActualCurrent_181 50
#define GS_SteeringWheelAngle_305 51
#define GS_SteeringWheelSpeed_305 52
#define GS_StatusWord_305 53
#define GS_CheckSumCounter_305 54
#define GS_SteeringWheelSpeed2_305 55
#define GS_StatusWord_101 56
#define GS_HeartBeat_101 57
#define GS_Msg1_101 58
#define GS_Msg2_101 59
#define GS_Msg3_101 60
#define GS_StatusWord_102 61
#define GS_HeartBeat_102 62
#define GS_Msg1_102 63
#define GS_Msg2_102 64
#define GS_Msg3_102 65
#define GS_StatusWord_103 66
#define GS_HeartBeat_103 67
#define GS_Msg1_103 68
#define GS_Msg2_103 69
#define GS_Msg3_103 70
#define GS_DebugDataID_110 71
#define GS_DebugData0_110 72
#define GS_DebugData1_110 73
#define GS_DebugData2_110 74
#define GS_DebugData3_110 75
#define GS_DebugData4_110 76
#define GS_DebugData5_110 77
#define GS_DebugData6_110 78
#define GS_ModeOfOperation_190 79
#define GS_PowerModuleError_190 80
#define GS_HardwareError_190 81
#define GS_DriveError_190 82
#define GS_DriveWarning_190 83
#define GS_Unused_190 84
#define GS_NominalTorque_190 85
#define GS_ActualTorque_290 86
#define GS_AbsoluteCurrent_290 87
#define GS_BatteryVoltage_290 88
#define GS_IqCurrent_290 89
#define GS_MotorSpeed_390 90
#define GS_LifeTimeCounter_390 91
#define GS_ThetaElec_390 92
#define GS_IdCurrent_390 93
#define GS_MotorTemperature_490 94
#define GS_InverterTemperature1_490 95
#define GS_InverterTemperature2_490 96
#define GS_HallSector_490 97
#define GS_Unused_490 98
#define GS_ModeOfOperation_193 99
#define GS_PowerModuleError_193 100
#define GS_HardwareError_193 101
#define GS_DriveError_193 102
#define GS_DriveWarning_193 103
#define GS_Unused_193 104
#define GS_NominalTorque_193 105
#define GS_ActualTorque_293 106
#define GS_AbsoluteCurrent_293 107
#define GS_BatteryVoltage_293 108
#define GS_IqCurrent_293 109
#define GS_MotorSpeed_393 110
#define GS_LifeTimeCounter_393 111
#define GS_ThetaElec_393 112
#define GS_IdCurrent_393 113
#define GS_MotorTemperature_493 114
#define GS_InverterTemperature1_493 115
#define GS_InverterTemperature2_493 116
#define GS_HallSector_493 117
#define GS_Unused_493 118
#define GS_Command_592 119
#define GS_Data0_592 120
#define GS_Data1_592 121
#define GS_Data2_592 122
#define GS_Data3_592 123
#define GS_Data4_592 124
#define GS_Data5_592 125
#define GS_Data6_592 126
#define GS_Command_593 127
#define GS_Data0_593 128
#define GS_Data1_593 129
#define GS_Data2_593 130
#define GS_Data3_593 131
#define GS_Data4_593 132
#define GS_Data5_593 133
#define GS_Data6_593 134
#define GS_Command_603 135
#define GS_Data0_603 136
#define GS_Data1_603 137
#define GS_Data2_603 138
#define GS_Data2duplicated_603 139
#define GS_Data3_603 140
#define GS_Data4_603 141
#define GS_Data5_603 142
#define GS_Data6_603 143
#define GS_CalibrationData_7C0 154
#define GS_0x00_7C0 155
#define GS_Sub_id_250 156
#define GS_AngleVolant_A_7F0 157
#define GS_Pedale_A_7F0 158
#define GS_AngleCabine_A_7F0 159
#define GS_Spare_A_7F0 160
#define GS_AngleVolant_B_7F1 161
#define GS_Pedale_B_7F1 162
#define GS_AngleCabine_B_7F1 163
#define GS_Spare_B_7F1 164
#define GS_TOR_IN_1_7F2 165
#define GS_TOR_IN_2_7F2 166
#define GS_TOR_IN_3_7F2 167
#define GS_TOR_IN_4_7F2 168
#define GS_TOR_IN_5_7F2 169
#define GS_TOR_IN_6_7F2 170
#define GS_TOR_IN_7_7F2 171
#define GS_TOR_IN_8_7F2 172
#define GS_CI_X_AXIS_RateMR1X_7F3 173
#define GS_CI_X_AXIS_RateMR2X_7F3 174
#define GS_CI_X_AXIS_AccMR1Y_7F3 175
#define GS_CI_X_AXIS_AccMR2Y_7F3 176
#define GS_CI_Y_AXIS_RateMR1X_7F4 177
#define GS_CI_Y_AXIS_RateMR2X_7F4 178
#define GS_CI_Y_AXIS_AccMR1Y_7F4 179
#define GS_CI_Y_AXIS_AccMR2Y_7F4 180
#define GS_CI_Z_AXIS_RateMR1X_7F5 181
#define GS_CI_Z_AXIS_RateMR2X_7F5 182
#define GS_CI_Z_AXIS_AccMR1Y_7F5 183
#define GS_CI_Z_AXIS_AccMR2Y_7F5 184
#define GS_CI_X_AXIS_Temperature_7F6 185
#define GS_CI_X_AXIS_Status_Bits_7F6 186
#define GS_CI_X_AXIS_Info1_Reserved_7F6 187
#define GS_CI_X_AXIS_RateHInfo2_7F7 188
#define GS_CI_X_AXIS_AccHInfo2_7F7 189
#define GS_CI_X_AXIS_Error_Bits_7F7 190
#define GS_CI_X_AXIS_Info2_Reserved_7F7 191
#define GS_CI_Y_AXIS_Temperature_7F8 192
#define GS_CI_Y_AXIS_Status_Bits_7F8 193
#define GS_CI_Y_AXIS_Info1_Reserved_7F8 194
#define GS_CI_Y_AXIS_RateHInfo2_7F9 195
#define GS_CI_Y_AXIS_AccHInfo2_7F9 196
#define GS_CI_Y_AXIS_Error_Bits_7F9 197
#define GS_CI_Y_AXIS_Info2_Reserved_7F9 198
#define GS_CI_Z_AXIS_Temperature_7FA 199
#define GS_CI_Z_AXIS_Status_Bits_7FA 200
#define GS_CI_Z_AXIS_Info1_Reserved_7FA 201
#define GS_CI_Z_AXIS_RateHInfo2_7FB 202
#define GS_CI_Z_AXIS_AccHInfo2_7FB 203
#define GS_CI_Z_AXIS_Error_Bits_7FB 204
#define GS_CI_Z_AXIS_Info2_Reserved_7FB 205
#define GS_Data1_7FD 206
#define GS_Data2_7FD 207
#define GS_Data3_7FD 208
#define GS_Data4_7FD 209
#define GS_Data5_7FD 210
#define GS_Data6_7FD 211
#define GS_Data7_7FD 212
#define GS_Data8_7FD 213
#define GS_StatusWord_100 214
#define GS_HeartBeat_100 215
#define GS_Msg1_100 216
#define GS_Msg2_100 217
#define GS_Msg3_100 218
#define GS_DebugDataID_111 219
#define GS_DebugData0_111 220
#define GS_DebugData1_111 221
#define GS_DebugData2_111 222
#define GS_DebugData3_111 223
#define GS_DebugData4_111 224
#define GS_DebugData5_111 225
#define GS_DebugData6_111 226
#define GS_DebugDataID_112 227
#define GS_DebugData0_112 228
#define GS_DebugData1_112 229
#define GS_DebugData2_112 230
#define GS_DebugData3_112 231
#define GS_DebugData4_112 232
#define GS_DebugData5_112 233
#define GS_DebugData6_112 234
#define GS_DebugDataID_113 235
#define GS_DebugData0_113 236
#define GS_DebugData1_113 237
#define GS_DebugData2_113 238
#define GS_DebugData3_113 239
#define GS_DebugData4_113 240
#define GS_DebugData5_113 241
#define GS_DebugData6_113 242
#define GS_CarModeState_500 243
#define GS_CruiseControlSpeedLimitor_500 244
#define GS_Power_500 245
#define GS_Tilting_500 246
#define GS_Warning_500 247
#define GS_RangeEstimate_500 248
#define GS_TBD1_500 249
#define GS_TBD2_500 250
#define GS_SkaiMode_210 251
#define GS_StayAliveCounter_210 252
#define GS_TorqueCommand_210 253
#define GS_RPMmax_210 254
#define GS_SkaiMode_213 255
#define GS_StayAliveCounter_213 256
#define GS_TorqueCommand_213 257
#define GS_RPMmax_213 258
#define GS_0x23x20x10x00_610 259
#define GS_0x23x20x10x00_613 260
#define GS_ControlWord_201 261
#define GS_ModeOfOperation_201 262
#define GS_TorqueCommand_201 263
#define GS_AccelnetModeData1_000 264
#define GS_AccelnetModeData2_000 265
#define GS_Command_601 266
#define GS_Index_601 267
#define GS_SubIndex_601 268
#define GS_ConfigData0_601 269
#define GS_ConfigData1_601 270
#define GS_ConfigData2_601 271
#define GS_ConfigData3_601 272
#define GS_Command_591 273
#define GS_Data0_591 274
#define GS_Data1_591 275
#define GS_Data2_591 276
#define GS_Data3_591 277
#define GS_Data4_591 278
#define GS_Data5_591 279
#define GS_Data6_591 280
#define GS_Command_594 281
#define GS_Data0_594 282
#define GS_Data1_594 283
#define GS_Data2_594 284
#define GS_Data3_594 285
#define GS_Data4_594 286
#define GS_Data5_594 287
#define GS_Data6_594 288
#define GS_Command_595 289
#define GS_Data0_595 290
#define GS_Data1_595 291
#define GS_Data2_595 292
#define GS_Data3_595 293
#define GS_Data4_595 294
#define GS_Data5_595 295
#define GS_Data6_595 296
#define GS_TOR_OUT_1_7FC 297
/* Signal groups symbolic names */
#define SG_ACTIA_Data_251 0
#define SG_ACTIA_ErrorWarning_201 1
#define SG_TOR_Output_7FC 2
#define SG_Debug_Reserve_Rx_7FE 3
#define SG_CopleyAccelnetAmplifierConfigurationRxFrame_581 4
#define SG_CopleyAccelnetAmplifierPDO1_181 5
#define SG_BoschSteeringWheelSensorData_305 6
#define SG_BSI_Status_101 7
#define SG_IHM_Status_102 8
#define SG_EXT_Status_103 9
#define SG_CLASDebugData_110 10
#define SG_RightSKAISingleInverterErrorDebug_190 11
#define SG_RightSKAISingleInverterData1_Chassis_290 12
#define SG_RightSKAISingleInverterData2_Chassis_390 13
#define SG_RightSKAISingleInverterData3_Chassis_490 14
#define SG_LeftSKAISingleInverterErrorDebug_Chassis_193 15
#define SG_LeftSKAISingleInverterData1_Chassis_293 16
#define SG_LeftSKAISingleInverterData2_Chassis_393 17
#define SG_LeftSKAISingleInverterData3_Chassis_493 18
#define SG_IMMODiagConfiguration_592 19
#define SG_IMMORcuConfiguration_593 20
#define SG_IMMODataConfiguration_603 21
#define SG_BoschSteeringWheelSensorCalibration_7C0 22
#define SG_ACTIA_DataRequest_250 23
#define SG_ADC_Value_A_7F0 24
#define SG_ADC_Value_B_7F1 25
#define SG_TOR_Input_7F2 26
#define SG_CI_X_AXIS_Value_7F3 27
#define SG_CI_Y_AXIS_Value_7F4 28
#define SG_CI_Z_AXIS_Value_7F5 29
#define SG_CI_X_AXIS_Info1_7F6 30
#define SG_CI_X_AXIS_Info2_7F7 31
#define SG_CI_Y_AXIS_Info1_7F8 32
#define SG_CI_Y_AXIS_Info2_7F9 33
#define SG_CI_Z_AXIS_Info1_7FA 34
#define SG_CI_Z_AXIS_Info2_7FB 35
#define SG_Debug_Reserve_Tx_7FD 36
#define SG_CLAS_Status_100 37
#define SG_BSIDebugData_111 38
#define SG_IHMDebugData_112 39
#define SG_EXTDebugData_113 40
#define SG_CLASToIHM_500 41
#define SG_RightSKAI_SingleInverter_CommandData_210 42
#define SG_LeftSKAI_SingleInverter_CommandData_213 43
#define SG_RightSKAI_SingleInverter_ClearError_610 44
#define SG_LeftSKAI_SingleInverter_ClearError_613 45
#define SG_CopleyAccelnetAmplifier_CommandData_201 46
#define SG_CopleyAccelnetAmplifier_Mode_000 47
#define SG_CopleyAccelnetAmplifier_ConfigurationTxFrame_601 48
#define SG_IMMOData_591 49
#define SG_IMMODiagConfiguration_594 50
#define SG_IMMORcuConfiguration_595 51
/* IPdu groups symbolic names */
#define ComIPduGroupTX 0
#define ComIPduGroupRx 1
/* Rx IPdus symbolic names */
#define F_DataTransferFromUcConfort_Confort_506 0
#define F_RightSKAISingleInverterErrorDebug_Chassis_190 1
#define F_RightSKAISingleInverterData1_Chassis_290 2
#define F_RightSKAISingleInverterData2_Chassis_390 3
#define F_RightSKAISingleInverterData3_Chassis_490 4
#define F_LeftSKAISingleInverterErrorDebug_Chassis_193 5
#define F_LeftSKAISingleInverterData1_Chassis_293 6
#define F_LeftSKAISingleInverterData2_Chassis_393 7
#define F_LeftSKAISingleInverterData3_Chassis_493 8
#define F_CopleyAccelnetAmplifierConfigurationRxFrame_Tilt_581 9
#define F_CopleyAccelnetAmplifierPDO1_Tilt_181 10
#define F_CopleyAccelnetAmplifierPDO2_Tilt_281 11
#define F_CopleyAccelnetAmplifierPDO3_Tilt_381 12
#define F_BoschSteeringWheelSensorData_Tilt_305 13
#define F_ACTIA_ErrorWarning_Confort_201 14
#define F_ACTIA_ShortInfo_Confort_202 15
#define F_ACTIA_WakeUp_Confort_221 16
#define F_ACTIA_Data_Confort_251 17
#define F_BSI_Status_Confort_101 18
#define F_IHM_Status_Confort_102 19
#define F_EXT_Status_Confort_103 20
#define F_CLASDebugData_Confort_110 21
#define F_TOR_Output_Confort_7FC 22
#define F_Debug_Reserve_Rx_Confort_7FE 23
#define F_ACTIA_CellVoltage_Confort_203 24
#define F_IMMODiagConfiguration_Confort_592 25
#define F_IMMORcuConfiguration_Confort_593 26
#define F_IMMOData_Confort_603 27
/* Tx IPdus symbolic names */
#define F_CanOpenSynchFrame_Chassis_80 0
#define F_CanOpenSynchFrame_Tilt_80 1
#define F_CLAS_Data_Confort_504 2
#define F_CLAS_Status_Confort_100 13
#define F_BSIDebugData_Confort_111 14
#define F_IHMDebugData_Confort_112 15
#define F_EXTDebugData_Confort_113 16
#define F_CLASToIHM_Confort_500 17
#define F_IMMOData_Confort_591 18
#define F_IMMODiagConfiguration_Confort_594 19
#define F_IMMORcuConfiguration_Confort_595 20
#define F_RightSKAISingleInverterCommandData_Chassis_210 3
#define F_LeftSKAISingleInverterCommandData_Chassis_213 4
#define F_RightSKAISingleInverterClearError_Chassis_610 5
#define F_LeftSKAISingleInverterClearError_Chassis_613 6
#define F_CopleyAccelnetAmplifierCommandData_Tilt_201 7
#define F_CopleyAccelnetAmplifierNodeGuarding_Tilt_701 8
#define F_CopleyAccelnetAmplifierMode_Tilt_000 9
#define F_CopleyAccelnetAmplifierConfigurationTxFrame_Tilt_601 10
#define F_BoschSteeringWheelSensorCalibration_Tilt_7C0 11
#define F_ACTIA_DataRequest_Confort_250 12
#define F_ADC_Value_A_Confort_7F0 21
#define F_ADC_Value_B_Confort_7F1 22
#define F_TOR_Input_Confort_7F2 23
#define F_CI_X_AXIS_Value_Confort_7F3 24
#define F_CI_Y_AXIS_Value_Confort_7F4 25
#define F_CI_Z_AXIS_Value_Confort_7F5 26
#define F_CI_X_AXIS_Info1_Confort_7F6 27
#define F_CI_X_AXIS_Info2_Confort_7F7 28
#define F_CI_Y_AXIS_Info1_Confort_7F8 29
#define F_CI_Y_AXIS_Info2_Confort_7F9 30
#define F_CI_Z_AXIS_Info1_Confort_7FA 31
#define F_CI_Z_AXIS_Info2_Confort_7FB 32
#define F_Debug_Reserve_Tx_Confort_7FD 33

/*****************************************************************************/
/* DEFINITION OF MACROS                                                      */
/*****************************************************************************/
/* Configuration constants */
/* Preprocessor switch to enable/disable the API to read out the modules
   version information. Possible values : STD_ON / STD_OFF */
#define COM_VERSION_INFO_API        STD_ON

#define COM_DEV_ERROR_DETECT        GENERAL_DEV_ERROR_DETECT

#define COM_CONFIGURATION_ID        0x12345678

#define COM_PRE_COMPILE             0
#define COM_LINK_TIME 	            1
#define COM_POST_BUILD 	            2
#define COM_CONFIG_VARIANT          COM_PRE_COMPILE

/* Macros for access to configuration parameters */
#define Com_iGetConfigurationId                             (COM_CONFIGURATION_ID)

#define Com_iGetRxIpdu_FirstTimeout(PduIndex)               (Com_RxIpduConfig[PduIndex].FirstTimeoutFactor)
#define Com_iGetRxIpdu_Timeout(PduIndex)                    (Com_RxIpduConfig[PduIndex].TimeoutFactor)
#define Com_iGetRxIpdu_FirstInIpduIdx(PduIndex)             (Com_RxIpduConfig[PduIndex].FirstElementInIpduIdx)
#define Com_iGetRxIpdu_NextInGroupIdx(PduIndex)             (Com_RxIpduConfig[PduIndex].NextIpduInGroupIdx)
#define Com_iGetRxIpdu_ValuePtr(PduIndex)                   (Com_RxIpduConfig[PduIndex].ValuePtr)
#define Com_iGetRxIpdu_Length(PduIndex)                     (Com_RxIpduConfig[PduIndex].Length)
#define Com_iGetRxIpdu_SgProcessing(PduIndex)               (Com_RxIpduConfig[PduIndex].SignalProcessing)
#define Com_iGetRxIpdu_FirstInIpduType(PduIndex)            (Com_RxIpduConfig[PduIndex].FirstElementInIpduType)

#define Com_iGetTxIpdu_FirstTimeout(PduIndex)               (Com_TxIpduConfig[PduIndex].FirstTimeoutFactor)
#define Com_iGetTxIpdu_Timeout(PduIndex)                    (Com_TxIpduConfig[PduIndex].TimeoutFactor)
#define Com_iGetTxIpdu_MDT(PduIndex)                        (Com_TxIpduConfig[PduIndex].MinimumDelayTimeFactor)
#define Com_iGetTxIpdu_TrModeIdx(PduIndex)                  (Com_TxIpduConfig[PduIndex].TransmissionModeIdx)
#define Com_iGetTxIpdu_FirstInIpduIdx(PduIndex)             (Com_TxIpduConfig[PduIndex].FirstElementInIpduIdx)
#define Com_iGetTxIpdu_ValuePtr(PduIndex)                   (Com_TxIpduConfig[PduIndex].ValuePtr)
#define Com_iGetTxIpdu_NextInGroupIdx(PduIndex)             (Com_TxIpduConfig[PduIndex].NextIpduInGroupIdx)
#define Com_iGetTxIpdu_DefaultValue(PduIndex)               (Com_TxIpduConfig[PduIndex].DefaultValue)
#define Com_iGetTxIpdu_Length(PduIndex)                     (Com_TxIpduConfig[PduIndex].Length)
#define Com_iGetTxIpdu_SgProcessing(PduIndex)               (Com_TxIpduConfig[PduIndex].SignalProcessing)
#define Com_iGetTxIpdu_TMSalwaysTRUE(PduIndex)              (Com_TxIpduConfig[PduIndex].TMSalwaysTRUE)
#define Com_iGetTxIpdu_FirstInIpduType(PduIndex)            (Com_TxIpduConfig[PduIndex].FirstElementInIpduType)

#define Com_iGetIpduGr_FirstInGroupIdx(PduGroupIndex)       (Com_IpduGroupConfig[PduGroupIndex].FirstElementInGroupIdx)
#define Com_iGetIpduGr_NextInGroupIdx(PduGroupIndex)        (Com_IpduGroupConfig[PduGroupIndex].NextIpduGroupInGroupIdx)
#define Com_iGetIpduGr_Direction(PduGroupIndex)             (Com_IpduGroupConfig[PduGroupIndex].Direction)
#define Com_iGetIpduGr_ElementType(PduGroupIndex)           (Com_IpduGroupConfig[PduGroupIndex].ElementType)

#define Com_iGetRxSg_OldValuePtr(SignalIndex)               (Com_RxSignalConfig[SignalIndex].OldValuePtr)
#define Com_iGetRxSg_InitValuePtr(SignalIndex)              (Com_RxSignalConfig[SignalIndex].InitValuePtr)
#define Com_iGetRxSg_BitPosition(SignalIndex)               (Com_RxSignalConfig[SignalIndex].BitPosition)
#define Com_iGetRxSg_UpdBitPosition(SignalIndex)            (Com_RxSignalConfig[SignalIndex].UpdateBitPosition)
#define Com_iGetRxSg_NextInIpduIdx(SignalIndex)             (Com_RxSignalConfig[SignalIndex].NextElementInIpduIdx)
#define Com_iGetRxSg_IpduIdx(SignalIndex)                   (Com_RxSignalConfig[SignalIndex].IpduIdx)
#define Com_iGetRxSg_IsGatewayed(SignalIndex)               (Com_RxSignalConfig[SignalIndex].IsGatewayed)

#define Com_iGetTxSg_OldValuePtr(SignalIndex)               (Com_TxSignalConfig[SignalIndex].OldValuePtr)
#define Com_iGetTxSg_InitValuePtr(SignalIndex)              (Com_TxSignalConfig[SignalIndex].InitValuePtr)
#define Com_iGetTxSg_BitPosition(SignalIndex)               (Com_TxSignalConfig[SignalIndex].BitPosition)
#define Com_iGetTxSg_UpdBitPosition(SignalIndex)            (Com_TxSignalConfig[SignalIndex].UpdateBitPosition)
#define Com_iGetTxSg_TrProperty(SignalIndex)                (Com_TxSignalConfig[SignalIndex].TransferProperty)
#define Com_iGetTxSg_NextInIpduIdx(SignalIndex)             (Com_TxSignalConfig[SignalIndex].NextElementInIpduIdx)
#define Com_iGetTxSg_IpduIdx(SignalIndex)                   (Com_TxSignalConfig[SignalIndex].IpduIdx)

#define Com_iGetRxSgGr_UpdBitPosition(SignalGroupIndex)     (Com_RxSignalGroupConfig[SignalGroupIndex].UpdateBitPosition)
#define Com_iGetRxSgGr_NextInIpduIdx(SignalGroupIndex)      (Com_RxSignalGroupConfig[SignalGroupIndex].NextElementInIpduIdx)
#define Com_iGetRxSgGr_NextInIpduType(SignalGroupIndex)     (Com_RxSignalGroupConfig[SignalGroupIndex].NextElementInIpduType)
#define Com_iGetRxSgGr_IpduIdx(SignalGroupIndex)            (Com_RxSignalGroupConfig[SignalGroupIndex].IpduIdx)
#define Com_iGetRxSgGr_IsGatewayed(SignalGroupIndex)        (Com_RxSignalGroupConfig[SignalGroupIndex].IsGatewayed)

#define Com_iGetTxSgGr_UpdBitPosition(SignalGroupIndex)     (Com_TxSignalGroupConfig[SignalGroupIndex].UpdateBitPosition)
#define Com_iGetTxSgGr_TrProperty(SignalGroupIndex)         (Com_TxSignalGroupConfig[SignalGroupIndex].TransferProperty)
#define Com_iGetTxSgGr_NextInIpduIdx(SignalGroupIndex)      (Com_TxSignalGroupConfig[SignalGroupIndex].NextElementInIpduIdx)
#define Com_iGetTxSgGr_NextInIpduType(SignalGroupIndex)     (Com_TxSignalGroupConfig[SignalGroupIndex].NextElementInIpduType)
#define Com_iGetTxSgGr_IpduIdx(SignalGroupIndex)            (Com_TxSignalGroupConfig[SignalGroupIndex].IpduIdx)

#define Com_iGetRxGrSg_OldValuePtr(SignalIndex)             (Com_RxGroupSignalConfig[SignalIndex].OldValuePtr)
#define Com_iGetRxGrSg_InitValuePtr(SignalIndex)            (Com_RxGroupSignalConfig[SignalIndex].InitValuePtr)
#define Com_iGetRxGrSg_BitPosition(SignalIndex)             (Com_RxGroupSignalConfig[SignalIndex].BitPosition)
#define Com_iGetRxGrSg_IsGatewayed(SignalIndex)             (Com_RxGroupSignalConfig[SignalIndex].IsGatewayed)

#define Com_iGetTxGrSg_OldValuePtr(SignalIndex)             (Com_TxGroupSignalConfig[SignalIndex].OldValuePtr)
#define Com_iGetTxGrSg_InitValuePtr(SignalIndex)            (Com_TxGroupSignalConfig[SignalIndex].InitValuePtr)
#define Com_iGetTxGrSg_BitPosition(SignalIndex)             (Com_TxGroupSignalConfig[SignalIndex].BitPosition)

#define Com_iGetSignalRouteTable                            Com_SignalRoute
#define Com_iGetSignalGroupRouteTable                       Com_SignalGroupRoute
#define Com_iGetGroupSignalRouteTable                       Com_GroupSignalRoute
#define Com_iGetTransmissionModeTable                       Com_TransmissionMode

/* Autosar release version abstraction macros */
#define Com_iGetRxSg_TimeoutCbk(SignalIndex)                (Com_RxSignalCfgTimeoutNotificationCbk[Com_RxSignalConfig[SignalIndex].TimeoutNotificationCbkIdx])
#define Com_iCallRxSg_TimeoutCbk(SignalIndex)               (Com_RxSignalCfgTimeoutNotificationCbk[Com_RxSignalConfig[SignalIndex].TimeoutNotificationCbkIdx]())
#define Com_iGetTxSg_TimeoutCbk(SignalIndex)                (Com_TxSignalCfgTimeoutNotificationCbk[Com_TxSignalConfig[SignalIndex].TimeoutNotificationCbkIdx])
#define Com_iCallTxSg_TimeoutCbk(SignalIndex)               (Com_TxSignalCfgTimeoutNotificationCbk[Com_TxSignalConfig[SignalIndex].TimeoutNotificationCbkIdx]())
#define Com_iGetRxSgGr_TimeoutCbk(SignalGroupIndex)         (Com_RxSignalGroupCfgTimeoutNotificationCbk[Com_RxSignalGroupConfig[SignalGroupIndex].TimeoutNotificationCbkIdx])
#define Com_iCallRxSgGr_TimeoutCbk(SignalGroupIndex)        (Com_RxSignalGroupCfgTimeoutNotificationCbk[Com_RxSignalGroupConfig[SignalGroupIndex].TimeoutNotificationCbkIdx]())
#define Com_iGetTxSgGr_TimeoutCbk(SignalGroupIndex)         (Com_TxSignalGroupCfgTimeoutNotificationCbk[Com_TxSignalGroupConfig[SignalGroupIndex].TimeoutNotificationCbkIdx])
#define Com_iCallTxSgGr_TimeoutCbk(SignalGroupIndex)        (Com_TxSignalGroupCfgTimeoutNotificationCbk[Com_TxSignalGroupConfig[SignalGroupIndex].TimeoutNotificationCbkIdx]())
#define Com_iGetTxSg_ErrorCbk(SignalIndex)                  (Com_TxSignalCfgErrorNotificationCbk[Com_TxSignalConfig[SignalIndex].ErrorNotificationCbkIdx])
#define Com_iCallTxSg_ErrorCbk(SignalIndex)                 (Com_TxSignalCfgErrorNotificationCbk[Com_TxSignalConfig[SignalIndex].ErrorNotificationCbkIdx]())
#define Com_iGetTxSgGr_ErrorCbk(SignalGroupIndex)           (Com_TxSignalGroupCfgErrorNotificationCbk[Com_TxSignalGroupConfig[SignalGroupIndex].ErrorNotificationCbkIdx])
#define Com_iCallTxSgGr_ErrorCbk(SignalGroupIndex)          (Com_TxSignalGroupCfgErrorNotificationCbk[Com_TxSignalGroupConfig[SignalGroupIndex].ErrorNotificationCbkIdx]())
#define Com_iGetRxSgGr_InvalidCbk(SignalGroupIndex)         (Com_RxSignalGroupCfgInvalidNotificationCbk[Com_RxSignalGroupConfig[SignalGroupIndex].InvalidNotificationCbkIdx])
#define Com_iCallRxSgGr_InvalidCbk(SignalGroupIndex)        (Com_RxSignalGroupCfgInvalidNotificationCbk[Com_RxSignalGroupConfig[SignalGroupIndex].InvalidNotificationCbkIdx]())
/* Macro for access to RAM info */
#define Com_iTxIpdu_MDTimer(IpduIndex)                      (Com_iTxIPduMDTimer[Com_TxIpduConfig[IpduIndex].TimerIndex[3]])
#define Com_iTxIpdu_DeadlineTimer(IpduIndex)                (Com_iTxIPduDeadlineTimer[Com_TxIpduConfig[IpduIndex].TimerIndex[0]])
#define Com_iTxIpdu_NextPeriodicTimer(IpduIndex)            (Com_iTxIPduPeriodicTimer[Com_TxIpduConfig[IpduIndex].TimerIndex[2]])
#define Com_iTxIpdu_NxtDirectSendTimer(IpduIndex)           (Com_iTxIPduDirectTimer[Com_TxIpduConfig[IpduIndex].TimerIndex[1]])
#define Com_iTxIpdu_RepetNumber(IpduIndex)                  (Com_iTxIPduRepetNumber[Com_TxIpduConfig[IpduIndex].TimerIndex[1]])
#define Com_iTxIpdu_MDTNextIdx(IpduIndex)                   (Com_iTxIPduMDTNextIdx[Com_TxIpduConfig[IpduIndex].TimerIndex[3]])
#define Com_iTxIpdu_DeadlineNextIdx(IpduIndex)              (Com_iTxIPduDeadlineNextIdx[Com_TxIpduConfig[IpduIndex].TimerIndex[0]])
#define Com_iTxIpdu_PeriodicNextIdx(IpduIndex)              (Com_iTxIPduPeriodicNextIdx[Com_TxIpduConfig[IpduIndex].TimerIndex[2]])
#define Com_iTxIpdu_DirectNextIdx(IpduIndex)                (Com_iTxIPduDirectNextIdx[Com_TxIpduConfig[IpduIndex].TimerIndex[1]])
#define Com_iTxIpdu_NextConfirmIpduIdx(IpduIndex)           (Com_iTxIpduNextConfirmIpduIdx[IpduIndex])
#define Com_iTxIpdu_GetTransmitCycle(IpduIndex)             (((Com_iTxIPduTransmitCycle[((IpduIndex)>>3)])>>((IpduIndex)&0x07))&0x01)
#define Com_iTxIpdu_SetTransmitCycle(IpduIndex)             (Com_iTxIPduTransmitCycle[((IpduIndex)>>3)] = (uint8)((Com_iTxIPduTransmitCycle[((IpduIndex)>>3)])|((uint8)(0x01<<((uint8)((IpduIndex)&0x07))))))
#define Com_iTxIpdu_TransmitCycle                           (Com_iTxIPduTransmitCycle)

#define Com_iRxIpdu_DeadlineTimer(IpduIndex)                (Com_iRxIPduDeadlineTimer[Com_RxIpduConfig[IpduIndex].DeadlineTimerIndex])
#define Com_iRxIpdu_NextDeadlineIdx(IpduIndex)              (Com_iRxIPduDeadlineNextIdx[Com_RxIpduConfig[IpduIndex].DeadlineTimerIndex])
#define Com_iRxIpdu_PrevDeadlineIdx(IpduIndex)              (Com_iRxIPduDeadlinePreviousIdx[Com_RxIpduConfig[IpduIndex].DeadlineTimerIndex])
#define Com_iRxIpdu_NextReceivedIdx(IpduIndex)              (Com_iRxIpduNextReceivedIdx[IpduIndex])

#define Com_iRxSg_DeadlineTimer(SignalIndex)                (Com_iRxSgDeadlineTimer[Com_RxSignalConfig[SignalIndex].DeadlineTimerIndex])
#define Com_iRxSg_NextDeadlineIdx(SignalIndex)              (Com_iRxSgDeadlineNextIdx[Com_RxSignalConfig[SignalIndex].DeadlineTimerIndex])
#define Com_iRxSg_PrevDeadlineIdx(SignalIndex)              (Com_iRxSgDeadlinePreviousIdx[Com_RxSignalConfig[SignalIndex].DeadlineTimerIndex])
#define Com_iRxSg_NextRoutingIdx(SignalIndex)               (Com_iRxSgNextRoutingIdx[Com_RxSignalConfig[SignalIndex].RoutingListIndex])
#define Com_iRxSg_GetValuePtrIsInit(SignalIndex)            (((Com_iCurrentRxSgValuePtrIsInit[((SignalIndex)>>3)])>>((SignalIndex)&0x07))&0x01)
#define Com_iRxSg_SetValuePtrIsInit(SignalIndex)            (Com_iCurrentRxSgValuePtrIsInit[((SignalIndex)>>3)] |= ((uint8)(0x01<<((uint8)((SignalIndex)&0x07)))))
#define Com_iRxSg_SetValuePtrIsNormal(SignalIndex)          (Com_iCurrentRxSgValuePtrIsInit[((SignalIndex)>>3)] &= ((uint8)(~((uint8)(0x01<<((uint8)((SignalIndex)&0x07)))))))

#define Com_iTxSg_GetFilterResult(SignalIndex)              (((Com_iTxSgFilterResult[((SignalIndex)>>3)])>>((SignalIndex)&0x07))&0x01)
#define Com_iTxSg_SetFilterResult(SignalIndex, Value)       (Com_iTxSgFilterResult[((SignalIndex)>>3)] = ((Com_iTxSgFilterResult[((SignalIndex)>>3)])&((uint8)(~(0x01U<<((SignalIndex)&0x07U))))) + ((Value)<<((SignalIndex)&0x07U)))

#define Com_iRxSgGr_DeadlineTimer(SignalGroupIndex)         (Com_iRxSgGrDeadlineTimer[Com_RxSignalGroupConfig[SignalGroupIndex].DeadlineTimerIndex])
#define Com_iRxSgGr_NextDeadlineIdx(SignalGroupIndex)       (Com_iRxSgGrDeadlineNextIdx[Com_RxSignalGroupConfig[SignalGroupIndex].DeadlineTimerIndex])
#define Com_iRxSgGr_PrevDeadlineIdx(SignalGroupIndex)       (Com_iRxSgGrDeadlinePreviousIdx[Com_RxSignalGroupConfig[SignalGroupIndex].DeadlineTimerIndex])
#define Com_iRxSgGr_NextRoutingIdx(SignalGroupIndex)        (Com_iRxSgGrNextRoutingIdx[Com_RxSignalGroupConfig[SignalGroupIndex].RoutingListIndex])

#define Com_iRxGrSg_NextRoutingIdx(SignalIndex)             (Com_iRxGrSgNextRoutingIdx[Com_RxGroupSignalConfig[SignalIndex].RoutingListIndex])
#define Com_iRxGrSg_GetValuePtrIsInit(SignalIndex)          (((Com_iCurrentRxGrSgValuePtrIsInit[((SignalIndex)>>3)])>>((SignalIndex)&0x07))&0x01)
#define Com_iRxGrSg_SetValuePtrIsInit(SignalIndex)          (Com_iCurrentRxGrSgValuePtrIsInit[((SignalIndex)>>3)] |= ((uint8)(0x01<<((uint8)((SignalIndex)&0x07)))))
#define Com_iRxGrSg_SetValuePtrIsNormal(SignalIndex)        (Com_iCurrentRxGrSgValuePtrIsInit[((SignalIndex)>>3)] &= ((uint8)(~(0x01U<<((SignalIndex)&0x07U)))))

#define Com_iTxGrSg_GetFilterResult(SignalIndex)            (((Com_iTxGrSgFilterResult[((SignalIndex)>>3)])>>((SignalIndex)&0x07))&0x01)
#define Com_iTxGrSg_SetFilterResult(SignalIndex, Value)     (Com_iTxGrSgFilterResult[((SignalIndex)>>3)] = ((Com_iTxGrSgFilterResult[((SignalIndex)>>3)])&((uint8)(~(0x01U<<((SignalIndex)&0x07U))))) + ((Value)<<((SignalIndex)&0x07U)))

#define Com_iFilterIdx_FilterOccurence(FilterIndex)         (Com_iFilterOccurence[Com_FilterConfig[FilterIndex].OccurenceIdx])

/* Code optimization defines */
#define COM_RX_IPDU_SUPPORT             STD_ON
#define COM_TX_IPDU_SUPPORT             STD_ON
#define COM_RX_SIGNAL_SUPPORT           STD_ON
#define COM_TX_SIGNAL_SUPPORT           STD_ON
#define COM_RX_SIGNAL_GROUP_SUPPORT     STD_ON
#define COM_TX_SIGNAL_GROUP_SUPPORT     STD_ON
#define COM_RX_SIGNAL_FILTERING         STD_OFF
#define COM_TX_SIGNAL_FILTERING         STD_OFF
#define COM_GROUP_SIGNAL_FILTERING      STD_OFF
#define COM_RX_SIGNAL_FILTER_OCC        STD_OFF
#define COM_TX_SIGNAL_FILTER_OCC        STD_OFF
#define COM_GROUP_SIGNAL_FILTER_OCC     STD_OFF
#define COM_TMS                         STD_OFF
#define COM_SIGNAL_ROUTING              STD_OFF
#define COM_SIGNAL_GROUP_ROUTING        STD_OFF
#define COM_GROUP_SIGNAL_ROUTING        STD_OFF
#define COM_RX_IPDU_DEADLINE            STD_OFF
#define COM_TX_IPDU_DEADLINE            STD_OFF
#define COM_TX_IPDU_DIRECT              STD_ON
#define COM_TX_IPDU_PERIODIC            STD_ON
#define COM_TX_IPDU_MDT                 STD_OFF
#define COM_RX_SIGNAL_DEADLINE          STD_OFF
#define COM_RX_SIGNAL_GROUP_DEADLINE    STD_OFF
/* Containers number */
#define Com_RxSignalNumber              28
#define Com_TxSignalNumber              40
#define Com_RxGroupSignalNumber         28
#define Com_TxGroupSignalNumber         34
#define Com_RxSignalGroupNumber         28
#define Com_TxSignalGroupNumber         34
#define Com_RxIpduNumber                28
#define Com_TxIpduNumber                34




#define Com_SignalIdMax                 130
#define Com_SignalGroupIdMax            52
#define Com_IpduGroupIdMax              2

/* Definition of module macros */
/* Get Index */
#define Com_iGetSignalIndex(SignalId)               (Com_iSignalIndexById[SignalId])
#define Com_iGetSignalDirection(SignalId)           (((Com_iSignalDirectionById[((SignalId)>>3)])>>(SignalId&0x07))&0x01)
#define Com_iGetSignalGrouping(SignalId)            (((Com_iSignalGroupingById[((SignalId)>>3)])>>(SignalId&0x07))&0x01)

#define Com_iGetSignalGroupDirection(SignalGroupId) (((Com_iSignalGroupDirectionById[((SignalGroupId)>>3)])>>(SignalGroupId&0x07))&0x01)
#define Com_iGetSignalGroupIndex(SignalGroupId)     (Com_iSignalGroupIndexById[SignalGroupId])
#define Com_iGetIpduGroupIndex(IpduGroupId)         (IpduGroupId)
#define Com_iGetRxIpduIndex(IpduId)                 ((Com_IPduIndexType)(IpduId))

#define COM_IGETTXIPDUINDEX_FUNCTION                STD_ON
/* Get Id */
#define Com_iGetRxIpduId(IpduIndex)                 (IpduIndex)
#define Com_iGetTxIpduId(IpduIndex)                 (Com_TxIpduConfig[IpduIndex].HandleId)
/* Definition of module constants */
/* Max length of Ipdu */
#define COM_IPDU_MAX_LENGTH				254
/* constants for update bit management */
#define COM_MAX_UPDATE_BIT_POSITION     2039
#define COM_NO_UPDATE_BIT               2040
/* constants for chained lists */
#define COM_RX_IPDU_INDEX_NUMBER        3
#define COM_TX_IPDU_INDEX_NUMBER        9
#define COM_RX_SIGNAL_INDEX_NUMBER      3

/* Definition of type constants */
/* Ipdu Signal Processing Type */
#define COM_IMMEDIATE                   0
#define COM_DEFERED                     1
/* Ipdu Group Property Type */
#define COM_SENT                        0
#define COM_RECEIVED                    1
/* Ipdu Group Element Type */
#define COM_IPDU                        0
#define COM_IPDU_GROUP                  1
/* Signal Endianness Type */
#define COM_BIG_ENDIAN                  0
#define COM_LITTLE_ENDIAN               1
#define COM_OPAQUE                      2
/* Rx Data Timeout Substitution Action Type */
#define COM_NO_REPLACE                  0
#define COM_REPLACE                     1
/* Data Invalid Action Type */
#define COM_NOTIFY                      0
#define COM_REPLACE_DATA                1
/* Signal Transfer Property Type */
#define COM_TRIGGERED                   0
#define COM_PENDING                     1
/* Ipdu Element Type */
#define COM_SIGNAL                      0
#define COM_SIGNAL_GROUP                1
/* Com_iSignalGroupingById table constant */
#define COM_GROUP_SIGNAL                1
/* Transmission Mode Type */
#define COM_DIRECT                      0
#define COM_PERIODIC                    1
#define COM_MIXED                       2
#define COM_NONE                        3
/* Filter Algorithm Type */
#define COM_ALWAYS                      0
#define COM_NEVER                       1
#define COM_MASKED_NEW_EQUALS_X         2
#define COM_MASKED_NEW_DIFFERS_X        3
#define COM_MSK_NEW_DIFFERS_MSK_OLD     4
#define COM_NEW_IS_WITHIN               5
#define COM_NEW_IS_OUTSIDE              6
#define COM_ONE_EVERY_N                 7

	
/*****************************************************************************/
/* DEFINITION OF TYPES                                                       */
/*****************************************************************************/


typedef uint8  Com_SignalIdType;



typedef uint8  Com_SignalGroupIdType;


typedef uint8  Com_PduGroupIdType;
#define COM_IPDU_GROUP_OUT_IDX          0xFF


typedef uint8  Com_SingleSignalIndexType;
#define COM_SINGLE_SIGNAL_OUT_IDX       0xFF



typedef uint8  Com_GroupSignalIndexType;
#define COM_GROUP_SIGNAL_OUT_IDX        0xFF



typedef uint8  Com_AllSignalIndexType;
#define COM_ALL_SIGNAL_OUT_IDX          0xFF



typedef uint8  Com_SignalGroupIndexType;
#define COM_SIGNAL_GROUP_OUT_IDX        0xFF



typedef uint8  Com_NetworkSignalIndexType;
#define COM_NETWORK_SIGNAL_OUT_IDX      0xFF



typedef uint8  Com_TransmissionModeIndexType;
#define COM_TR_MODE_OUT_IDX             0xFF



typedef uint8  Com_FilterIndexType;
#define COM_FILTER_OUT_IDX              0xFF



typedef uint8  Com_IPduIndexType;
#define COM_IPDU_OUT_IDX                0xFF



typedef struct Com_FilterType
{
  VAR(uint8, TYPEDEF)   Mask_Period_Max;
  VAR(uint8, TYPEDEF)   X_Offset_Min;

  VAR(uint8, TYPEDEF)   Algorithm;
} Com_FilterType;

typedef struct Com_SignalRouteType
{
  VAR(Com_SingleSignalIndexType, TYPEDEF) SourceIdx;
  VAR(Com_SingleSignalIndexType, TYPEDEF) DestIdx;
} Com_SignalRouteType;

typedef struct Com_SignalGroupRouteType
{
  VAR(Com_SignalGroupIndexType, TYPEDEF) SourceIdx;
  VAR(Com_SignalGroupIndexType, TYPEDEF) DestIdx;
} Com_SignalGroupRouteType;

typedef struct Com_GroupSignalRouteType
{
  VAR(Com_GroupSignalIndexType, TYPEDEF) SourceIdx;
  VAR(Com_GroupSignalIndexType, TYPEDEF) DestIdx;
} Com_GroupSignalRouteType;


typedef struct Com_TransmissionModeType
{
  VAR(uint8, TYPEDEF)   TimePeriodFactor;
    
    
  VAR(uint8, TYPEDEF)   TimeOffsetFactor;
    
    
  VAR(uint8, TYPEDEF)   RepetitionPeriodFactor;
    
  VAR(uint8, TYPEDEF)   NumberOfRepetitions;
  VAR(uint8, TYPEDEF)   Mode;
} Com_TransmissionModeType;



/******* I-PDU *******/


typedef struct Com_RxIpduConfigType
{
  P2VAR(uint8, TYPEDEF, AUTOSAR_COMSTACKDATA) ValuePtr;
  VAR(uint8, TYPEDEF)                         FirstTimeoutFactor;
  VAR(uint8, TYPEDEF)                         TimeoutFactor;
  VAR(Com_NetworkSignalIndexType, TYPEDEF)    FirstElementInIpduIdx;
  VAR(Com_IPduIndexType, TYPEDEF)             NextIpduInGroupIdx;
  VAR(Com_IPduIndexType, TYPEDEF)             DeadlineTimerIndex;
  VAR(uint8, TYPEDEF)                         Length; /* in bytes */
  VAR(uint8, TYPEDEF)                         SignalProcessing        : 1;
  VAR(uint8, TYPEDEF)                         FirstElementInIpduType  : 1;
  VAR(uint8, TYPEDEF)                         Unused                  : 6;
} Com_RxIpduConfigType;


typedef struct Com_TxIpduConfigType
{
  P2VAR(uint8, TYPEDEF, AUTOSAR_COMSTACKDATA) ValuePtr;
  VAR(uint8, TYPEDEF)                         FirstTimeoutFactor;
  VAR(uint8, TYPEDEF)                         TimeoutFactor;
	
  VAR(uint8, TYPEDEF)                         MinimumDelayTimeFactor;
    
    
  VAR(Com_TransmissionModeIndexType, TYPEDEF) TransmissionModeIdx;
    
  VAR(Com_NetworkSignalIndexType, TYPEDEF)    FirstElementInIpduIdx;
  VAR(Com_IPduIndexType, TYPEDEF)             NextIpduInGroupIdx;
  VAR(Com_IPduIndexType, TYPEDEF)             TimerIndex[4];
  VAR(PduIdType, TYPEDEF)                     HandleId;
  VAR(uint8, TYPEDEF)                         DefaultValue;
  VAR(uint8, TYPEDEF)                         Length; /* in bytes */
  VAR(uint8, TYPEDEF)                         SignalProcessing        : 1;
                                          /* if no signal Mk or a Mk signals F_ALWAYS : */
  VAR(uint8, TYPEDEF)                         TMSalwaysTRUE           : 1;
  VAR(uint8, TYPEDEF)                         FirstElementInIpduType  : 1;
  VAR(uint8, TYPEDEF)                         Unused                  : 4;
} Com_TxIpduConfigType;

typedef struct Com_RxIpduInfoType
{
  VAR(uint8, TYPEDEF)             IpduWritingStatus         : 2;
  VAR(uint8, TYPEDEF)             DeadlineMonitoringEnabled : 1;
  VAR(uint8, TYPEDEF)             IpduGroupRunning          : 1;
  VAR(uint8, TYPEDEF)             Unused                    : 4;
} Com_RxIpduInfoType;

typedef struct Com_TxIpduInfoType
{
  VAR(uint8, TYPEDEF)             DeadlineMonitoringEnabled : 1;
  VAR(uint8, TYPEDEF)             IpduGroupRunning          : 1;
  VAR(uint8, TYPEDEF)             Triggered                 : 1;
  VAR(uint8, TYPEDEF)             TMS                       : 1;
  VAR(uint8, TYPEDEF)             DeadlineTimerRunning      : 1;
  VAR(uint8, TYPEDEF)             MDTimerRunning            : 1;
  VAR(uint8, TYPEDEF)             DirectTimerRunning        : 1;
  VAR(uint8, TYPEDEF)             PeriodicTimerRunning      : 1;
} Com_TxIpduInfoType;

typedef struct Com_IpduGroupConfigType
{
  VAR(Com_IPduIndexType, TYPEDEF)   FirstElementInGroupIdx;
  VAR(Com_PduGroupIdType, TYPEDEF)  NextIpduGroupInGroupIdx;
  VAR(uint8, TYPEDEF)               Direction   : 1;
  VAR(uint8, TYPEDEF)               ElementType : 1;
  VAR(uint8, TYPEDEF)               Unused      : 6;
} Com_IpduGroupConfigType;


/******* Signal *******/



typedef struct Com_RxSignalConfigType
{
  P2CONST(void, TYPEDEF, COM_CONST)         DataInvalidValuePtr;
  P2CONST(void, TYPEDEF, COM_CONST)         InitValuePtr;
  P2VAR(void, TYPEDEF, COM_VAR_NOINIT)      OldValuePtr;
  VAR(uint8, TYPEDEF)                       FirstTimeoutFactor;
  VAR(uint8, TYPEDEF)                       TimeoutFactor;
  VAR(Com_NetworkSignalIndexType, TYPEDEF)  NextElementInIpduIdx;
  VAR(Com_SingleSignalIndexType, TYPEDEF)   DeadlineTimerIndex;
  VAR(Com_SingleSignalIndexType, TYPEDEF)   RoutingListIndex;
  
VAR(uint16, TYPEDEF)                      ErrorNotificationCbkIdx;
VAR(uint16, TYPEDEF)                      TimeoutNotificationCbkIdx;
VAR(uint16, TYPEDEF)                      NotificationCbkIdx;

  VAR(Com_IPduIndexType, TYPEDEF)           IpduIdx;
	
  VAR(uint16, TYPEDEF)                      UpdateBitPosition;
  VAR(uint32, TYPEDEF)                      BitPosition            : 11;
  VAR(uint32, TYPEDEF)                      ByteLength             : 4;
  VAR(uint32, TYPEDEF)                      DataInvalidAction      : 1;
  VAR(uint32, TYPEDEF)                      BitSize                : 7;
  VAR(uint32, TYPEDEF)                      Endianness             : 2;
  VAR(uint32, TYPEDEF)                      RxDataTimeoutAction    : 1;
  VAR(uint32, TYPEDEF)                      NegativeType           : 1;
  VAR(uint32, TYPEDEF)                      IsGatewayed            : 1;
  VAR(uint32, TYPEDEF)                      IsBytesArray           : 1;
  VAR(uint32, TYPEDEF)                      Unused                 : 3;
} Com_RxSignalConfigType;




typedef struct Com_TxSignalConfigType
{
  P2CONST(void, TYPEDEF, COM_CONST)         DataInvalidValuePtr;
  P2CONST(void, TYPEDEF, COM_CONST)         InitValuePtr;
  P2VAR(void, TYPEDEF, COM_VAR_NOINIT)      OldValuePtr;
  VAR(Com_NetworkSignalIndexType, TYPEDEF)  NextElementInIpduIdx;
  
VAR(uint16, TYPEDEF)                      ErrorNotificationCbkIdx;
VAR(uint16, TYPEDEF)                      TimeoutNotificationCbkIdx;
VAR(uint16, TYPEDEF)                      NotificationCbkIdx;

  VAR(Com_IPduIndexType, TYPEDEF)           IpduIdx;
	
  VAR(uint16, TYPEDEF)                      UpdateBitPosition;
  VAR(uint16, TYPEDEF)                      BitPosition;
  VAR(uint16, TYPEDEF)                      BitSize                : 7;
  VAR(uint16, TYPEDEF)                      ByteLength             : 4;
  VAR(uint16, TYPEDEF)                      Endianness             : 2;
  VAR(uint16, TYPEDEF)                      TransferProperty       : 1;
  VAR(uint16, TYPEDEF)                      NegativeType           : 1;
  VAR(uint16, TYPEDEF)                      IsBytesArray           : 1;
} Com_TxSignalConfigType;




typedef struct Com_RxSignalGroupConfigType
{
  VAR(uint16, TYPEDEF)                      UpdateBitPosition               : 11;
  VAR(uint16, TYPEDEF)                      DataInvalidAction               : 2;
  VAR(uint16, TYPEDEF)                      RxDataTimeoutAction             : 1;
  VAR(uint16, TYPEDEF)                      NextElementInIpduType           : 1;
  VAR(uint16, TYPEDEF)                      IsGatewayed                     : 1;
  VAR(uint8, TYPEDEF)                       FirstTimeoutFactor;
  VAR(uint8, TYPEDEF)                       TimeoutFactor;
  VAR(Com_NetworkSignalIndexType, TYPEDEF)  NextElementInIpduIdx;
  VAR(Com_SignalGroupIndexType, TYPEDEF)    DeadlineTimerIndex;
  VAR(Com_SignalGroupIndexType, TYPEDEF)    RoutingListIndex;
  VAR(Com_GroupSignalIndexType, TYPEDEF)    FirstSignalInGroupIdx;
  VAR(Com_IPduIndexType, TYPEDEF)           IpduIdx;
  
VAR(uint16, TYPEDEF)                      ErrorNotificationCbkIdx;
VAR(uint16, TYPEDEF)                      TimeoutNotificationCbkIdx;
VAR(uint16, TYPEDEF)                      NotificationCbkIdx;

} Com_RxSignalGroupConfigType;




typedef struct Com_TxSignalGroupConfigType
{
  VAR(uint16, TYPEDEF)                      UpdateBitPosition               : 11;
  VAR(uint16, TYPEDEF)                      TransferProperty                : 1;
  VAR(uint16, TYPEDEF)                      NextElementInIpduType           : 1;
  VAR(uint16, TYPEDEF)                      Unused                          : 3;
  VAR(Com_NetworkSignalIndexType, TYPEDEF)  NextElementInIpduIdx;
  VAR(Com_GroupSignalIndexType, TYPEDEF)    FirstSignalInGroupIdx;
  VAR(Com_IPduIndexType, TYPEDEF)           IpduIdx;
  
VAR(uint16, TYPEDEF)                      ErrorNotificationCbkIdx;
VAR(uint16, TYPEDEF)                      TimeoutNotificationCbkIdx;
VAR(uint16, TYPEDEF)                      NotificationCbkIdx;

} Com_TxSignalGroupConfigType;


typedef struct Com_RxGroupSignalConfigType
{
  P2FUNC(void, RTE_APPL_CODE,               InvalidNotificationCallback)(void);
  P2CONST(void, TYPEDEF, COM_CONST)         DataInvalidValuePtr;
  P2CONST(void, TYPEDEF, COM_CONST)         InitValuePtr;
  P2VAR(void, TYPEDEF, COM_VAR_NOINIT)      OldValuePtr;
  VAR(Com_GroupSignalIndexType, TYPEDEF)    NextSignalInGroupIdx;
  VAR(Com_GroupSignalIndexType, TYPEDEF)    RoutingListIndex;
  VAR(Com_SignalGroupIndexType, TYPEDEF)    GroupIdx;
  VAR(uint32, TYPEDEF)                      BitPosition  : 11;
  VAR(uint32, TYPEDEF)                      ByteLength   : 4;
  VAR(uint32, TYPEDEF)                      NegativeType : 1;
  VAR(uint32, TYPEDEF)                      BitSize      : 7;
  VAR(uint32, TYPEDEF)                      Endianness   : 2;
  VAR(uint32, TYPEDEF)                      IsGatewayed  : 1;
  VAR(uint32, TYPEDEF)                      IsBytesArray : 1;
  VAR(uint32, TYPEDEF)                      Unused       : 5;
} Com_RxGroupSignalConfigType;


typedef struct Com_TxGroupSignalConfigType
{
  P2CONST(void, TYPEDEF, COM_CONST)         DataInvalidValuePtr;
  P2CONST(void, TYPEDEF, COM_CONST)         InitValuePtr;
  P2VAR(void, TYPEDEF, COM_VAR_NOINIT)      OldValuePtr;
  VAR(Com_GroupSignalIndexType, TYPEDEF)    NextSignalInGroupIdx;
  VAR(Com_SignalGroupIndexType, TYPEDEF)    GroupIdx;

  VAR(uint32, TYPEDEF)                      BitPosition  : 11;
  VAR(uint32, TYPEDEF)                      ByteLength   : 4;
  VAR(uint32, TYPEDEF)                      NegativeType : 1;
  VAR(uint32, TYPEDEF)                      BitSize      : 7;
  VAR(uint32, TYPEDEF)                      Endianness   : 2;
  VAR(uint32, TYPEDEF)                      IsBytesArray : 1;
  VAR(uint32, TYPEDEF)                      Unused       : 6;
} Com_TxGroupSignalConfigType;

/* Com_ConfigType not used in link-time variant */
typedef uint8 Com_ConfigType;

typedef P2FUNC(boolean, RTE_APPL_CODE, Com_IpduCalloutTableType)(
  CONST(PduIdType, TYPEDEF)                     ID,
  P2CONST(uint8, TYPEDEF, AUTOSAR_COMSTACKDATA) ipduD
);



typedef P2FUNC(void, RTE_APPL_CODE, Com_RxSignalCfgTimeoutNotificationCbkType)(void); 
typedef P2FUNC(void, RTE_APPL_CODE, Com_RxSignalCfgInvalidNotificationCbkType)(void); 
typedef P2FUNC(void, RTE_APPL_CODE, Com_RxSignalCfgNotificationCbkType)(void); 




typedef P2FUNC(void, RTE_APPL_CODE, Com_TxSignalCfgErrorNotificationCbkType)(void); 
typedef P2FUNC(void, RTE_APPL_CODE, Com_TxSignalCfgTimeoutNotificationCbkType)(void); 
typedef P2FUNC(void, RTE_APPL_CODE, Com_TxSignalCfgNotificationCbkType)(void); 




typedef P2FUNC(void, RTE_APPL_CODE, Com_TxSignalGroupCfgErrorNotificationCbkType)(void); 
typedef P2FUNC(void, RTE_APPL_CODE, Com_TxSignalGroupCfgTimeoutNotificationCbkType)(void); 
typedef P2FUNC(void, RTE_APPL_CODE, Com_TxSignalGroupCfgNotificationCbkType)(void); 




typedef P2FUNC(void, RTE_APPL_CODE, Com_RxSignalGroupCfgTimeoutNotificationCbkType)(void); 
typedef P2FUNC(void, RTE_APPL_CODE, Com_RxSignalGroupCfgInvalidNotificationCbkType)(void); 
typedef P2FUNC(void, RTE_APPL_CODE, Com_RxSignalGroupCfgNotificationCbkType)(void); 



	
/*****************************************************************************/
/* DECLARATION OF CONFIGURATION CONSTANTS                                    */
/*****************************************************************************/
#define COM_START_SEC_CONST_UNSPECIFIED
#include "MemMap.h"


extern CONST(Com_RxIpduConfigType,COM_CONST)        Com_RxIpduConfig[];




extern CONST(Com_TxIpduConfigType,COM_CONST)        Com_TxIpduConfig[];



extern CONST(Com_IpduGroupConfigType,COM_CONST)     Com_IpduGroupConfig[];

extern CONST(Com_RxSignalCfgTimeoutNotificationCbkType, COM_CONST) Com_RxSignalCfgTimeoutNotificationCbk[1];
extern CONST(Com_RxSignalCfgInvalidNotificationCbkType, COM_CONST) Com_RxSignalCfgInvalidNotificationCbk[1];
extern CONST(Com_RxSignalCfgNotificationCbkType, COM_CONST)        Com_RxSignalCfgNotificationCbk[9];
extern CONST(Com_RxSignalConfigType,COM_CONST)      Com_RxSignalConfig[];




extern CONST(Com_TxSignalCfgErrorNotificationCbkType, COM_CONST)   Com_TxSignalCfgErrorNotificationCbk[];
extern CONST(Com_TxSignalCfgTimeoutNotificationCbkType, COM_CONST) Com_TxSignalCfgTimeoutNotificationCbk[];
extern CONST(Com_TxSignalCfgNotificationCbkType, COM_CONST)        Com_TxSignalCfgNotificationCbk[];
extern CONST(Com_TxSignalConfigType,COM_CONST)      Com_TxSignalConfig[];




extern CONST(Com_RxSignalGroupCfgTimeoutNotificationCbkType, COM_CONST) Com_RxSignalGroupCfgTimeoutNotificationCbk[];
extern CONST(Com_RxSignalGroupCfgInvalidNotificationCbkType, COM_CONST)   Com_RxSignalGroupCfgInvalidNotificationCbk[];
extern CONST(Com_RxSignalGroupCfgNotificationCbkType, COM_CONST)        Com_RxSignalGroupCfgNotificationCbk[];
extern CONST(Com_RxSignalGroupConfigType,COM_CONST) Com_RxSignalGroupConfig[];




extern CONST(Com_TxSignalGroupCfgErrorNotificationCbkType, COM_CONST)   Com_TxSignalGroupCfgErrorNotificationCbk[];
extern CONST(Com_TxSignalGroupCfgTimeoutNotificationCbkType, COM_CONST) Com_TxSignalGroupCfgTimeoutNotificationCbk[];
extern CONST(Com_TxSignalGroupCfgNotificationCbkType, COM_CONST)        Com_TxSignalGroupCfgNotificationCbk[];
extern CONST(Com_TxSignalGroupConfigType,COM_CONST) Com_TxSignalGroupConfig[];




extern CONST(Com_RxGroupSignalConfigType,COM_CONST) Com_RxGroupSignalConfig[];




extern CONST(Com_TxGroupSignalConfigType,COM_CONST) Com_TxGroupSignalConfig[];




extern CONST(Com_FilterType,COM_CONST)              Com_FilterConfig[];












extern CONST(Com_TransmissionModeType,COM_CONST)    Com_TransmissionMode[];




extern CONST(Com_IpduCalloutTableType,COM_CONST)    Com_RxIpduCalloutTable[];




extern CONST(Com_IpduCalloutTableType,COM_CONST)    Com_TxIpduCalloutTable[];


extern CONST(Com_AllSignalIndexType, COM_CONST)     Com_iSignalIndexById[];



extern CONST(Com_SignalGroupIndexType, COM_CONST)   Com_iSignalGroupIndexById[];

#define COM_STOP_SEC_CONST_UNSPECIFIED
#include "MemMap.h"



#define COM_START_SEC_CONST_8BIT
#include "MemMap.h"
extern CONST(uint8, COM_CONST)                      Com_iSignalDirectionById[];
	
extern CONST(uint8, COM_CONST)                      Com_iSignalGroupingById[];
extern CONST(uint8, COM_CONST)                      Com_iSignalGroupDirectionById[];
	
#define COM_STOP_SEC_CONST_8BIT
#include "MemMap.h"



	
/*****************************************************************************/
/* DECLARATION OF CONFIGURATION DEPENDENT VARIABLES OF MODULE                */
/*****************************************************************************/

#define COM_START_SEC_VAR_NOINIT_UNSPECIFIED
#include "MemMap.h"

extern VAR(Com_RxIpduInfoType, COM_VAR_NOINIT)       Com_RxIpduInfo[];


extern VAR(Com_TxIpduInfoType, COM_VAR_NOINIT)       Com_TxIpduInfo[];

#define COM_STOP_SEC_VAR_NOINIT_UNSPECIFIED
#include "MemMap.h"

#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
extern VAR(uint8, COM_VAR_NOINIT) Com_iTxIPduTransmitCycle[];
#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"






#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"

extern VAR(uint8, COM_VAR_NOINIT) Com_iRxIpduNextReceivedIdx[];


extern VAR(uint8, COM_VAR_NOINIT) Com_iTxIpduNextConfirmIpduIdx[];

#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"


#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"



extern VAR(uint8, COM_VAR_NOINIT) Com_iCurrentRxSgValuePtrIsInit[];


extern VAR(uint8, COM_VAR_NOINIT) Com_iCurrentRxGrSgValuePtrIsInit[];

#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"









/* Tx IPdu direct transmission monitoring */
#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
typedef uint8 Com_DirectSendTimerType;
extern VAR(Com_DirectSendTimerType, COM_VAR_NOINIT) Com_iTxIPduDirectTimer[];
#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
extern VAR(uint8, COM_VAR_NOINIT) Com_iTxIPduRepetNumber[];
#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
extern VAR(uint8, COM_VAR_NOINIT) Com_iTxIPduDirectNextIdx[];
#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
#define COM_START_SEC_CONST_UNSPECIFIED
#include "MemMap.h"
extern CONST(Com_IPduIndexType, COM_CONST)	Com_iTxIPduDirectTimerNumber;
#define COM_STOP_SEC_CONST_UNSPECIFIED
#include "MemMap.h"




/* Tx IPdu periodic transmission monitoring */
#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
typedef uint8 Com_PeriodicTimerType;
extern VAR(Com_PeriodicTimerType, COM_VAR_NOINIT) Com_iTxIPduPeriodicTimer[];
#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
extern VAR(uint8, COM_VAR_NOINIT) Com_iTxIPduPeriodicNextIdx[];
#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
#define COM_START_SEC_CONST_UNSPECIFIED
#include "MemMap.h"
extern CONST(Com_IPduIndexType, COM_CONST)	Com_iTxIPduPeriodicTimerNumber;
#define COM_STOP_SEC_CONST_UNSPECIFIED
#include "MemMap.h"












/* Routing Lists */


#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
extern VAR(uint8, COM_VAR_NOINIT) Com_iRxSgNextRoutingIdx[];
#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
#define COM_START_SEC_CONST_UNSPECIFIED
#include "MemMap.h"
extern CONST(Com_SingleSignalIndexType, COM_CONST)	Com_iRxSgRoutingListIdxNumber;
#define COM_STOP_SEC_CONST_UNSPECIFIED
#include "MemMap.h"




#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
extern VAR(uint8, COM_VAR_NOINIT) Com_iRxSgGrNextRoutingIdx[];
#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
#define COM_START_SEC_CONST_UNSPECIFIED
#include "MemMap.h"
extern CONST(Com_SignalGroupIndexType, COM_CONST)	Com_iRxSgGrRoutingListIdxNumber;
#define COM_STOP_SEC_CONST_UNSPECIFIED
#include "MemMap.h"




#define COM_START_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
extern VAR(uint8, COM_VAR_NOINIT) Com_iRxGrSgNextRoutingIdx[];
#define COM_STOP_SEC_VAR_NOINIT_8BIT
#include "MemMap.h"
#define COM_START_SEC_CONST_UNSPECIFIED
#include "MemMap.h"
extern CONST(Com_GroupSignalIndexType, COM_CONST)	Com_iRxGrSgRoutingListIdxNumber;
#define COM_STOP_SEC_CONST_UNSPECIFIED
#include "MemMap.h"



#endif /* COM_CFG_H */
	