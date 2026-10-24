.class public interface abstract Lmega/car/config/EntryLocks;
.super Ljava/lang/Object;
.source "EntryLocks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/EntryLocks$ChargeLidStatesH53;,
        Lmega/car/config/EntryLocks$POTOpenSts;,
        Lmega/car/config/EntryLocks$CarsearchHorn;,
        Lmega/car/config/EntryLocks$KeyInfo;,
        Lmega/car/config/EntryLocks$ChargePlug;,
        Lmega/car/config/EntryLocks$PlgmDoorSts;,
        Lmega/car/config/EntryLocks$KeysUnlockMode;,
        Lmega/car/config/EntryLocks$AutoTrunkOpen;,
        Lmega/car/config/EntryLocks$ParamsLocksModeKeyUnlock;,
        Lmega/car/config/EntryLocks$ParamsLocksGearParkUnlockMode;,
        Lmega/car/config/EntryLocks$ParamsLocksCentralLockStatus;,
        Lmega/car/config/EntryLocks$EnableDisable;,
        Lmega/car/config/EntryLocks$CloseOpen;,
        Lmega/car/config/EntryLocks$LockUnlock;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x6
    permission = "mega.car.permission.ENTRY_LOCK"
.end annotation


# static fields
.field public static final ID_AC_CHARGE_PLUGGED:I = 0x600000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/ACChargePlugged/Set"
        subscribe = "VehicleCharge/ACChargePlugged"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_CHARGE_PORT:I = 0x6000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/ACChargePort/Set"
        subscribe = "VehicleCharge/ACChargePort"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLUETOOTH_KEY_ENABLE:I = 0x6000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/BTKeyPermission/Set"
        subscribe = "BodyInfo/BTKeyPermission"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_PORT:I = 0x600000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/ChargeHood/Set"
        subscribe = "VehicleCharge/ChargeHood"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DC_CHARGE_PLUGGED:I = 0x600000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/DCChargePlugged/Set"
        subscribe = "VehicleCharge/DCChargePlugged"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DC_CHARGE_PORT:I = 0x6000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/DCChargePort/Set"
        subscribe = "VehicleCharge/DCChargePort"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR:I = 0x6000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/Door/Set"
        subscribe = "VehicleDoor/Door"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_BACK:I = 0x6000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/Door/Back/Set"
        subscribe = "VehicleDoor/Door/Back"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_FRONTLEFT:I = 0x600002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/Door/FrontLeft/Set"
        subscribe = "VehicleDoor/Door/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_FRONTRIGHT:I = 0x600002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/Door/FrontRight/Set"
        subscribe = "VehicleDoor/Door/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_HOOD:I = 0x6000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/Door/Hood/Set"
        subscribe = "VehicleDoor/Door/Hood"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_LOCK:I = 0x600000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DoorLock/Set"
        subscribe = "VehicleDoor/DoorLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_LOCK_BACK:I = 0x6000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DoorLock/Back/Set"
        subscribe = "VehicleDoor/DoorLock/Back"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_LOCK_FRONTLEFT:I = 0x6000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DoorLock/FrontLeft/Set"
        subscribe = "VehicleDoor/DoorLock/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_LOCK_FRONTRIGHT:I = 0x6000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DoorLock/FrontRight/Set"
        subscribe = "VehicleDoor/DoorLock/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_LOCK_HOOD:I = 0x6000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DoorLock/Hood/Set"
        subscribe = "VehicleDoor/DoorLock/Hood"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_LOCK_REARLEFT:I = 0x6000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DoorLock/RearLeft/Set"
        subscribe = "VehicleDoor/DoorLock/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_LOCK_REARRIGHT:I = 0x6000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DoorLock/RearRight/Set"
        subscribe = "VehicleDoor/DoorLock/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_REARLEFT:I = 0x600002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/Door/RearLeft/Set"
        subscribe = "VehicleDoor/Door/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_REARRIGHT:I = 0x600002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/Door/RearRight/Set"
        subscribe = "VehicleDoor/Door/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENTRY_SYSTEM_HORN_CFG:I = 0x6000016

.field public static final ID_ENTRY_SYSTEM_PLGM_FUNC_CFG:I = 0x600001d

.field public static final ID_ENTRY_SYSTEM_REMOTE_CTRL_WINDOW_CFG:I = 0x600001c

.field public static final ID_ENTRY_SYSTEM_REQ_VEHICLE_LOCK:I = 0x6000020

.field public static final ID_ENTRY_SYSTEM_SPD_AUTO_LOCK_CFG:I = 0x600001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DrivingAutoLock/Set"
        subscribe = "VehicleDoor/DrivingAutoLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENTRY_SYSTEM_STS_ATWS_ST:I = 0x600001f

.field public static final ID_ENTRY_SYSTEM_STS_PLGM_DOOR_ST:I = 0x600001e

.field public static final ID_EXT_LIGHT_CARSEARCH_HORN:I = 0x6000023

.field public static final ID_FUEL_PORT:I = 0x600000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/FeulPort/Set"
        subscribe = "BodyInfo/FeulPort"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GEAR_UNLOCK_TYPE:I = 0x6000026

.field public static final ID_GLOVE_CASE:I = 0x6000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/GloveCase/Set"
        subscribe = "VehicleDoor/GloveCase"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_KEY_INFO:I = 0x6000022

.field public static final ID_LOCKS_CENTRAL_LOCK_STATUS:I = 0x6000005

.field public static final ID_LOCKS_CHILD_SEC_DOOR_LOCK:I = 0x6000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/ChildSafetyLock/Set"
        subscribe = "VehicleDoor/ChildSafetyLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCKS_CHILD_SEC_DOOR_LOCK_ALL:I = 0x600002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/ChildSafetyLock/All/Set"
        subscribe = "VehicleDoor/ChildSafetyLock/All"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCKS_CHILD_SEC_DOOR_LOCK_FRONTLEFT:I = 0x6000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/ChildSafetyLock/FrontLeft/Set"
        subscribe = "VehicleDoor/ChildSafetyLock/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCKS_CHILD_SEC_DOOR_LOCK_FRONTRIGHT:I = 0x6000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/ChildSafetyLock/FrontRight/Set"
        subscribe = "VehicleDoor/ChildSafetyLock/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCKS_CHILD_SEC_DOOR_LOCK_REARLEFT:I = 0x6000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/ChildSafetyLock/RearLeft/Set"
        subscribe = "VehicleDoor/ChildSafetyLock/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCKS_CHILD_SEC_DOOR_LOCK_REARRIGHT:I = 0x600002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/ChildSafetyLock/RearRight/Set"
        subscribe = "VehicleDoor/ChildSafetyLock/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCKS_GEAR_PARK_UNLOCK_MODE:I = 0x6000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/ParkingAutoUnlock/Set"
        subscribe = "VehicleDoor/ParkingAutoUnlock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCKS_MODE_APPROACH_UNLOCK:I = 0x6000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/InductionUnlock/Set"
        subscribe = "VehicleDoor/InductionUnlock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCKS_MODE_DOOR_LOCK_SOUND:I = 0x6000004

.field public static final ID_LOCKS_MODE_KEY_UNLOCK:I = 0x6000008

.field public static final ID_LOCKS_MODE_WALK_AWAY_LOCK:I = 0x6000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/LeavingAutoLock/Set"
        subscribe = "VehicleDoor/LeavingAutoLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCKS_TRUNK_LOCK:I = 0x6000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/LocksTrunkLock/Set"
        subscribe = "VehicleDoor/LocksTrunkLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PEPS_AUTO_TRUNK_OPEN:I = 0x6000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/TrunkAutoMode/Set"
        subscribe = "BodyInfo/TrunkAutoMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PEPS_START_ENGINE_BY_VOICE:I = 0x6000017

.field public static final ID_REAR_CLOSURE_LEFT_POS_STS:I = 0x6000013

.field public static final ID_REAR_CLOSURE_RIGHT_POS_STS:I = 0x6000014

.field public static final ID_REMOTE_UNLOCK_CFG:I = 0x6000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DoorUnlockMode/Set"
        subscribe = "VehicleDoor/DoorUnlockMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TRUNK_DOOR_DEGREE:I = 0x6000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/TrunkDoorDegree/Set"
        subscribe = "VehicleDoor/TrunkDoorDegree"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TRUNK_DOOR_OPEN_DEGREE:I = 0x600000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/TrunkDoorOpenDegree/Set"
        subscribe = "VehicleDoor/TrunkDoorOpenDegree"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x6
