.class public interface abstract Lmega/car/config/ExtAircdVent;
.super Ljava/lang/Object;
.source "ExtAircdVent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/ExtAircdVent$ParamsVentMode;,
        Lmega/car/config/ExtAircdVent$ParamsVentDirect;,
        Lmega/car/config/ExtAircdVent$ParamsVentHMode;,
        Lmega/car/config/ExtAircdVent$ParamsVentVMode;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x14
    permission = "mega.car.permission.CLIMATE"
.end annotation


# static fields
.field public static final ID_AIR_VENT_CTRL_AUTO_CL_H:I = 0x1400001c

.field public static final ID_AIR_VENT_CTRL_AUTO_CL_V:I = 0x1400001b

.field public static final ID_AIR_VENT_CTRL_AUTO_CR_H:I = 0x1400001e

.field public static final ID_AIR_VENT_CTRL_AUTO_CR_V:I = 0x1400001d

.field public static final ID_AIR_VENT_CTRL_AUTO_L_H:I = 0x1400001a

.field public static final ID_AIR_VENT_CTRL_AUTO_L_V:I = 0x14000019

.field public static final ID_AIR_VENT_CTRL_AUTO_MAX_NUM:I = 0x14000024

.field public static final ID_AIR_VENT_CTRL_AUTO_R_H:I = 0x14000020

.field public static final ID_AIR_VENT_CTRL_AUTO_R_V:I = 0x1400001f

.field public static final ID_AIR_VENT_CTRL_MAX_CL_H:I = 0x1400000c

.field public static final ID_AIR_VENT_CTRL_MAX_CL_V:I = 0x1400000b

.field public static final ID_AIR_VENT_CTRL_MAX_CR_H:I = 0x1400000e

.field public static final ID_AIR_VENT_CTRL_MAX_CR_V:I = 0x1400000d

.field public static final ID_AIR_VENT_CTRL_MAX_L_H:I = 0x1400000a

.field public static final ID_AIR_VENT_CTRL_MAX_L_V:I = 0x14000009

.field public static final ID_AIR_VENT_CTRL_MAX_MAX_NUM:I = 0x14000022

.field public static final ID_AIR_VENT_CTRL_MAX_R_H:I = 0x14000010

.field public static final ID_AIR_VENT_CTRL_MAX_R_V:I = 0x1400000f

.field public static final ID_AIR_VENT_CTRL_MIN_CL_H:I = 0x14000014

.field public static final ID_AIR_VENT_CTRL_MIN_CL_V:I = 0x14000013

.field public static final ID_AIR_VENT_CTRL_MIN_CR_H:I = 0x14000016

.field public static final ID_AIR_VENT_CTRL_MIN_CR_V:I = 0x14000015

.field public static final ID_AIR_VENT_CTRL_MIN_L_H:I = 0x14000012

.field public static final ID_AIR_VENT_CTRL_MIN_L_V:I = 0x14000011

.field public static final ID_AIR_VENT_CTRL_MIN_MAX_NUM:I = 0x14000023

.field public static final ID_AIR_VENT_CTRL_MIN_R_H:I = 0x14000018

.field public static final ID_AIR_VENT_CTRL_MIN_R_V:I = 0x14000017

.field public static final ID_AIR_VENT_ID_CL_H:I = 0x14000004

.field public static final ID_AIR_VENT_ID_CL_V:I = 0x14000003

.field public static final ID_AIR_VENT_ID_CR_H:I = 0x14000006

.field public static final ID_AIR_VENT_ID_CR_V:I = 0x14000005

.field public static final ID_AIR_VENT_ID_L_H:I = 0x14000002

.field public static final ID_AIR_VENT_ID_L_V:I = 0x14000001

.field public static final ID_AIR_VENT_ID_MAX_NUM:I = 0x14000021

.field public static final ID_AIR_VENT_ID_R_H:I = 0x14000008

.field public static final ID_AIR_VENT_ID_R_V:I = 0x14000007

.field public static final ID_AIR_VENT_STS_MOTOR_BLOCKED_CL_H:I = 0x14000028

.field public static final ID_AIR_VENT_STS_MOTOR_BLOCKED_CL_V:I = 0x14000027

.field public static final ID_AIR_VENT_STS_MOTOR_BLOCKED_CR_H:I = 0x1400002a

.field public static final ID_AIR_VENT_STS_MOTOR_BLOCKED_CR_V:I = 0x14000029

.field public static final ID_AIR_VENT_STS_MOTOR_BLOCKED_L_H:I = 0x14000026

.field public static final ID_AIR_VENT_STS_MOTOR_BLOCKED_L_V:I = 0x14000025

.field public static final ID_AIR_VENT_STS_MOTOR_BLOCKED_MAX_NUM:I = 0x1400002d

.field public static final ID_AIR_VENT_STS_MOTOR_BLOCKED_R_H:I = 0x1400002c

.field public static final ID_AIR_VENT_STS_MOTOR_BLOCKED_R_V:I = 0x1400002b

.field public static final ID_AIR_VENT_STS_MOTOR_ELEC_FAULT_CL_H:I = 0x14000043

.field public static final ID_AIR_VENT_STS_MOTOR_ELEC_FAULT_CL_V:I = 0x14000042

.field public static final ID_AIR_VENT_STS_MOTOR_ELEC_FAULT_CR_H:I = 0x14000045

.field public static final ID_AIR_VENT_STS_MOTOR_ELEC_FAULT_CR_V:I = 0x14000044

.field public static final ID_AIR_VENT_STS_MOTOR_ELEC_FAULT_L_H:I = 0x14000041

.field public static final ID_AIR_VENT_STS_MOTOR_ELEC_FAULT_L_V:I = 0x14000040

.field public static final ID_AIR_VENT_STS_MOTOR_ELEC_FAULT_MAX_NUM:I = 0x14000048

.field public static final ID_AIR_VENT_STS_MOTOR_ELEC_FAULT_R_H:I = 0x14000047

.field public static final ID_AIR_VENT_STS_MOTOR_ELEC_FAULT_R_V:I = 0x14000046

.field public static final ID_AIR_VENT_STS_MOTOR_HEAT_FAULT_CL_H:I = 0x1400003a

.field public static final ID_AIR_VENT_STS_MOTOR_HEAT_FAULT_CL_V:I = 0x14000039

.field public static final ID_AIR_VENT_STS_MOTOR_HEAT_FAULT_CR_H:I = 0x1400003c

.field public static final ID_AIR_VENT_STS_MOTOR_HEAT_FAULT_CR_V:I = 0x1400003b

.field public static final ID_AIR_VENT_STS_MOTOR_HEAT_FAULT_L_H:I = 0x14000038

.field public static final ID_AIR_VENT_STS_MOTOR_HEAT_FAULT_L_V:I = 0x14000037

.field public static final ID_AIR_VENT_STS_MOTOR_HEAT_FAULT_MAX_NUM:I = 0x1400003f

.field public static final ID_AIR_VENT_STS_MOTOR_HEAT_FAULT_R_H:I = 0x1400003e

.field public static final ID_AIR_VENT_STS_MOTOR_HEAT_FAULT_R_V:I = 0x1400003d

.field public static final ID_AIR_VENT_STS_MOTOR_VOLT_FAULT_CL_H:I = 0x14000031

.field public static final ID_AIR_VENT_STS_MOTOR_VOLT_FAULT_CL_V:I = 0x14000030

.field public static final ID_AIR_VENT_STS_MOTOR_VOLT_FAULT_CR_H:I = 0x14000033

.field public static final ID_AIR_VENT_STS_MOTOR_VOLT_FAULT_CR_V:I = 0x14000032

.field public static final ID_AIR_VENT_STS_MOTOR_VOLT_FAULT_L_H:I = 0x1400002f

.field public static final ID_AIR_VENT_STS_MOTOR_VOLT_FAULT_L_V:I = 0x1400002e

.field public static final ID_AIR_VENT_STS_MOTOR_VOLT_FAULT_MAX_NUM:I = 0x14000036

.field public static final ID_AIR_VENT_STS_MOTOR_VOLT_FAULT_R_H:I = 0x14000035

.field public static final ID_AIR_VENT_STS_MOTOR_VOLT_FAULT_R_V:I = 0x14000034

.field public static final MGR_ID:I = 0x14
