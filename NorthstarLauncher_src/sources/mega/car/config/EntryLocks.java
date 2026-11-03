package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 6, permission = "mega.car.permission.ENTRY_LOCK")
public interface EntryLocks {

    @PropertyDefine(publish = "VehicleCharge/ACChargePlugged/Set", subscribe = "VehicleCharge/ACChargePlugged", type = Integer.class)
    public static final int ID_AC_CHARGE_PLUGGED = 100663310;

    @PropertyDefine(publish = "VehicleCharge/ACChargePort/Set", subscribe = "VehicleCharge/ACChargePort", type = Integer.class)
    public static final int ID_AC_CHARGE_PORT = 100663312;

    @PropertyDefine(publish = "BodyInfo/BTKeyPermission/Set", subscribe = "BodyInfo/BTKeyPermission", type = Integer.class)
    public static final int ID_BLUETOOTH_KEY_ENABLE = 100663329;

    @PropertyDefine(publish = "VehicleCharge/ChargeHood/Set", subscribe = "VehicleCharge/ChargeHood", type = Integer.class)
    public static final int ID_CHARGE_PORT = 100663309;

    @PropertyDefine(publish = "VehicleCharge/DCChargePlugged/Set", subscribe = "VehicleCharge/DCChargePlugged", type = Integer.class)
    public static final int ID_DC_CHARGE_PLUGGED = 100663311;

    @PropertyDefine(publish = "VehicleCharge/DCChargePort/Set", subscribe = "VehicleCharge/DCChargePort", type = Integer.class)
    public static final int ID_DC_CHARGE_PORT = 100663313;

    @PropertyDefine(publish = "VehicleDoor/Door/Set", subscribe = "VehicleDoor/Door", type = Integer.class)
    public static final int ID_DOOR = 100663305;

    @PropertyDefine(publish = "VehicleDoor/Door/Back/Set", subscribe = "VehicleDoor/Door/Back", type = Integer.class)
    public static final int ID_DOOR_BACK = 100663345;

    @PropertyDefine(publish = "VehicleDoor/Door/FrontLeft/Set", subscribe = "VehicleDoor/Door/FrontLeft", type = Integer.class)
    public static final int ID_DOOR_FRONTLEFT = 100663340;

    @PropertyDefine(publish = "VehicleDoor/Door/FrontRight/Set", subscribe = "VehicleDoor/Door/FrontRight", type = Integer.class)
    public static final int ID_DOOR_FRONTRIGHT = 100663341;

    @PropertyDefine(publish = "VehicleDoor/Door/Hood/Set", subscribe = "VehicleDoor/Door/Hood", type = Integer.class)
    public static final int ID_DOOR_HOOD = 100663344;

    @PropertyDefine(publish = "VehicleDoor/DoorLock/Set", subscribe = "VehicleDoor/DoorLock", type = Integer.class)
    public static final int ID_DOOR_LOCK = 100663306;

    @PropertyDefine(publish = "VehicleDoor/DoorLock/Back/Set", subscribe = "VehicleDoor/DoorLock/Back", type = Integer.class)
    public static final int ID_DOOR_LOCK_BACK = 100663351;

    @PropertyDefine(publish = "VehicleDoor/DoorLock/FrontLeft/Set", subscribe = "VehicleDoor/DoorLock/FrontLeft", type = Integer.class)
    public static final int ID_DOOR_LOCK_FRONTLEFT = 100663346;

    @PropertyDefine(publish = "VehicleDoor/DoorLock/FrontRight/Set", subscribe = "VehicleDoor/DoorLock/FrontRight", type = Integer.class)
    public static final int ID_DOOR_LOCK_FRONTRIGHT = 100663347;

    @PropertyDefine(publish = "VehicleDoor/DoorLock/Hood/Set", subscribe = "VehicleDoor/DoorLock/Hood", type = Integer.class)
    public static final int ID_DOOR_LOCK_HOOD = 100663350;

    @PropertyDefine(publish = "VehicleDoor/DoorLock/RearLeft/Set", subscribe = "VehicleDoor/DoorLock/RearLeft", type = Integer.class)
    public static final int ID_DOOR_LOCK_REARLEFT = 100663348;

    @PropertyDefine(publish = "VehicleDoor/DoorLock/RearRight/Set", subscribe = "VehicleDoor/DoorLock/RearRight", type = Integer.class)
    public static final int ID_DOOR_LOCK_REARRIGHT = 100663349;

    @PropertyDefine(publish = "VehicleDoor/Door/RearLeft/Set", subscribe = "VehicleDoor/Door/RearLeft", type = Integer.class)
    public static final int ID_DOOR_REARLEFT = 100663342;

    @PropertyDefine(publish = "VehicleDoor/Door/RearRight/Set", subscribe = "VehicleDoor/Door/RearRight", type = Integer.class)
    public static final int ID_DOOR_REARRIGHT = 100663343;
    public static final int ID_ENTRY_SYSTEM_HORN_CFG = 100663318;
    public static final int ID_ENTRY_SYSTEM_PLGM_FUNC_CFG = 100663325;
    public static final int ID_ENTRY_SYSTEM_REMOTE_CTRL_WINDOW_CFG = 100663324;
    public static final int ID_ENTRY_SYSTEM_REQ_VEHICLE_LOCK = 100663328;

    @PropertyDefine(publish = "VehicleDoor/DrivingAutoLock/Set", subscribe = "VehicleDoor/DrivingAutoLock", type = Integer.class)
    public static final int ID_ENTRY_SYSTEM_SPD_AUTO_LOCK_CFG = 100663322;
    public static final int ID_ENTRY_SYSTEM_STS_ATWS_ST = 100663327;
    public static final int ID_ENTRY_SYSTEM_STS_PLGM_DOOR_ST = 100663326;
    public static final int ID_EXT_LIGHT_CARSEARCH_HORN = 100663331;

    @PropertyDefine(publish = "BodyInfo/FeulPort/Set", subscribe = "BodyInfo/FeulPort", type = Integer.class)
    public static final int ID_FUEL_PORT = 100663308;
    public static final int ID_GEAR_UNLOCK_TYPE = 100663334;

    @PropertyDefine(publish = "VehicleDoor/GloveCase/Set", subscribe = "VehicleDoor/GloveCase", type = Integer.class)
    public static final int ID_GLOVE_CASE = 100663332;
    public static final int ID_KEY_INFO = 100663330;
    public static final int ID_LOCKS_CENTRAL_LOCK_STATUS = 100663301;

    @PropertyDefine(publish = "VehicleDoor/ChildSafetyLock/Set", subscribe = "VehicleDoor/ChildSafetyLock", type = Integer.class)
    public static final int ID_LOCKS_CHILD_SEC_DOOR_LOCK = 100663303;

    @PropertyDefine(publish = "VehicleDoor/ChildSafetyLock/All/Set", subscribe = "VehicleDoor/ChildSafetyLock/All", type = Integer.class)
    public static final int ID_LOCKS_CHILD_SEC_DOOR_LOCK_ALL = 100663339;

    @PropertyDefine(publish = "VehicleDoor/ChildSafetyLock/FrontLeft/Set", subscribe = "VehicleDoor/ChildSafetyLock/FrontLeft", type = Integer.class)
    public static final int ID_LOCKS_CHILD_SEC_DOOR_LOCK_FRONTLEFT = 100663335;

    @PropertyDefine(publish = "VehicleDoor/ChildSafetyLock/FrontRight/Set", subscribe = "VehicleDoor/ChildSafetyLock/FrontRight", type = Integer.class)
    public static final int ID_LOCKS_CHILD_SEC_DOOR_LOCK_FRONTRIGHT = 100663336;

    @PropertyDefine(publish = "VehicleDoor/ChildSafetyLock/RearLeft/Set", subscribe = "VehicleDoor/ChildSafetyLock/RearLeft", type = Integer.class)
    public static final int ID_LOCKS_CHILD_SEC_DOOR_LOCK_REARLEFT = 100663337;

    @PropertyDefine(publish = "VehicleDoor/ChildSafetyLock/RearRight/Set", subscribe = "VehicleDoor/ChildSafetyLock/RearRight", type = Integer.class)
    public static final int ID_LOCKS_CHILD_SEC_DOOR_LOCK_REARRIGHT = 100663338;

    @PropertyDefine(publish = "VehicleDoor/ParkingAutoUnlock/Set", subscribe = "VehicleDoor/ParkingAutoUnlock", type = Integer.class)
    public static final int ID_LOCKS_GEAR_PARK_UNLOCK_MODE = 100663302;

    @PropertyDefine(publish = "VehicleDoor/InductionUnlock/Set", subscribe = "VehicleDoor/InductionUnlock", type = Integer.class)
    public static final int ID_LOCKS_MODE_APPROACH_UNLOCK = 100663298;
    public static final int ID_LOCKS_MODE_DOOR_LOCK_SOUND = 100663300;
    public static final int ID_LOCKS_MODE_KEY_UNLOCK = 100663304;

    @PropertyDefine(publish = "VehicleDoor/LeavingAutoLock/Set", subscribe = "VehicleDoor/LeavingAutoLock", type = Integer.class)
    public static final int ID_LOCKS_MODE_WALK_AWAY_LOCK = 100663299;

    @PropertyDefine(publish = "VehicleDoor/LocksTrunkLock/Set", subscribe = "VehicleDoor/LocksTrunkLock", type = Integer.class)
    public static final int ID_LOCKS_TRUNK_LOCK = 100663297;

    @PropertyDefine(publish = "BodyInfo/TrunkAutoMode/Set", subscribe = "BodyInfo/TrunkAutoMode", type = Integer.class)
    public static final int ID_PEPS_AUTO_TRUNK_OPEN = 100663320;
    public static final int ID_PEPS_START_ENGINE_BY_VOICE = 100663319;
    public static final int ID_REAR_CLOSURE_LEFT_POS_STS = 100663315;
    public static final int ID_REAR_CLOSURE_RIGHT_POS_STS = 100663316;

    @PropertyDefine(publish = "VehicleDoor/DoorUnlockMode/Set", subscribe = "VehicleDoor/DoorUnlockMode", type = Integer.class)
    public static final int ID_REMOTE_UNLOCK_CFG = 100663321;

    @PropertyDefine(publish = "VehicleDoor/TrunkDoorDegree/Set", subscribe = "VehicleDoor/TrunkDoorDegree", type = Integer.class)
    public static final int ID_TRUNK_DOOR_DEGREE = 100663333;

    @PropertyDefine(publish = "VehicleDoor/TrunkDoorOpenDegree/Set", subscribe = "VehicleDoor/TrunkDoorOpenDegree", type = Integer.class)
    public static final int ID_TRUNK_DOOR_OPEN_DEGREE = 100663307;
    public static final int MGR_ID = 6;

    public interface AutoTrunkOpen {
        public static final int SENSE_AUTO_FUNC_ACTIVE = 1;
        public static final int SENSE_AUTO_FUNC_NOT_ACTIVE = 0;
        public static final int SENSE_AUTO_FUNC_WITH_SOUND_REMINDER = 2;
    }

    public interface CarsearchHorn {
        public static final int LIGHT = 1;
        public static final int LIGHT_HORN = 0;
    }

    public interface ChargeLidStatesH53 {
        public static final int CLS_CHARGELIDCLOSING = 4;
        public static final int CLS_CHARGELIDFULLYCLOSED = 0;
        public static final int CLS_CHARGELIDFULLYOPENED = 1;
        public static final int CLS_CHARGELIDINVALID = 255;
        public static final int CLS_CHARGELIDOPENING = 3;
        public static final int CLS_CHARGELIDSTOP = 2;
    }

    public interface ChargePlug {
        public static final int DISCHARGE_ENABLED = 5;
        public static final int DISCHARGE_PLUGGED = 4;
        public static final int EXCEPTION = 3;
        public static final int HALF_PLUGGED = 2;
        public static final int NOT_PLUGGED = 0;
        public static final int PLUGGED = 1;
    }

    public interface CloseOpen {
        public static final int CLOSED = 0;
        public static final int OPENED = 1;
    }

    public interface EnableDisable {
        public static final int DISABLE = 0;
        public static final int ENABLE = 1;
    }

    public interface KeyInfo {
        public static final int BATTERYNOTENOUGH = 1;
        public static final int KEYNOTDETECTED = 2;
        public static final int KEYOUTSIDE_THE_VEHICLE = 3;
        public static final int NONE = 0;
    }

    public interface KeysUnlockMode {
        public static final int ALL_DOOR_UNLOCK = 0;
        public static final int DRV_DOOR_UNLOCK_ONLY = 1;
    }

    public interface LockUnlock {
        public static final int LOCK = 0;
        public static final int UNLOCK = 1;
    }

    public interface POTOpenSts {
        public static final int POTOPNSTSLATCHRELEASING = 5;
        public static final int POTOPNSTSOPENING = 2;
        public static final int POTOPNSTS_CLOSING = 3;
        public static final int POTOPNSTS_FULLYCLOSED = 0;
        public static final int POTOPNSTS_FULLYOPENED = 1;
        public static final int POTOPNSTS_INVALID = 255;
        public static final int POTOPNSTS_LATCHCINCHING = 6;
        public static final int POTOPNSTS_PLGSTOPPED = 4;
        public static final int POTOPNSTS_RESERVED = 7;
    }

    public interface ParamsLocksCentralLockStatus {
        public static final int DRV_DOOR_UNLOCKED_ONLY = 2;
        public static final int VEH_FULLY_LOCKED = 1;
        public static final int VEH_UNLOCKED = 0;
    }

    public interface ParamsLocksGearParkUnlockMode {
        public static final int ALL_DOOR_UNLOCK = 1;
        public static final int DISABLE = 0;
        public static final int DRV_DOOR_UNLOCKED_ONLY = 2;
    }

    public interface ParamsLocksModeKeyUnlock {
        public static final int ALL_DOOR_UNLOCK = 0;
        public static final int DRV_DOOR_UNLOCK_ONLY = 1;
    }

    public interface PlgmDoorSts {
        public static final int PLGM_DOOR_CLOSING = 4;
        public static final int PLGM_DOOR_FULLY_CLOSED = 2;
        public static final int PLGM_DOOR_FULLY_OPENED = 1;
        public static final int PLGM_DOOR_HOLD = 5;
        public static final int PLGM_DOOR_OPENING = 3;
        public static final int PLGM_DOOR_STATUS_UNKNOWN = 0;
    }
}
