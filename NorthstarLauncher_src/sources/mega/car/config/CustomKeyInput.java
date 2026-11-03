package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 44, permission = KeyInput.PERMISSION)
public interface CustomKeyInput {

    @PropertyDefine(publish = "KeyInput/CurrentView/Set", subscribe = "KeyInput/CurrentView", type = Integer.class)
    public static final int ID_CURRENT_VIEW_REQUEST = 738197508;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/MFS_Customize/Set", subscribe = "KeyInput/MFS_Customize", type = Integer.class)
    public static final int ID_LEFT_KEY_CUSTOM = 738197509;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/MFS_ICMFctChg/Set", subscribe = "KeyInput/MFS_ICMFctChg", type = Integer.class)
    public static final int ID_RIGHT_KEY_FUNCTION_CHANGE = 738197516;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/MFS_SeekDown/Set", subscribe = "KeyInput/MFS_SeekDown", type = Integer.class)
    public static final int ID_RIGHT_KEY_NEXT = 738197510;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/MFS_Start_Pause/Set", subscribe = "KeyInput/MFS_Start_Pause", type = Integer.class)
    public static final int ID_RIGHT_KEY_PLAY = 738197514;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/MFS_SeekUp/Set", subscribe = "KeyInput/MFS_SeekUp", type = Integer.class)
    public static final int ID_RIGHT_KEY_PREVIOUS = 738197511;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/MFS_VoiceRecognition/Set", subscribe = "KeyInput/MFS_VoiceRecognition", type = Integer.class)
    public static final int ID_RIGHT_KEY_VOICE_ASSIST = 738197515;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/MFS_VolumeDown/Set", subscribe = "KeyInput/MFS_VolumeDown", type = Integer.class)
    public static final int ID_RIGHT_KEY_VOLUME_DOWN = 738197513;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/MFS_VolumeUp/Set", subscribe = "KeyInput/MFS_VolumeUp", type = Integer.class)
    public static final int ID_RIGHT_KEY_VOLUME_UP = 738197512;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/SCREEN_TOUCH_AVM/Set", subscribe = "KeyInput/SCREEN_TOUCH_AVM", type = Integer.class)
    public static final int ID_SCREEN_TOUCH_AVM = 738197518;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/SCREEN_TOUCH_ESP/Set", subscribe = "KeyInput/SCREEN_TOUCH_ESP", type = Integer.class)
    public static final int ID_SCREEN_TOUCH_ESP = 738197519;

    @PropertyDefine(changeMode = 2, publish = "KeyInput/SCREEN_TOUCH_HDC/Set", subscribe = "KeyInput/SCREEN_TOUCH_HDC", type = Integer.class)
    public static final int ID_SCREEN_TOUCH_HDC = 738197517;

    @PropertyDefine(publish = "KeyInput/SteerWheelControlMode/Set", subscribe = "KeyInput/SteerWheelControlMode", type = Integer.class)
    public static final int ID_STEER_WHEEL_CONTROL_MODE = 738197506;

    @PropertyDefine(publish = "KeyInput/ViewChooseMode/Set", subscribe = "KeyInput/ViewChooseMode", type = Integer.class)
    public static final int ID_STEER_WHEEL_VIEW_CHOOSE_MODE = 738197507;
    public static final int MGR_ID = 44;
    public static final int UNSUPPORTED_CODE = -1;

    public @interface KeyCodeEnum {
        public static final int LEFT_CUSTOM1 = 6;
        public static final int LEFT_CUSTOM2 = 7;
        public static final int LEFT_CUSTOM3 = 22;
        public static final int LEFT_CUSTOM4 = 23;
        public static final int LEFT_CUSTOM5 = 24;
        public static final int LEFT_CUSTOM6 = 25;
        public static final int LEFT_DOWN = 4;
        public static final int LEFT_LEFT = 1;
        public static final int LEFT_RESERVED = 0;
        public static final int LEFT_RIGHT = 2;
        public static final int LEFT_SELECT = 5;
        public static final int LEFT_UP = 3;
        public static final int RIGHT_CUSTOM1 = 14;
        public static final int RIGHT_CUSTOM2 = 15;
        public static final int RIGHT_CUSTOM3 = 26;
        public static final int RIGHT_CUSTOM4 = 27;
        public static final int RIGHT_CUSTOM5 = 28;
        public static final int RIGHT_CUSTOM6 = 29;
        public static final int RIGHT_DOWN = 12;
        public static final int RIGHT_LEFT = 9;
        public static final int RIGHT_RESERVED = 8;
        public static final int RIGHT_RIGHT = 10;
        public static final int RIGHT_SELECT = 13;
        public static final int RIGHT_UP = 11;
        public static final int TOUCH_CUSTOM1 = 16;
        public static final int TOUCH_CUSTOM2 = 17;
        public static final int TOUCH_CUSTOM3 = 18;
        public static final int TOUCH_CUSTOM4 = 19;
        public static final int TOUCH_CUSTOM5 = 20;
        public static final int TOUCH_CUSTOM6 = 21;
    }

    public interface PressMode {
        public static final int PRESS = 1;
        public static final int RELEASE = 0;
    }
}
