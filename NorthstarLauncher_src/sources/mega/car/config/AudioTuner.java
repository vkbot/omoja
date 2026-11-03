package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 200, permission = AudioTuner.PERMISSION, source = 8)
public interface AudioTuner {

    @PropertyDefine(type = Integer.class)
    public static final int ATMOS_VIRTUAL = -939524085;

    @PropertyDefine(type = Integer.class)
    public static final int EFFECT_MODE = -939524095;

    @PropertyDefine(type = Integer.class)
    public static final int EMPEROR_POSITION = -939524094;

    @PropertyDefine(type = int[].class)
    public static final int EQ_DBS = -939524093;

    @PropertyDefine(type = int[].class)
    public static final int FADER_BALANCE = -939524092;

    @PropertyDefine(type = Integer.class)
    public static final int HEADREST_BALANCE = -939524086;
    public static final int MGR_ID = 200;
    public static final String PERMISSION = "mega.car.permission.AudioTuner";

    @PropertyDefine(type = Integer.class)
    public static final int SPEAKER_CHANEL_BTCALL_STATE = -939524087;

    @PropertyDefine(type = Integer.class)
    public static final int SPEAKER_CHANEL_MODE = -939524089;

    @PropertyDefine(type = Integer.class)
    public static final int SPEAKER_CHANEL_NAVI_STATE = -939524088;

    @PropertyDefine(type = Float.class)
    public static final int VEHICLE_SPEED = -939524090;

    @PropertyDefine(type = int[].class)
    public static final int VOLUME_BY_SPEED = -939524091;
}
