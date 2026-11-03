package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 1, permission = "mega.car.permission.CARCABIN")
public interface Cabin {
    public static final int ID_FIRE_MODE = 16777237;
    public static final int ID_ICE_MODE = 16777238;

    @PropertyDefine(publish = "VehicleWindow/MirrorMemResult/Set", subscribe = "VehicleWindow/MirrorMemResult", type = int[].class)
    public static final int ID_MIRROR_MEM_RESULT = 16777240;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorMemoryRead/Set", subscribe = "VehicleWindow/RearViewMirrorMemoryRead", type = Integer.class)
    public static final int ID_MIRROR_REQ_ANGLE_READ_REQ = 16777232;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorMemory/Set", subscribe = "VehicleWindow/RearViewMirrorMemory", type = Integer.class)
    public static final int ID_MIRROR_REQ_ANGLE_SAVE_REQ = 16777222;
    public static final int ID_MIRROR_SELECT = 16777231;
    public static final int ID_MIRROR_SYNC_CLOUDDATA = 16777239;

    @PropertyDefine(publish = "VehicleWindow/RearMirrorPositionAdjust/Set", subscribe = "VehicleWindow/RearMirrorPositionAdjust", type = Integer.class)
    public static final int ID_REAR_MIRROR_POSITION_ADJUST = 16777247;

    @PropertyDefine(publish = "VehicleWindow/RearMirrorRotationAdjust/Set", subscribe = "VehicleWindow/RearMirrorRotationAdjust", type = Integer.class)
    public static final int ID_REAR_MIRROR_ROTATION_ADJUST = 16777246;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorAcoust/Set", subscribe = "VehicleWindow/RearViewMirrorAcoust", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_ACOUST = 16777241;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorAcoust/Left/Set", subscribe = "VehicleWindow/RearViewMirrorAcoust/Left", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_ACOUST_LEFT = 16777258;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorAcoust/Right/Set", subscribe = "VehicleWindow/RearViewMirrorAcoust/Right", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_ACOUST_RIGHT = 16777259;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorAutoTurnDown/Set", subscribe = "VehicleWindow/RearViewMirrorAutoTurnDown", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_AUTO_DIPPING = 16777217;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorAutoFold/Set", subscribe = "VehicleWindow/RearViewMirrorAutoFold", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_AUTO_FOLDING = 16777218;
    public static final int ID_REAR_VIEW_MIRROR_DIMMING = 16777224;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorFold/Set", subscribe = "VehicleWindow/RearViewMirrorFold", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_FOLD_CONTROL = 16777223;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorHorizontalPosition/Set", subscribe = "VehicleWindow/RearViewMirrorHorizontalPosition", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_H_POS = 16777220;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorHorizontalPosition/Left/Set", subscribe = "VehicleWindow/RearViewMirrorHorizontalPosition/Left", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_H_POS_LEFT = 16777254;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorHorizontalPosition/Right/Set", subscribe = "VehicleWindow/RearViewMirrorHorizontalPosition/Right", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_H_POS_RIGHT = 16777255;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirror/Set", subscribe = "VehicleWindow/RearViewMirror", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_STATUS = 16777219;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirror/Left/Set", subscribe = "VehicleWindow/RearViewMirror/Left", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_STATUS_LEFT = 16777252;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirror/Right/Set", subscribe = "VehicleWindow/RearViewMirror/Right", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_STATUS_RIGHT = 16777253;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorVerticalPosition/Set", subscribe = "VehicleWindow/RearViewMirrorVerticalPosition", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_V_POS = 16777221;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorVerticalPosition/Left/Set", subscribe = "VehicleWindow/RearViewMirrorVerticalPosition/Left", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_V_POS_LEFT = 16777256;

    @PropertyDefine(publish = "VehicleWindow/RearViewMirrorVerticalPosition/Right/Set", subscribe = "VehicleWindow/RearViewMirrorVerticalPosition/Right", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_V_POS_RIGHT = 16777257;

    @PropertyDefine(publish = "VehicleWindow/RelateKeyOrFaceID/Set", subscribe = "VehicleWindow/RelateKeyOrFaceID", type = Integer.class)
    public static final int ID_RELATE_KEY_OR_FACE_ID = 16777250;

    @PropertyDefine(publish = "VehicleWindow/SeatAndRearMirrorEnableSave/Set", subscribe = "VehicleWindow/SeatAndRearMirrorEnableSave", type = Integer.class)
    public static final int ID_SEAT_AND_REAR_MIRROR_ENABLE_SAVE = 16777249;

    @PropertyDefine(changeMode = 2, publish = "VehicleWindow/SeatAndRearMirrorPosition/Set", subscribe = "VehicleWindow/SeatAndRearMirrorPosition", type = Integer.class)
    public static final int ID_SEAT_AND_REAR_MIRROR_POSITION = 16777242;

    @PropertyDefine(publish = "VehicleWindow/SeatAndRearMirrorPositionStore/Set", subscribe = "VehicleWindow/SeatAndRearMirrorPositionStore", type = Integer.class)
    public static final int ID_SEAT_AND_REAR_MIRROR_POSITION_STORE = 16777251;

    @PropertyDefine(publish = "VehicleWindow/SeatForeBackAdjust/Set", subscribe = "VehicleWindow/SeatForeBackAdjust", type = Integer.class)
    public static final int ID_SEAT_FORE_BACK_ADJUST = 16777244;

    @PropertyDefine(publish = "VehicleWindow/SeatPositionAndKey/Set", subscribe = "VehicleWindow/SeatPositionAndKey", type = Integer.class)
    public static final int ID_SEAT_POSITION_AND_KEY = 16777248;

    @PropertyDefine(publish = "VehicleWindow/SeatRotationAngleAdjust/Set", subscribe = "VehicleWindow/SeatRotationAngleAdjust", type = Integer.class)
    public static final int ID_SEAT_ROTATION_ANGLE_ADJUST = 16777245;

    @PropertyDefine(publish = "VehicleWindow/SeatUpDownAdjust/Set", subscribe = "VehicleWindow/SeatUpDownAdjust", type = Integer.class)
    public static final int ID_SEAT_UP_DOWN_ADJUST = 16777243;
    public static final int ID_THERMOSTATIC_COCKPIT = 16777233;
    public static final int ID_THERMOSTATIC_COCKPIT_NOTICE = 16777234;
    public static final int ID_THERMOSTATIC_COCKPIT_TEXT = 16777235;
    public static final int ID_WINTER_MODE = 16777236;
    public static final int MGR_ID = 1;

    public interface MirrorAngleSaveCmd {
        public static final int CANCEL = 2;
        public static final int SAVE = 1;
        public static final int START = 0;
    }

    public interface MirrorFold {
        public static final int FOLD = 1;
        public static final int UNFOLD = 0;
    }

    public interface MirrorMemoryResult {
        public static final int FAILURE = 2;
        public static final int INVALID = 0;
        public static final int SUCCESS = 1;
    }

    public interface MirrorPosition {
        public static final int LEFT_OR_DOWN = -1;
        public static final int NO_REQ = 0;
        public static final int RIGHT_OR_UP = 1;
    }

    public interface MirrorSelect {
        public static final int LEFT = 1;
        public static final int NO_REQ = 0;
        public static final int RIGHT = 2;
    }

    public interface MirrorTowards {
        public static final int DOWN = 2;
        public static final int LEFT = 3;
        public static final int NO_REQ = 0;
        public static final int RIGHT = 4;
        public static final int UP = 1;
    }

    public interface ParamsMirrorDimming {
        public static final int DISABLE = 0;
        public static final int ENABLED = 1;
        public static final int UNKNOWN = -1;
    }

    public interface ParamsMirrorDipping {
        public static final int DISABLE = 0;
        public static final int ENABLED = 1;
        public static final int UNKNOWN = -1;
    }

    public interface ParamsMirrorFolding {
        public static final int DISABLE = 0;
        public static final int ENABLED = 1;
        public static final int UNKNOWN = -1;
    }

    public interface SeatAndRearMirrorPosition {
        public static final int MODE_DRIVE = 0;
        public static final int MODE_RESERVE = 2;
        public static final int MODE_REST = 1;
    }
}
