package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 43, permission = "mega.car.permission.FACTORY_TEST")
public interface FactoryTest {

    @PropertyDefine(changeMode = 2, publish = "AMP/A2BStatus/Set", subscribe = "AMP/A2BStatus", type = Integer.class)
    public static final int ID_AMP_A2B_STATUS = 721420295;

    @PropertyDefine(publish = "controlRadio/req/Set", serializable = false, subscribe = "controlRadio/req", type = byte[].class)
    public static final int ID_CONTROL_RADIO = 721420293;

    @PropertyDefine(publish = "DidControlRgbShow/Set", subscribe = "DidControlRgbShow", type = Integer.class)
    public static final int ID_CONTROL_RGB_SHOW = 721420290;

    @PropertyDefine(publish = "EngineeringMode/Battery/Set", subscribe = "EngineeringMode/Battery", type = Integer.class)
    public static final int ID_GET_BATTERY_INFO = 721420292;

    @PropertyDefine(publish = "FactoryTest/ICScreenTest/Set", subscribe = "FactoryTest/ICScreenTest", type = Integer.class)
    public static final int ID_GET_VERSION = 721420289;

    @PropertyDefine(publish = "IC/PlayStartupVideo/Set", subscribe = "IC/PlayStartupVideo", type = Integer.class)
    public static final int ID_PLAY_STARTUP_VIDEO = 721420291;

    @PropertyDefine(publish = "EngineeringMode/KeyInput/MFS_Start_Pause/Set", subscribe = "EngineeringMode/KeyInput/MFS_Start_Pause", type = Integer.class)
    public static final int ID_RIGHT_KEY_START_PAUSE = 721420294;

    @PropertyDefine(publish = "Screen/Info/Set", subscribe = "Screen/Info", type = String.class)
    public static final int ID_SCREEN_INFO = 721420296;
    public static final int MGR_ID = 43;
}
