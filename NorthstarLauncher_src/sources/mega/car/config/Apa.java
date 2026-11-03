package mega.car.config;

import android.os.Parcel;
import android.os.Parcelable;
import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 14, permission = "mega.car.permission.APA")
public interface Apa {

    @PropertyDefine(publish = "AVM/ApaRpaAbortReason/Set", subscribe = "AVM/ApaRpaAbortReason", type = Integer.class)
    public static final int ID_APARPA_ABORT_REASON = 234881165;

    @PropertyDefine(publish = "AVM/ApaRpaRequest/Set", subscribe = "AVM/ApaRpaRequest", type = Integer.class)
    public static final int ID_APARPA_REQUEST = 234881167;

    @PropertyDefine(publish = "AVM/ApaRpaSuspendReason/Set", subscribe = "AVM/ApaRpaSuspendReason", type = Integer.class)
    public static final int ID_APARPA_SUSPEND_REASON = 234881166;

    @PropertyDefine(publish = "AVM/ApaActiveButtonDisp/Set", subscribe = "AVM/ApaActiveButtonDisp", type = Integer.class)
    public static final int ID_APA_ACTIVE_BUTTON_DISP = 234881240;

    @PropertyDefine(publish = "APA/AndroidParkingState/Set", subscribe = "APA/AndroidParkingState", type = Integer.class)
    public static final int ID_APA_ANDROID_PARKINGSTATE = 234881233;
    public static final int ID_APA_APASWSTS = 234881086;
    public static final int ID_APA_AVM3D2DSW = 234881069;

    @PropertyDefine(publish = "APA/AvmPdcReqWarn/Set", subscribe = "APA/AvmPdcReqWarn", type = Integer.class)
    public static final int ID_APA_AVMPDC_REQWARN = 234881090;
    public static final int ID_APA_AVMSTS = 234881083;
    public static final int ID_APA_AVMSWSTS = 234881085;

    @PropertyDefine(publish = "APA/Avm3d2dViewMode/Set", subscribe = "APA/Avm3d2dViewMode", type = Integer.class)
    public static final int ID_APA_AVM_3D2DVIEWMODE = 234881088;

    @PropertyDefine(publish = "APA/AvmAutoSwitchingSw/Set", subscribe = "APA/AvmAutoSwitchingSw", type = Integer.class)
    public static final int ID_APA_AVM_AUTOSWITCHINGSW = 234881075;

    @PropertyDefine(publish = "APA/APAAvmCarColor/Set", subscribe = "APA/APAAvmCarColor", type = Integer.class)
    public static final int ID_APA_AVM_CARCOLOR = 234881071;

    @PropertyDefine(publish = "APA/AvmHmiIndex/Set", subscribe = "APA/AvmHmiIndex", type = Integer.class)
    public static final int ID_APA_AVM_HMIINDEX = 234881089;

    @PropertyDefine(publish = "APA/APAAvmLicense/Set", subscribe = "APA/APAAvmLicense", type = int[].class)
    public static final int ID_APA_AVM_LICENSE = 234881077;
    public static final int ID_APA_AVM_MONITVIDEO_OUTPUT = 234881097;
    public static final int ID_APA_AVM_MONVIDEORECEIVE = 234881081;

    @PropertyDefine(publish = "APA/AvmTrajectorySw/Set", subscribe = "APA/AvmTrajectorySw", type = Integer.class)
    public static final int ID_APA_AVM_TRAJECTORYSW = 234881074;

    @PropertyDefine(publish = "APA/APAAvmTransparentSw/Set", subscribe = "APA/APAAvmTransparentSw", type = Integer.class)
    public static final int ID_APA_AVM_TRANSPARENTSW = 234881076;

    @PropertyDefine(publish = "APA/APAAvmTrigbyTurnningSts/Set", subscribe = "APA/APAAvmTrigbyTurnningSts", type = Integer.class)
    public static final int ID_APA_AVM_TRIGBY_TURNNINGSTS = 234881072;

    @PropertyDefine(publish = "APA/APACardPlayRequest/Set", subscribe = "APA/APACardPlayRequest", type = Integer.class)
    public static final int ID_APA_CARD_PLAY_REQUEST = 234881223;

    @PropertyDefine(publish = "APA/APAConditionNotice/Set", subscribe = "APA/APAConditionNotice", type = Integer.class)
    public static final int ID_APA_CONDITION_NOTICE = 234881224;
    public static final int ID_APA_CONFIRM_BUTTON_CONFIG = 234881060;

    @PropertyDefine(publish = "APA/CrossModeSelect/Set", subscribe = "APA/CrossModeSelect", type = Integer.class)
    public static final int ID_APA_CROSS_MODE_SELECT_REQ = 234881231;

    @PropertyDefine(publish = "APA/CrossParkingMode/Set", subscribe = "APA/CrossParkingMode", type = Integer.class)
    public static final int ID_APA_CROSS_PARK_MODE = 234881232;

    @PropertyDefine(publish = "APA/CurrentLocation/Set", subscribe = "APA/CurrentLocation", type = PropertyDefine.JsonString.class)
    public static final int ID_APA_CURRENT_LOCATION = 234881222;
    public static final int ID_APA_DISPLAY_REQ = 234881062;

    @PropertyDefine(publish = "APA/APAEnable/Set", subscribe = "APA/APAEnable", type = Integer.class)
    public static final int ID_APA_ENABLE = 234881117;

    @PropertyDefine(publish = "APA/APAEnableStatus/Set", subscribe = "APA/APAEnableStatus", type = Integer.class)
    public static final int ID_APA_ENABLE_STATUS = 234881118;
    public static final int ID_APA_FRONT_OBJECT_EXIST = 234881064;
    public static final int ID_APA_FUNC_SELECT_CONFIG = 234881061;
    public static final int ID_APA_HPP_ABORTREASON = 234881208;
    public static final int ID_APA_HPP_AUTOACTIVE_SW = 234881214;
    public static final int ID_APA_HPP_CHOOSEMAPID = 234881216;
    public static final int ID_APA_HPP_CHOOSEMAPIDS = 234881217;
    public static final int ID_APA_HPP_CHOOSE_SLOTID = 234881249;
    public static final int ID_APA_HPP_CREATEMAP_BAR = 234881190;
    public static final int ID_APA_HPP_CREATEMAP_STS = 234881189;
    public static final int ID_APA_HPP_DELETEMAP_STS = 234881202;
    public static final int ID_APA_HPP_DISAUTO_ACTIVESW = 234881194;
    public static final int ID_APA_HPP_END_POINTBUTTON = 234881196;
    public static final int ID_APA_HPP_FUNCREQ = 234881215;
    public static final int ID_APA_HPP_FUNC_STS = 234881182;
    public static final int ID_APA_HPP_HOMEPAGE_DISPLAYREQUEST = 234881212;
    public static final int ID_APA_HPP_INTERCHGSTAT_BUTTON = 234881199;
    public static final int ID_APA_HPP_LEARNDIST_BAR = 234881192;
    public static final int ID_APA_HPP_LEARNFAILREASON = 234881211;
    public static final int ID_APA_HPP_LEARNREQ = 234881218;
    public static final int ID_APA_HPP_MAPATTRIBUTE = 234881205;
    public static final int ID_APA_HPP_MAPFULL_STS = 234881188;
    public static final int ID_APA_HPP_MAPNAME = 234881227;
    public static final int ID_APA_HPP_MODE = 234881184;
    public static final int ID_APA_HPP_NAMEREQUEST = 234881183;
    public static final int ID_APA_HPP_NOTICEREQUEST = 234881210;
    public static final int ID_APA_HPP_PARKACTIVE_BUTTON = 234881197;
    public static final int ID_APA_HPP_PARKING_BAR = 234881191;
    public static final int ID_APA_HPP_PARKTYPE = 234881209;
    public static final int ID_APA_HPP_SCENEDATA = 234881220;
    public static final int ID_APA_HPP_SLAMSTS = 234881200;

    @PropertyDefine(publish = "APA/APAHppSopSts/Set", subscribe = "APA/APAHppSopSts", type = Integer.class)
    public static final int ID_APA_HPP_SOP_STS = 234881203;
    public static final int ID_APA_HPP_START_POINTBUTTON = 234881195;
    public static final int ID_APA_HPP_SUCCESSINFO = 234881206;
    public static final int ID_APA_HPP_SUSPENDBUTTON = 234881198;
    public static final int ID_APA_HPP_SUSPENDREASON = 234881207;
    public static final int ID_APA_HPP_SW = 234881213;
    public static final int ID_APA_HPP_TERMINALSTATION = 234881219;
    public static final int ID_APA_HPP_TRAJECTORYPOINT = 234881230;
    public static final int ID_APA_HPP_USINGMAP_ID = 234881201;
    public static final int ID_APA_HPP_VEHICLE_ANGLE = 234881187;
    public static final int ID_APA_HPP_VEHICLE_X = 234881185;
    public static final int ID_APA_HPP_VEHICLE_Y = 234881186;
    public static final int ID_APA_HPP_VERSION_STS = 234881193;
    public static final int ID_APA_HPP_VOICENOTICE = 234881204;

    @PropertyDefine(publish = "AVM/ApaIviDisplayInfo/Set", subscribe = "AVM/ApaIviDisplayInfo", type = Integer.class)
    public static final int ID_APA_IVI_DISPLAY_INFO = 234881239;
    public static final int ID_APA_IVI_PARKING_ACTIVE_REQ = 234881246;
    public static final int ID_APA_LANGUAGE_SET = 234881082;

    @PropertyDefine(publish = "APA/ApaMebHandOverReq/Set", subscribe = "APA/ApaMebHandOverReq", type = Integer.class)
    public static final int ID_APA_MEB_HANDOVER_REQ = 234881096;

    @PropertyDefine(publish = "APA/ApaMebSts/Set", subscribe = "APA/ApaMebSts", type = Integer.class)
    public static final int ID_APA_MEB_STS = 234881094;
    public static final int ID_APA_MEB_SW = 234881079;

    @PropertyDefine(publish = "APA/ApaMebSwSts/Set", subscribe = "APA/ApaMebSwSts", type = Integer.class)
    public static final int ID_APA_MEB_SW_STS = 234881095;
    public static final int ID_APA_MODESW = 234881068;
    public static final int ID_APA_MODSW = 234881073;

    @PropertyDefine(publish = "AVM/ApaObeSlotPointAng/Set", subscribe = "AVM/ApaObeSlotPointAng", type = Integer.class)
    public static final int ID_APA_OBESLOTPOINT_ANG = 234881178;
    public static final int ID_APA_ONOFF_SET = 234881065;

    @PropertyDefine(publish = "AVM/ApaOptionalParkingInfo/Set", subscribe = "AVM/ApaOptionalParkingInfo", type = Integer.class)
    public static final int ID_APA_OPTIONAL_PARKING_INFO = 234881244;
    public static final int ID_APA_OPTIONAL_SOLT_TYPE = 234881248;
    public static final int ID_APA_PARKING_MODE = 234881245;
    public static final int ID_APA_PARK_OUT_DIRECTION = 234881247;
    public static final int ID_APA_PARK_SIDE_SELECT = 234881063;
    public static final int ID_APA_PAS_APA_DRIVER_REQ = 234881028;
    public static final int ID_APA_PAS_APA_MODE_IND = 234881027;
    public static final int ID_APA_PAS_APA_PARK_SLOT_ST = 234881029;
    public static final int ID_APA_PAS_APA_QUIT_IND = 234881030;
    public static final int ID_APA_PAS_APA_REC_IND = 234881031;

    @PropertyDefine(publish = "APA/APAButtonPress/Set", subscribe = "APA/APAButtonPress", type = Integer.class)
    public static final int ID_APA_PAS_APA_ST = 234881026;
    public static final int ID_APA_PAS_BATT_VOLT_ERR_FLAG = 234881059;
    public static final int ID_APA_PAS_CTRL_MODULE_ERR_FLAG = 234881058;
    public static final int ID_APA_PAS_FL_SNS_ERR_FLAG = 234881053;

    @PropertyDefine(publish = "AVM/RadarDistance/FrontLeft/Set", subscribe = "AVM/RadarDistance/FrontLeft", type = Integer.class)
    public static final int ID_APA_PAS_FRONT_LEFT_DISTANCE = 234881041;

    @PropertyDefine(publish = "AVM/RadarDistance/FrontLeftMiddle/Set", subscribe = "AVM/RadarDistance/FrontLeftMiddle", type = Integer.class)
    public static final int ID_APA_PAS_FRONT_LEFT_MID_DISTANCE = 234881043;
    public static final int ID_APA_PAS_FRONT_LEFT_MID_SNS_ERR_FLAG = 234881055;

    @PropertyDefine(publish = "AVM/RadarDistance/FrontRight/Set", subscribe = "AVM/RadarDistance/FrontRight", type = Integer.class)
    public static final int ID_APA_PAS_FRONT_RIGHT_DISTANCE = 234881040;

    @PropertyDefine(publish = "AVM/RadarDistance/FrontRightMiddle/Set", subscribe = "AVM/RadarDistance/FrontRightMiddle", type = Integer.class)
    public static final int ID_APA_PAS_FRONT_RIGHT_MID_DISTANCE = 234881042;
    public static final int ID_APA_PAS_FRONT_RIGHT_MID_SNS_ERR_FLAG = 234881054;
    public static final int ID_APA_PAS_FR_SNS_ERR_FLAG = 234881052;

    @PropertyDefine(publish = "AVM/RadarDistance/FrontLeftSide/Set", subscribe = "AVM/RadarDistance/FrontLeftSide", type = Integer.class)
    public static final int ID_APA_PAS_FSL_SIDE_DISTANCE = 234881045;
    public static final int ID_APA_PAS_FSL_SNS_ERR_FLAG = 234881057;

    @PropertyDefine(publish = "AVM/RadarDistance/FrontRightSide/Set", subscribe = "AVM/RadarDistance/FrontRightSide", type = Integer.class)
    public static final int ID_APA_PAS_FSR_SIDE_DISTANCE = 234881044;
    public static final int ID_APA_PAS_FSR_SNS_ERR_FLAG = 234881056;

    @PropertyDefine(publish = "APA/ApaPasFunMode/Set", subscribe = "APA/ApaPasFunMode", type = Integer.class)
    public static final int ID_APA_PAS_FUNCMODE = 234881228;
    public static final int ID_APA_PAS_MODE = 234881032;

    @PropertyDefine(publish = "AVM/RadarDistance/RearLeft/Set", subscribe = "AVM/RadarDistance/RearLeft", type = Integer.class)
    public static final int ID_APA_PAS_REAR_LEFT_DISTANCE = 234881035;

    @PropertyDefine(publish = "AVM/RadarDistance/RearLeftMiddle/Set", subscribe = "AVM/RadarDistance/RearLeftMiddle", type = Integer.class)
    public static final int ID_APA_PAS_REAR_LEFT_MID_DISTANCE = 234881037;
    public static final int ID_APA_PAS_REAR_LEFT_MID_SNS_ERR_FLAG = 234881049;
    public static final int ID_APA_PAS_REAR_LEFT_SNS_ERR_FLAG = 234881047;

    @PropertyDefine(publish = "AVM/RadarDistance/RearRight/Set", subscribe = "AVM/RadarDistance/RearRight", type = Integer.class)
    public static final int ID_APA_PAS_REAR_RIGHT_DISTANCE = 234881034;

    @PropertyDefine(publish = "AVM/RadarDistance/RearRightMiddle/Set", subscribe = "AVM/RadarDistance/RearRightMiddle", type = Integer.class)
    public static final int ID_APA_PAS_REAR_RIGHT_MID_DISTANCE = 234881036;
    public static final int ID_APA_PAS_REAR_RIGHT_MID_SNS_ERR_FLAG = 234881048;
    public static final int ID_APA_PAS_REAR_RIGHT_SNS_ERR_FLAG = 234881046;

    @PropertyDefine(publish = "AVM/RadarDistance/RearLeftSide/Set", subscribe = "AVM/RadarDistance/RearLeftSide", type = Integer.class)
    public static final int ID_APA_PAS_RSL_SIDE_DISTANCE = 234881039;
    public static final int ID_APA_PAS_RSL_SNS_ERR_FLAG = 234881051;

    @PropertyDefine(publish = "AVM/RadarDistance/RearRightSide/Set", subscribe = "AVM/RadarDistance/RearRightSide", type = Integer.class)
    public static final int ID_APA_PAS_RSR_SIDE_DISTANCE = 234881038;
    public static final int ID_APA_PAS_RSR_SNS_ERR_FLAG = 234881050;

    @PropertyDefine(publish = "AVM/ApaPasWarnTone/Set", subscribe = "APA/ApaPasWarnTone", type = Integer.class)
    public static final int ID_APA_PAS_WARN_TONE = 234881033;
    public static final int ID_APA_PDCSWSTS = 234881087;
    public static final int ID_APA_PDC_DISTDISPAREA = 234881109;

    @PropertyDefine(publish = "APA/ApaPdcFailureWarning/Set", subscribe = "APA/ApaPdcFailureWarning", type = Integer.class)
    public static final int ID_APA_PDC_FAILUREWARNING = 234881100;
    public static final int ID_APA_PDC_MUTEREQ = 234881080;
    public static final int ID_APA_PDC_MUTESTS = 234881101;

    @PropertyDefine(publish = "APA/ApaPdcObjDisplayReq/Set", subscribe = "APA/ApaPdcObjDisplayReq", type = Integer.class)
    public static final int ID_APA_PDC_OBJDISPLAYREQ = 234881104;

    @PropertyDefine(publish = "APA/ApaPdcObjFMindist/Set", subscribe = "APA/ApaPdcObjFMindist", type = Integer.class)
    public static final int ID_APA_PDC_OBJ_F_MINDIST = 234881110;

    @PropertyDefine(publish = "APA/ApaPdcObjRMindist/Set", subscribe = "APA/ApaPdcObjRMindist", type = Integer.class)
    public static final int ID_APA_PDC_OBJ_R_MINDIST = 234881111;

    @PropertyDefine(publish = "APA/ApaPdcSdwAudiBLEFrontBeepRate/Set", subscribe = "APA/ApaPdcSdwAudiBLEFrontBeepRate", type = Integer.class)
    public static final int ID_APA_PDC_SDW_AUDIBLEFRONTBEEPRATE = 234881102;

    @PropertyDefine(publish = "APA/ApaPdcSdwAudiBLERearBeepRate/Set", subscribe = "APA/ApaPdcSdwAudiBLERearBeepRate", type = Integer.class)
    public static final int ID_APA_PDC_SDW_AUDIBLEREARBEEPRATE = 234881103;

    @PropertyDefine(publish = "APA/ApaPdcSysSts/Set", subscribe = "APA/ApaPdcSysSts", type = Integer.class)
    public static final int ID_APA_PDC_SYSSTS = 234881099;

    @PropertyDefine(publish = "AVM/ApaProcessBar/Set", subscribe = "AVM/ApaProcessBar", type = Integer.class)
    public static final int ID_APA_PROCESSBAR = 234881242;

    @PropertyDefine(publish = "APA/QNXParkingState/Set", subscribe = "APA/QNXParkingState", type = Integer.class)
    public static final int ID_APA_QNX_PARKINGSTATE = 234881234;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/Set", subscribe = "BodyInfo/Radar", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG = 234881025;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/Back/Set", subscribe = "BodyInfo/Radar/Back", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_BACK = 234881251;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/FrontLeft/Set", subscribe = "BodyInfo/Radar/FrontLeft", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_FRONTLEFT = 234881254;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/FrontLeftMiddle/Set", subscribe = "BodyInfo/Radar/FrontLeftMiddle", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_FRONTLEFTMIDDLE = 234881260;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/FrontRight/Set", subscribe = "BodyInfo/Radar/FrontRight", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_FRONTRIGHT = 234881255;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/FrontRightMiddle/Set", subscribe = "BodyInfo/Radar/FrontRightMiddle", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_FRONTRIGHTMIDDLE = 234881261;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/Hood/Set", subscribe = "BodyInfo/Radar/Hood", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_HOOD = 234881250;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/Left/Set", subscribe = "BodyInfo/Radar/Left", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_LEFT = 234881252;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/RearLeft/Set", subscribe = "BodyInfo/Radar/RearLeft", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_REARLEFT = 234881256;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/RearLeftMiddle/Set", subscribe = "BodyInfo/Radar/RearLeftMiddle", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_REARLEFTMIDDLE = 234881258;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/RearRight/Set", subscribe = "BodyInfo/Radar/RearRight", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_REARRIGHT = 234881257;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/RearRightMiddle/Set", subscribe = "BodyInfo/Radar/RearRightMiddle", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_REARRIGHTMIDDLE = 234881259;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/Radar/Right/Set", subscribe = "BodyInfo/Radar/Right", type = Radar.class)
    public static final int ID_APA_RADAR_CONFIG_RIGHT = 234881253;

    @PropertyDefine(publish = "APA/APARecommend/Set", subscribe = "APA/APARecommend", type = Integer.class)
    public static final int ID_APA_RECOMMEND = 234881221;

    @PropertyDefine(publish = "AVM/ApaReqbleIndicate/Set", subscribe = "AVM/ApaReqbleIndicate", type = Integer.class)
    public static final int ID_APA_REQBLE_INDICATE = 234881172;

    @PropertyDefine(publish = "AVM/ApaRpaButtonDisplay/Set", subscribe = "AVM/ApaRpaButtonDisplay", type = Integer.class)
    public static final int ID_APA_RPA_BUTTON_DISPALY = 234881243;

    @PropertyDefine(publish = "APA/ApaSdwFLDistance/Set", subscribe = "APA/ApaSdwFLDistance", type = Integer.class)
    public static final int ID_APA_SDW_FL_DISTANCE = 234881105;

    @PropertyDefine(publish = "APA/ApaSdwFRDistance/Set", subscribe = "APA/ApaSdwFRDistance", type = Integer.class)
    public static final int ID_APA_SDW_FR_DISTANCE = 234881106;

    @PropertyDefine(publish = "APA/ApaSdwRLDistance/Set", subscribe = "APA/ApaSdwRLDistance", type = Integer.class)
    public static final int ID_APA_SDW_RL_DISTANCE = 234881107;

    @PropertyDefine(publish = "APA/ApaSdwRLDistance/Set", subscribe = "APA/ApaSdwRRDistance", type = Integer.class)
    public static final int ID_APA_SDW_RR_DISTANCE = 234881108;

    @PropertyDefine(publish = "APA/ApaSdwSysSts/Set", subscribe = "APA/ApaSdwSysSts", type = Integer.class)
    public static final int ID_APA_SDW_SYSSTS = 234881098;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/Set", subscribe = "BodyInfo/SideRadar", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR = 234881238;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/Back/Set", subscribe = "BodyInfo/SideRadar/Back", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_BACK = 234881267;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/FrontLeft/Set", subscribe = "BodyInfo/SideRadar/FrontLeft", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_FRONTLEFT = 234881270;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/FrontLeftMiddle/Set", subscribe = "BodyInfo/SideRadar/FrontLeftMiddle", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_FRONTLEFTMIDDLE = 234881276;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/FrontRight/Set", subscribe = "BodyInfo/SideRadar/FrontRight", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_FRONTRIGHT = 234881271;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/FrontRightMiddle/Set", subscribe = "BodyInfo/SideRadar/FrontRightMiddle", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_FRONTRIGHTMIDDLE = 234881277;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/Hood/Set", subscribe = "BodyInfo/SideRadar/Hood", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_HOOD = 234881266;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/Left/Set", subscribe = "BodyInfo/SideRadar/Left", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_LEFT = 234881268;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/RearLeft/Set", subscribe = "BodyInfo/SideRadar/RearLeft", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_REARLEFT = 234881272;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/RearLeftMiddle/Set", subscribe = "BodyInfo/SideRadar/RearLeftMiddle", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_REARLEFTMIDDLE = 234881274;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/RearRight/Set", subscribe = "BodyInfo/SideRadar/RearRight", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_REARRIGHT = 234881273;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/RearRightMiddle/Set", subscribe = "BodyInfo/SideRadar/RearRightMiddle", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_REARRIGHTMIDDLE = 234881275;

    @PropertyDefine(changeMode = 2, publish = "BodyInfo/SideRadar/Right/Set", subscribe = "BodyInfo/SideRadar/Right", type = Radar.class)
    public static final int ID_APA_SIDE_RADAR_RIGHT = 234881269;

    @PropertyDefine(publish = "APA/DynamicSlotWarning/Set", subscribe = "APA/DynamicSlotWarning", type = Integer.class)
    public static final int ID_APA_SLOTWARNINGREQ = 234881091;

    @PropertyDefine(publish = "AVM/ApaSlotAngle/Set", subscribe = "AVM/ApaSlotAngle", type = Integer.class)
    public static final int ID_APA_SLOT_ANGLE = 234881173;

    @PropertyDefine(publish = "AVM/ApaSlotLength/Set", subscribe = "AVM/ApaSlotLength", type = Integer.class)
    public static final int ID_APA_SLOT_LENGTH = 234881174;

    @PropertyDefine(publish = "AVM/ApaSlotWidth/Set", subscribe = "AVM/ApaSlotWidth", type = Integer.class)
    public static final int ID_APA_SLOT_WIDTH = 234881175;

    @PropertyDefine(publish = "AVM/ApaSlotX/Set", subscribe = "AVM/ApaSlotX", type = Integer.class)
    public static final int ID_APA_SLOT_X = 234881176;

    @PropertyDefine(publish = "AVM/ApaSlotY/Set", subscribe = "AVM/ApaSlotY", type = Integer.class)
    public static final int ID_APA_SLOT_Y = 234881177;

    @PropertyDefine(publish = "AVM/ApaSts/Set", subscribe = "AVM/ApaSts", type = Integer.class)
    public static final int ID_APA_STS = 234881162;

    @PropertyDefine(publish = "AVM/ApaSuspendButtonDisp/Set", subscribe = "AVM/ApaSuspendButtonDisp", type = Integer.class)
    public static final int ID_APA_SUSPEND_BUTTON_DISAPLAY = 234881241;

    @PropertyDefine(publish = "AVM/ApaSwtSts/Set", subscribe = "AVM/ApaSwtSts", type = Integer.class)
    public static final int ID_APA_SWT_STS = 234881181;

    @PropertyDefine(publish = "APA/TouchEvent2/Set", subscribe = "APA/TouchEvent2", type = int[].class)
    public static final int ID_APA_TOUCH_EVENT2 = 234881226;

    @PropertyDefine(publish = "APA/APATouchInfo/Set", subscribe = "APA/APATouchInfo", type = Integer.class)
    public static final int ID_APA_TOUCH_INFO = 234881225;

    @PropertyDefine(publish = "APA/ScreenTouchControl/Set", subscribe = "APA/ScreenTouchControl", type = int[].class)
    public static final int ID_APA_TOUCH_SCREEN_CTRL = 234881112;

    @PropertyDefine(publish = "APA/APAViewSelect/Set", subscribe = "APA/APAViewSelect", type = Integer.class)
    public static final int ID_APA_VIEW_SELECT = 234881070;

    @PropertyDefine(publish = "AVM/ApaObeSlotPointTypeSts/Set", subscribe = "AVM/ApaObeSlotPointTypeSts", type = Integer.class)
    public static final int ID_APA_VIRTUALSLOT_TYPESTS = 234881179;

    @PropertyDefine(publish = "APA/APAEnableVoice/Set", subscribe = "APA/APAEnableVoice", type = Integer.class)
    public static final int ID_APA_VOICE_APAONOFFREQ = 234881078;

    @PropertyDefine(publish = "APA/ApaVoiceProcessReq/Set", subscribe = "APA/ApaVoiceProcessReq", type = Integer.class)
    public static final int ID_APA_VOICE_PROCESSREQ = 234881092;

    @PropertyDefine(publish = "APA/VoiceWarnReq/Set", subscribe = "APA/VoiceWarnReq", type = Integer.class)
    public static final int ID_APA_VOICE_WARNREQ = 234881093;
    public static final int ID_AVM_CAMERA_FAILED = 234881153;

    @PropertyDefine(publish = "AVM/CameraStatus/Set", subscribe = "AVM/CameraStatus", type = Integer.class)
    public static final int ID_AVM_CAMERA_STATUS = 234881140;

    @PropertyDefine(publish = "AVM/CameraStatus/Front/Set", subscribe = "AVM/CameraStatus/Front", type = Integer.class)
    public static final int ID_AVM_CAMERA_STATUS_FRONT = 234881262;

    @PropertyDefine(publish = "AVM/CameraStatus/Left/Set", subscribe = "AVM/CameraStatus/Left", type = Integer.class)
    public static final int ID_AVM_CAMERA_STATUS_LEFT = 234881264;

    @PropertyDefine(publish = "AVM/CameraStatus/Rear/Set", subscribe = "AVM/CameraStatus/Rear", type = Integer.class)
    public static final int ID_AVM_CAMERA_STATUS_REAR = 234881263;

    @PropertyDefine(publish = "AVM/CameraStatus/Right/Set", subscribe = "AVM/CameraStatus/Right", type = Integer.class)
    public static final int ID_AVM_CAMERA_STATUS_RIGHT = 234881265;
    public static final int ID_AVM_CARTRANSPARENT_ONOFF_REQ = 234881149;

    @PropertyDefine(publish = "AVM/AVMDetectReq/Set", subscribe = "AVM/AVMDetectReq", type = Integer.class)
    public static final int ID_AVM_DETECT = 234881142;

    @PropertyDefine(publish = "AVM/AVMMonVideoOutsts/Set", subscribe = "AVM/AVMMonVideoOutsts", type = Integer.class)
    public static final int ID_AVM_MONVIDEO_OUTSTS = 234881155;

    @PropertyDefine(publish = "AVM/AVMMonSts/Set", subscribe = "AVM/AVMMonSts", type = Integer.class)
    public static final int ID_AVM_MON_STS = 234881157;
    public static final int ID_AVM_ONOFF_SET = 234881066;

    @PropertyDefine(publish = "AVM/AVMOverspeedWarning/Set", subscribe = "AVM/AVMOverspeedWarning", type = Integer.class)
    public static final int ID_AVM_OVER_SPEED_WARN = 234881132;
    public static final int ID_AVM_QUIT_SW = 234881150;

    @PropertyDefine(publish = "AVM/AVMsts/Set", subscribe = "AVM/AVMsts", type = Integer.class)
    public static final int ID_AVM_STS = 234881156;

    @PropertyDefine(publish = "AVM/AVMSwitch/Set", subscribe = "AVM/AVMSwitch", type = Integer.class)
    public static final int ID_AVM_SWITCH = 234881130;

    @PropertyDefine(publish = "AVM/AVMSwtSts/Set", subscribe = "AVM/AVMSwtSts", type = Integer.class)
    public static final int ID_AVM_SWT_STS = 234881158;

    @PropertyDefine(publish = "AVM/AVMTriGbyPdcSw/Set", subscribe = "AVM/AVMTriGbyPdcSw", type = Integer.class)
    public static final int ID_AVM_TRIGBY_PDCSW = 234881151;

    @PropertyDefine(publish = "AVM/AVMTrigger/Set", subscribe = "AVM/AVMTrigger", type = Integer.class)
    public static final int ID_AVM_TRIGGER_METHOD = 234881131;

    @PropertyDefine(publish = "AVM/AVMVideoOutputFailed/Set", subscribe = "AVM/AVMVideoOutputFailed", type = Integer.class)
    public static final int ID_AVM_VIDEO_OUTPUT_FAILED = 234881154;

    @PropertyDefine(publish = "AVM/AVMVoiceFeedback/Set", subscribe = "AVM/AVMVoiceFeedback", type = Integer.class)
    public static final int ID_AVM_VOICE_FEEDBACK = 234881152;
    public static final int ID_AVM_VOICE_ONOFF_REQ = 234881148;

    @PropertyDefine(publish = "APA/AVPMapDownloadRecomend/Set", subscribe = "APA/AVPMapDownloadRecomend", type = Integer.class)
    public static final int ID_AVP_MAP_DOWNLOAD_RECOMMEND = 234881126;

    @PropertyDefine(publish = "APA/AVPRecomend/Set", subscribe = "APA/AVPRecomend", type = Integer.class)
    public static final int ID_AVP_RECOMMEND = 234881125;

    @PropertyDefine(publish = "AVM/DVRDisplayVision/Set", subscribe = "AVM/DVRDisplayVision", type = Integer.class)
    public static final int ID_DVR_DISPLAY_VISION = 234881139;

    @PropertyDefine(publish = "AVM/DVREmergencyRecord/Set", subscribe = "AVM/DVREmergencyRecord", type = Integer.class)
    public static final int ID_DVR_EMERGENCY_RECORD = 234881135;

    @PropertyDefine(publish = "AVM/DVRMode/Set", subscribe = "AVM/DVRMode", type = Integer.class)
    public static final int ID_DVR_MODE = 234881133;

    @PropertyDefine(publish = "AVM/DVRPhotoResult/Set", subscribe = "AVM/DVRPhotoResult", type = Integer.class)
    public static final int ID_DVR_PHOTO_RESULT = 234881138;

    @PropertyDefine(publish = "AVM/DVREnableStatus/Set", subscribe = "AVM/DVREnableStatus", type = Integer.class)
    public static final int ID_DVR_RECORD_STATUS = 234881134;

    @PropertyDefine(publish = "AVM/DVRSdcardErrorStatus/Set", subscribe = "AVM/DVRSdcardErrorStatus", type = Integer.class)
    public static final int ID_DVR_SD_ERROR_CODE = 234881137;

    @PropertyDefine(publish = "AVM/DVRSdcardFullStatus/Set", subscribe = "AVM/DVRSdcardFullStatus", type = Integer.class)
    public static final int ID_DVR_SD_FULL_WARN = 234881136;

    @PropertyDefine(publish = "APA/APAFailure/Set", subscribe = "APA/APAFailure", type = Integer.class)
    public static final int ID_ERROR_CODE = 234881120;

    @PropertyDefine(changeMode = 2, publish = "AVM/AVMDisplayReq/Set", subscribe = "AVM/AVMDisplayReq", type = Integer.class)
    public static final int ID_HPP_APA_AVMDISPLAYREQ = 234881084;

    @PropertyDefine(publish = "AVM/AVMDisplayReady/Set", subscribe = "AVM/AVMDisplayReady", type = Integer.class)
    public static final int ID_HPP_APA_AVMDISPLAY_READY = 234881237;

    @PropertyDefine(publish = "APA/HZPRecomend/Set", subscribe = "APA/HZPRecomend", type = Integer.class)
    public static final int ID_HZP_RECOMMEND = 234881124;
    public static final int ID_NAVI_MSG = 234881143;

    @PropertyDefine(publish = "APA/ParkingMode/Set", subscribe = "APA/ParkingMode", type = Integer.class)
    public static final int ID_PARKING_MODE = 234881127;

    @PropertyDefine(publish = "APA/ParkingNotice/Set", subscribe = "APA/ParkingNotice", type = Integer.class)
    public static final int ID_PARKING_NOTICE = 234881121;

    @PropertyDefine(publish = "APA/ParkingSlotNumber/Set", subscribe = "APA/ParkingSlotNumber", type = Integer.class)
    public static final int ID_PARKING_SLOT_NUMBER = 234881122;

    @PropertyDefine(publish = "BodyInfo/FrontRadar/Set", subscribe = "BodyInfo/FrontRadar", type = Integer.class)
    public static final int ID_RADAR_FRONT_ACTIVE = 234881229;

    @PropertyDefine(publish = "AVM/RdaNmloptMsgVoice/Set", subscribe = "AVM/RdaNmloptMsgVoice", type = Integer.class)
    public static final int ID_RDA_NMLOPT_MSGVOICE = 234881145;

    @PropertyDefine(publish = "AVM/Rdasts/Set", subscribe = "AVM/Rdasts", type = Integer.class)
    public static final int ID_RDA_STS = 234881146;

    @PropertyDefine(publish = "AVM/RdaSwtsts/Set", subscribe = "AVM/RdaSwtsts", type = Integer.class)
    public static final int ID_RDA_SWT_STS = 234881147;
    public static final int ID_RDA_VOICE_ONOFF_REQ = 234881144;

    @PropertyDefine(publish = "APA/RearAssistDrvNotice/Set", subscribe = "APA/RearAssistDrvNotice", type = Integer.class)
    public static final int ID_REAR_ASSIST_DRIVE_NOTICE = 234881123;

    @PropertyDefine(publish = "AVM/RemoteDisplay/Set", subscribe = "AVM/RemoteDisplay", type = Integer.class)
    public static final int ID_REMOTE_DISPLAY = 234881141;

    @PropertyDefine(publish = "APA/RemoteParkRunDistance/Set", subscribe = "APA/RemoteParkRunDistance", type = Integer.class)
    public static final int ID_REMOTE_PARK_RUN_DISTANCE = 234881114;

    @PropertyDefine(publish = "APA/RemoteParkSafeDistance/Set", subscribe = "APA/RemoteParkSafeDistance", type = Integer.class)
    public static final int ID_REMOTE_PARK_SAFE_DISTANCE = 234881115;

    @PropertyDefine(publish = "AVM/RpaApaMode/Set", subscribe = "AVM/RpaApaMode", type = Integer.class)
    public static final int ID_RPAAPA_MODE = 234881164;
    public static final int ID_RPA_BLEPARKOUT_DIRECTION = 234881161;
    public static final int ID_RPA_BTPARKING_ACTIVE_REQ = 234881159;

    @PropertyDefine(publish = "AVM/RpaCompletedDis/Set", subscribe = "AVM/RpaCompletedDis", type = Integer.class)
    public static final int ID_RPA_COMPLETED_DIS = 234881171;
    public static final int ID_RPA_FUNCMOD_STS = 234881160;

    @PropertyDefine(publish = "AVM/RpaParkingTypeIndication/Set", subscribe = "AVM/RpaParkingTypeIndication", type = Integer.class)
    public static final int ID_RPA_PARKINGTYPE_INDICATION = 234881180;

    @PropertyDefine(publish = "AVM/RpaParkOutInhibit/Set", subscribe = "AVM/RpaParkOutInhibit", type = Integer.class)
    public static final int ID_RPA_PARKOUT_INHIBIT = 234881168;

    @PropertyDefine(publish = "AVM/RpaParkOutInOut/Set", subscribe = "AVM/RpaParkOutInOut", type = Integer.class)
    public static final int ID_RPA_PARK_INOUT = 234881169;

    @PropertyDefine(publish = "AVM/RpaParkOutInOut/Set", subscribe = "AVM/Rpaprocessbar", type = Integer.class)
    public static final int ID_RPA_PROCESSBAR = 234881170;

    @PropertyDefine(publish = "AVM/RpaSts/Set", subscribe = "AVM/RpaSts", type = Integer.class)
    public static final int ID_RPA_STS = 234881163;

    @PropertyDefine(publish = "AVM/RunningStatus", subscribe = "AVM/RunningStatus/Set", type = Integer.class)
    public static final int ID_RUNNING_STATUS = 234881236;

    @PropertyDefine(publish = "APA/SideAudioWarning/Set", subscribe = "APA/SideAudioWarning", type = Integer.class)
    public static final int ID_SIDE_AUDIO_WARN = 234881113;

    @PropertyDefine(publish = "APA/SideViewAssist/Set", subscribe = "APA/SideViewAssist", type = Integer.class)
    public static final int ID_SIDE_VIEW_ASSIST = 234881129;

    @PropertyDefine(publish = "APA/SlotNotice/Set", subscribe = "APA/SlotNotice", type = Integer.class)
    public static final int ID_SLOT_NOTICE = 234881119;

    @PropertyDefine(publish = "APA/SlotSelectVoice/Set", subscribe = "APA/SlotSelectVoice", type = Integer.class)
    public static final int ID_SLOT_SELECT_VOICE = 234881128;

    @PropertyDefine(publish = "AVM/TurnLightAVMSwitch/Set", subscribe = "AVM/TurnLightAVMSwitch", type = Integer.class)
    public static final int ID_TURN_LIGHT_AVM_SWITCH = 234881235;

    @PropertyDefine(publish = "APA/VoiceParkEnable/Set", subscribe = "APA/VoiceParkEnable", type = Integer.class)
    public static final int ID_VOICE_PARK_ENABLE = 234881116;
    public static final int MGR_ID = 14;

    public interface APAActiveButtonDisp {
        public static final int APAABD_NOREQUEST = 0;
        public static final int APAABD_REQUESTDISPLAYWITHCOUNTER = 1;
        public static final int APAABD_REQUESTDISPLAYWITHOUTCOUNTER = 2;
    }

    public interface APAIVIDisplayInfo {
        public static final int APAIVIDI_APACOMPLETED = 14;
        public static final int APAIVIDI_APAPARKINGSTARTED = 13;
        public static final int APAIVIDI_APPLYBRAKEPEDAL = 11;
        public static final int APAIVIDI_CLOSEDOOR = 3;
        public static final int APAIVIDI_ENGAGE_P = 16;
        public static final int APAIVIDI_ISCADJUSTING = 4;
        public static final int APAIVIDI_MOVEFORWARD = 1;
        public static final int APAIVIDI_NOREQUEST = 0;
        public static final int APAIVIDI_OPTIONALPARKINGDISPLAY = 9;
        public static final int APAIVIDI_PARALLELLEFTPARKINGOUTREADY = 20;
        public static final int APAIVIDI_PARALLELRIGHTPARKINGOUTREADY = 19;
        public static final int APAIVIDI_PARKINGINREADY = 7;
        public static final int APAIVIDI_PARKINGMODESELECT = 10;
        public static final int APAIVIDI_PARKINGSLOTFOUND = 2;
        public static final int APAIVIDI_PERPENDICULARFRONTPARKINGOUTREADBY = 18;
        public static final int APAIVIDI_PERPENDICULARREARTPARKINGOUTREADBY = 17;
        public static final int APAIVIDI_PRACOMPLETED = 21;
        public static final int APAIVIDI_RELEASEBRAKEPEDAL = 12;
        public static final int APAIVIDI_RPATIPS = 15;
        public static final int APAIVIDI_SELECTDIRECTION = 8;
        public static final int APAIVIDI_SLOWDOWN = 6;
    }

    public interface APAIVIParkingActiveReq {
        public static final int APAIVIPAR_NO_REQUEST = 0;
        public static final int APAIVIPAR_REQUEST_APA_ACTIVE = 4;
        public static final int APAIVIPAR_REQUEST_CONFIRM = 6;
        public static final int APAIVIPAR_REQUEST_CONTINUE = 3;
        public static final int APAIVIPAR_REQUEST_EXIT = 1;
        public static final int APAIVIPAR_REQUEST_RPA_ACTIVE = 5;
        public static final int APAIVIPAR_REQUEST_SUSPEND = 2;
    }

    public interface APAParkingMode {
        public static final int APAIVIPM_NOREQUEST = 0;
        public static final int APAIVIPM_PARKINGIN = 1;
        public static final int APAIVIPM_PARKINGOPTIONAL = 3;
        public static final int APAIVIPM_PARKINGOUT = 2;
    }

    public interface APARPAAbortReason {
        public static final int APARPAAAR_CONTROL_FAIL = 23;
        public static final int APARPAAR_ACC_ACTIVE = 19;
        public static final int APARPAAR_APA_FAILURE = 2;
        public static final int APARPAAR_EPB_APPLIED = 13;
        public static final int APARPAAR_EPB_CONTROL_FAILED = 17;
        public static final int APARPAAR_EXTERNAL_ECU_ACTIVE = 9;
        public static final int APARPAAR_EXTERNAL_ECU_FAILURE = 1;
        public static final int APARPAAR_FUNCTION_OFF = 20;
        public static final int APARPAAR_GAS_PEDAL = 7;
        public static final int APARPAAR_GEAR_ERROR = 15;
        public static final int APARPAAR_GEAR_INTERVENTION = 8;
        public static final int APARPAAR_ISC_ADJUST_TIMES_OVER_FLOW = 22;
        public static final int APARPAAR_MOVE_TIMES_OVER_FLOW = 5;
        public static final int APARPAAR_NORMAL = 0;
        public static final int APARPAAR_NO_OBJECT_AHEAD = 12;
        public static final int APARPAAR_OVER_SPEED = 3;
        public static final int APARPAAR_REMOTE_POWER_ON_FAILED = 24;
        public static final int APARPAAR_REMOVE_TIMES_OVER_FLOW = 6;
        public static final int APARPAAR_RESERVED = 18;
        public static final int APARPAAR_SLOPE_TOO_BIG = 21;
        public static final int APARPAAR_SPACE_LIMIT = 11;
        public static final int APARPAAR_STEERING_WHEEL = 16;
        public static final int APARPAAR_TIMING_OVER_FLOW = 4;
        public static final int APARPAAR_TRAJECTORY_FAILED = 10;
        public static final int APARPAAR_VEHICLE_BLOCKED = 14;
    }

    public interface APARPARequest {
        public static final int APARPAR_ADAS_ON = 4;
        public static final int APARPAR_CRANKING = 10;
        public static final int APARPAR_DOOR_CLOSE = 5;
        public static final int APARPAR_ISC_ACTIVE = 9;
        public static final int APARPAR_NO_REQUEST = 0;
        public static final int APARPAR_PARK_IN_NOT_SATISFIED = 7;
        public static final int APARPAR_PAS_ON = 8;
        public static final int APARPAR_REQUEST_P_AND_EPB = 1;
        public static final int APARPAR_REQ_BT_CONNECTED = 3;
        public static final int APARPAR_REQ_DIRECTION_SELECT = 6;
        public static final int APARPAR_REQ_RPA_ACTIVE = 2;
        public static final int APARPAR_RESERVED = 11;
    }

    public interface APARPASuspendReason {
        public static final int APARPASR_BT_DISCONNECTED = 5;
        public static final int APARPASR_BT_OUT_OF_RANGE = 4;
        public static final int APARPASR_DOOR_OPEN = 2;
        public static final int APARPASR_NORMAL = 0;
        public static final int APARPASR_NOT_FOREGROUND = 6;
        public static final int APARPASR_OBSTACLE_ON_PATH = 1;
        public static final int APARPASR_RESERVED = 7;
        public static final int APARPASR_SUSPEND = 3;
    }

    public interface APARecommend {
        public static final int APA_REQUEST = 6;
        public static final int AVP_MAP_DOWNLOAD = 1;
        public static final int AVP_REQUEST = 2;
        public static final int HZP_PARK_OUT_LEARNING = 3;
        public static final int HZP_REQUEST = 4;
        public static final int NO_REQUEST = 0;
        public static final int RPA_REQUEST = 5;
    }

    public interface APAReqBleIndicate {
        public static final int APARB_INDICATESLOT = 1;
        public static final int APARB_NOINDICATE = 0;
    }

    public interface APAResponse {
        public static final int NO_REQUEST = 0;
        public static final int TOUCH = 2;
        public static final int VOICE = 1;
    }

    public interface APASts {
        public static final int APAS_COMPLETED_SUCCESSFULLY = 4;
        public static final int APAS_FAILURE = 5;
        public static final int APAS_GUIDANCE_ACTIVE = 3;
        public static final int APAS_INVALID = 7;
        public static final int APAS_OFF = 0;
        public static final int APAS_RESERVED_1 = 8;
        public static final int APAS_RESERVED_2 = 9;
        public static final int APAS_RESERVED_3 = 10;
        public static final int APAS_RESERVED_4 = 11;
        public static final int APAS_RESERVED_5 = 12;
        public static final int APAS_RESERVED_6 = 13;
        public static final int APAS_RESERVED_7 = 14;
        public static final int APAS_RESERVED_8 = 15;
        public static final int APAS_SEARCHING = 2;
        public static final int APAS_STANDBY = 1;
        public static final int APAS_SUSPEND = 6;
    }

    public interface APAVirtualSlotTypeSts {
        public static final int APAVSTS_HOL_SLOT = 1;
        public static final int APAVSTS_NO_REQ = 0;
        public static final int APAVSTS_OBE_SLOT_HEADIN = 4;
        public static final int APAVSTS_OBE_SLOT_TAILIN = 3;
        public static final int APAVSTS_VEL_SLOT = 2;
    }

    public interface APAWarningReq {
        public static final int APAWR_CHANGE_WARNING = 1;
        public static final int APAWR_NO_WARNING = 0;
        public static final int APAWR_QUIT_WARNING = 2;
    }

    public interface AVMMonVideoOutSts {
        public static final int AVMMVO_NO_UPLOAD = 0;
        public static final int AVMMVO_UPLOADING = 1;
        public static final int AVMMVO_UPLOAD_FAILED = 3;
        public static final int AVMMVO_UPLOAD_SUCCESSFUL = 2;
    }

    public interface AVMSts {
        public static final int AVMS_ACTIVE = 2;
        public static final int AVMS_FAILURE = 3;
        public static final int AVMS_OFF = 0;
        public static final int AVMS_STANDBY = 1;
    }

    public interface AndroidParkingState {
        public static final int NOT_READY = 0;
        public static final int READY = 1;
    }

    public interface CreateMapSts {
        public static final int HPP_CREATE_FAILED = 3;
        public static final int HPP_CREATE_SUCCESS = 2;
        public static final int HPP_CREATING = 1;
        public static final int HPP_DEFAULT = 0;
        public static final int HPP_UPLOADING = 4;
        public static final int HPP_UPLOAD_FAILED = 5;
        public static final int HPP_UPLOAD_SUCCESS = 6;
    }

    public interface CrossParkMode {
        public static final int BACK_IN = 1;
        public static final int HEAD_IN = 2;
        public static final int INACTIVE = 0;
        public static final int RESERVED = 3;
    }

    public interface HPPAbortReason {
        public static final int HPP_4G5G_NOT_OK = 4;
        public static final int HPP_ABORT_BY_IVI = 7;
        public static final int HPP_ABORT_BY_PHONE = 6;
        public static final int HPP_ACC_PEDAL_INTERVENTION = 8;
        public static final int HPP_DOORS_UNLOCK = 3;
        public static final int HPP_EPB_APPLIED = 12;
        public static final int HPP_EXTERNAL_ECU_FAILED = 2;
        public static final int HPP_FAILED_CLOSE_WINDOW = 24;
        public static final int HPP_FAILED_HANDSHAKE = 5;
        public static final int HPP_FAILED_ISC_ADJUST = 11;
        public static final int HPP_FAILED_LOCK_DOOR = 23;
        public static final int HPP_FAILED_UNFOLD_MIRROR = 26;
        public static final int HPP_GEAR_INTERVENTION = 9;
        public static final int HPP_HPP_SYSTEM_FAILED = 1;
        public static final int HPP_NORMAL = 0;
        public static final int HPP_NO_MAP_AVAILABLE = 22;
        public static final int HPP_NO_SLOT = 16;
        public static final int HPP_OVERSPEED = 14;
        public static final int HPP_OVERTIME = 19;
        public static final int HPP_OVER_SUSPEND = 21;
        public static final int HPP_PARK_IN_FAILED = 17;
        public static final int HPP_PARK_OUT_FAILED = 18;
        public static final int HPP_PASS_BARRIER_FAILED = 20;
        public static final int HPP_SLAM_FAILED = 15;
        public static final int HPP_STEEP_SLOPE = 13;
        public static final int HPP_STEERING_WHEEL_INTERVENTION = 10;
        public static final int HPP_UNEXPECTED_GEAR_POSITION = 25;
    }

    public interface HPPDeleteMapSts {
        public static final int HPP_DELETEING = 1;
        public static final int HPP_FAILED = 3;
        public static final int HPP_NONE = 0;
        public static final int HPP_SUCCESS = 2;
    }

    public interface HPPFuncReq {
        public static final int HPP_ABORT = 6;
        public static final int HPP_CONFIRM_EXIT = 8;
        public static final int HPP_DELETE_MAP = 2;
        public static final int HPP_EXIT_HOMEPAGE = 9;
        public static final int HPP_NO_REQUEST = 0;
        public static final int HPP_PARK_LOCAL_MODE = 4;
        public static final int HPP_PARK_REMOTE_MODE = 3;
        public static final int HPP_REACTIVE_AFTER_SUSPEND = 7;
        public static final int HPP_SUSPEND = 5;
        public static final int HPP_USE_MAP = 1;
    }

    public interface HPPHomepageDisplayRequest {
        public static final int HPP_DISPLAY_HOMEPAGE_OTA = 1;
        public static final int HPP_DISPLAY_HOMEPAGE_WITHOUT_MAP = 2;
        public static final int HPP_DISPLAY_HOMEPAGE_WITH_MAP = 3;
        public static final int HPP_NO_REQUEST = 0;
    }

    public interface HPPLearnFailReason {
        public static final int HPPLFR_MIRROR_FLOD = 15;
        public static final int HPP_ABORT_BY_IVI = 9;
        public static final int HPP_CHARGE_CAP_OPEN = 14;
        public static final int HPP_CREATE_FAILED = 8;
        public static final int HPP_DOOR_OPEN = 12;
        public static final int HPP_EXTERNAL_ECU_FAILED = 11;
        public static final int HPP_HOOD_OPEN = 13;
        public static final int HPP_HPP_SYSTEM_FAILED = 1;
        public static final int HPP_NORMAL = 0;
        public static final int HPP_NOT_SATISFY_KPI = 7;
        public static final int HPP_OVERDISTANCE = 4;
        public static final int HPP_OVERSPEED = 3;
        public static final int HPP_SLAM_FAILED = 5;
        public static final int HPP_SLAM_INIT_FAILED = 2;
        public static final int HPP_SPECIAL_PATH = 6;
        public static final int HPP_STEEP_SLOPE = 10;
    }

    public interface HPPLearnReq {
        public static final int HPP_EXIT_DIALOG_BOX = 11;
        public static final int HPP_LEARN_PERSONAL_SLOT = 3;
        public static final int HPP_LEARN_PUBLIC_SLOT = 4;
        public static final int HPP_NAME_COMPLETE = 7;
        public static final int HPP_NO_REQUEST = 0;
        public static final int HPP_NO_SET_VIRTUAL_SLOT = 9;
        public static final int HPP_PARK_IN_LEARN = 1;
        public static final int HPP_PARK_OUT_LEARN = 2;
        public static final int HPP_SET_END_POINT = 6;
        public static final int HPP_SET_INTERCHANGE_STATION = 10;
        public static final int HPP_SET_START_POINT = 5;
        public static final int HPP_YES_SET_VIRTUAL_SLOT = 8;
    }

    public interface HPPMode {
        public static final int HPP_LOCAL_MODE = 1;
        public static final int HPP_NONE = 0;
        public static final int HPP_REMOTE_MODE = 2;
    }

    public interface HPPNoticeRequest {
        public static final int HPP_APPLY_GEAR_P_AND_EPB = 36;
        public static final int HPP_BRAKE_REQUEST = 31;
        public static final int HPP_CHOOSE_ACTIVE_TYPE = 32;
        public static final int HPP_CHOOSE_SLOT_AND_SET_END_POINT = 21;
        public static final int HPP_CHOOSE_SLOT_TYPE = 9;
        public static final int HPP_CLOSE_CHARGE_CAP = 12;
        public static final int HPP_CLOSE_DOOR = 10;
        public static final int HPP_CLOSE_FUEL_CAP = 13;
        public static final int HPP_CLOSE_HOOD = 11;
        public static final int HPP_CONFIRM_SET_VIRTUAL_SLOT = 23;
        public static final int HPP_EXTERNAL_ECU_FAILED = 5;
        public static final int HPP_GEAR_IN_R_WARNING = 20;
        public static final int HPP_HPP_SYSTEM_FAILED = 6;
        public static final int HPP_INTERCHANGE_STATION_SET_SUCCESS = 25;
        public static final int HPP_ISC_IS_ADJUSTING = 16;
        public static final int HPP_MAP_FULL = 3;
        public static final int HPP_MAP_NOT_AVAILABLE = 7;
        public static final int HPP_MEMORY_FULL = 2;
        public static final int HPP_MOVE_CAR_TO_MAP = 28;
        public static final int HPP_NOTICE_POWER_ON = 1;
        public static final int HPP_NO_REQUEST = 0;
        public static final int HPP_OVERSPEED_15 = 17;
        public static final int HPP_OVERSPEED_25 = 4;
        public static final int HPP_PARK_IN_SLOT_AND_SET_START_POINT = 24;
        public static final int HPP_PARK_SUCCESSFULLY = 37;
        public static final int HPP_PRESS_PARKOUT_BUTTON = 33;
        public static final int HPP_RELEASE_BRAKE_PEDAL = 34;
        public static final int HPP_REMOTE_PARK_IN_ACTIVE = 35;
        public static final int HPP_REQUEST_MIRROR_UNFOLD = 15;
        public static final int HPP_RESERVED2 = 8;
        public static final int HPP_RESERVED3 = 26;
        public static final int HPP_RESERVED4 = 27;
        public static final int HPP_SET_END_POINT = 22;
        public static final int HPP_SLAM_SUCCESSFULLY = 30;
        public static final int HPP_START_POINT_SET_SUCCESS = 19;
        public static final int HPP_STEEP_SLOPE = 14;
        public static final int HPP_TURN_AROUND = 29;
        public static final int HPP_VEHICLE_NOT_STANDSTILL = 18;
    }

    public interface HPPParkActiveButton {
        public static final int HPP_DISPLAY_LOCAL_AND_REMOTE_MODE = 1;
        public static final int HPP_DISPLAY_LOCAL_MODE = 2;
        public static final int HPP_NO_DISPLAY = 0;
    }

    public interface HPPParkType {
        public static final int HPP_LEARNING = 1;
        public static final int HPP_NONE = 0;
        public static final int HPP_PARK_IN = 2;
        public static final int HPP_PARK_OUT = 3;
    }

    public interface HPPPointButton {
        public static final int HPP_DISPLAY = 1;
        public static final int HPP_INHIBIT = 2;
        public static final int HPP_NO_DISPLAY = 0;
    }

    public interface HPPSLAMSts {
        public static final int HPP_SLAMING = 1;
        public static final int HPP_SLAM_FAILED = 3;
        public static final int HPP_SLAM_SUCCESSFULLY = 2;
        public static final int HPP_STANDBY = 0;
    }

    public interface HPPSlamScore {
        public static final int HPPSS_BAD = 3;
        public static final int HPPSS_GOOD = 1;
        public static final int HPPSS_MIDDLE = 2;
        public static final int HPPSS_NONE = 0;
    }

    public interface HPPSuspendReason {
        public static final int HPP_CAR_ON_PATH = 2;
        public static final int HPP_CHARGE_CAP_OPEN = 6;
        public static final int HPP_DOOR_OPEN = 4;
        public static final int HPP_HOOD_OPEN = 5;
        public static final int HPP_NORMAL = 0;
        public static final int HPP_OBSTACLE_ON_PATH = 3;
        public static final int HPP_PD_ON_PATH = 1;
        public static final int HPP_RESERVED = 10;
        public static final int HPP_SUSPEND_BY_APP = 8;
        public static final int HPP_SUSPEND_BY_IVI = 7;
        public static final int HPP_SUSPEND_ENSURE_ABORT_BY_APP = 9;
    }

    public interface HPPTerminalStation {
        public static final int HPP_DEFAULT = 0;
        public static final int HPP_FINAL_POINT = 1;
        public static final int HPP_INTERCHANGE_STATION_1 = 2;
        public static final int HPP_INTERCHANGE_STATION_2 = 3;
        public static final int HPP_INTERCHANGE_STATION_3 = 4;
    }

    public interface HPPUsingMapID {
        public static final int HPP_NO1 = 1;
        public static final int HPP_NO10 = 10;
        public static final int HPP_NO2 = 2;
        public static final int HPP_NO3 = 3;
        public static final int HPP_NO4 = 4;
        public static final int HPP_NO5 = 5;
        public static final int HPP_NO6 = 6;
        public static final int HPP_NO7 = 7;
        public static final int HPP_NO8 = 8;
        public static final int HPP_NO9 = 9;
        public static final int HPP_NONE = 0;
    }

    public interface HPPVersionSts {
        public static final int HPP_10 = 0;
        public static final int HPP_20 = 1;
    }

    public interface HPPVoiceNotice {
        public static final int HPP_BRAKE_REQUEST = 21;
        public static final int HPP_CHOOSE_ACTIVE_TYPE = 22;
        public static final int HPP_CHOOSE_SLOT_AND_SET_END_POINT = 11;
        public static final int HPP_CLOSE_CHARGE_CAP = 31;
        public static final int HPP_CLOSE_DOOR = 5;
        public static final int HPP_CLOSE_HOOD = 30;
        public static final int HPP_CONFIRM_SET_VIRTUAL_SLOT = 14;
        public static final int HPP_CREATE_MAP_SUCCESS = 16;
        public static final int HPP_EPB_NOT_APPLY = 26;
        public static final int HPP_FAILED = 29;
        public static final int HPP_FIND_SLOT = 27;
        public static final int HPP_GEAR_IN_R_WARNING = 10;
        public static final int HPP_GEAR_NOT_IN_P = 25;
        public static final int HPP_LEARN_CHOOSE_SLOT_TYPE = 4;
        public static final int HPP_MOVE_CAR_TO_MAP = 18;
        public static final int HPP_NO_REQUEST = 0;
        public static final int HPP_OFF = 2;
        public static final int HPP_ON = 1;
        public static final int HPP_OVERSPEED_15 = 8;
        public static final int HPP_OVERSPEED_25 = 3;
        public static final int HPP_PARK_IN_AND_SET_START_POINT = 17;
        public static final int HPP_PARK_SUCCESSFULLY = 28;
        public static final int HPP_PRESS_PARKOUT_BUTTON = 23;
        public static final int HPP_RELEASE_BRAKE_PEDAL = 24;
        public static final int HPP_REQUEST_NAME_MAP = 15;
        public static final int HPP_SET_END_POINT = 12;
        public static final int HPP_SLAM_SUCCESSFULLY = 20;
        public static final int HPP_START_POINT_SET_SUCCESS = 9;
        public static final int HPP_STEEP_SLOPE = 7;
        public static final int HPP_TURN_AROUND = 19;
        public static final int HPP_UNFOLD_MIRROR = 6;
        public static final int HPP_VEHICLE_NOT_STANDSTILL = 13;
    }

    public interface MapFullSts {
        public static final int HPP_FULL = 1;
        public static final int HPP_MEMORY_FULL = 3;
        public static final int HPP_NOT_FULL = 0;
        public static final int HPP_NO_MAP = 2;
    }

    public interface OptionalParkingInfo {
        public static final int OPTIONALPI_APPLYBRAKEPEDAL = 5;
        public static final int OPTIONALPI_CLOSEDOOR = 2;
        public static final int OPTIONALPI_ISCADJUSTING = 4;
        public static final int OPTIONALPI_MOVESLOT = 1;
        public static final int OPTIONALPI_NOREQUEST = 0;
        public static final int OPTIONALPI_SLOPETOOBIG = 3;
        public static final int OPTIONALPI_STOPTHECAR = 6;
    }

    public interface OptionalSoltType {
        public static final int OPTIONALST_INCLINE = 3;
        public static final int OPTIONALST_NONE = 0;
        public static final int OPTIONALST_PARALLEL = 1;
        public static final int OPTIONALST_PERPENDICULAR = 2;
    }

    public interface ParamDVRVision {
        public static final int ALL = 5;
        public static final int FRONT = 1;
        public static final int INVALID = 7;
        public static final int LEFT = 3;
        public static final int NO_REQUEST = 0;
        public static final int REAR = 2;
        public static final int RESERVED = 6;
        public static final int RIGHT = 4;
    }

    public interface Params3D2DviewMode {
        public static final int AVM23DM_2D_VIEW_MODE = 1;
        public static final int AVM23DM_3D_VIEW_MODE = 0;
        public static final int AVM23DM_DEFAULT = 2;
        public static final int AVM23DM_RESERVED = 3;
    }

    public interface ParamsAVM3dCarModeColor {
        public static final int AVMCMC_BIUE = 2;
        public static final int AVMCMC_BLACK = 5;
        public static final int AVMCMC_GREEN = 3;
        public static final int AVMCMC_RED = 1;
        public static final int AVMCMC_WHITE = 0;
        public static final int AVMCMC_YELLOW = 4;
    }

    public interface ParamsAVMDisplayReady {
        public static final int AVMDISPLAYREADY_APA_SINGLEVIEW = 6;
        public static final int AVMDISPLAYREADY_APA_TOPVIEW = 5;
        public static final int AVMDISPLAYREADY_AVM_VIEW = 1;
        public static final int AVMDISPLAYREADY_HPP_SINGLEVIEW = 4;
        public static final int AVMDISPLAYREADY_HPP_TOPVIEW = 3;
        public static final int AVMDISPLAYREADY_INVALID = 255;
        public static final int AVMDISPLAYREADY_NOTREADY = 0;
        public static final int AVMDISPLAYREADY_RVM_VIEW = 2;
    }

    public interface ParamsAVMTrigger {
        public static final int PHYSICAL_BUTTON = 1;
        public static final int SOFT_BUTTON = 3;
        public static final int UNKNOWN = 0;
        public static final int VOICE = 2;
    }

    public interface ParamsApaDisplayReq {
        public static final int APA_DISPLAY_REQ_NO_REQUEST = 0;
        public static final int APA_DISPLAY_REQ_REQUEST = 1;
    }

    public interface ParamsApaFrontObjectExist {
        public static final int APA_FRONT_OBJECT_EXIST_EXIT = 1;
        public static final int APA_FRONT_OBJECT_EXIST_INVALID = 2;
        public static final int APA_FRONT_OBJECT_EXIST_NO_EXIST = 0;
    }

    public interface ParamsApaParkSideSelect {
        public static final int APA_PARK_SIDE_SELECT_LEFT = 1;
        public static final int APA_PARK_SIDE_SELECT_NONE = 0;
        public static final int APA_PARK_SIDE_SELECT_RIGHT = 2;
    }

    public interface ParamsAvmDisplayReq {
        public static final int AVMDISPLAYREQ_APA_SINGLEVIEW = 6;
        public static final int AVMDISPLAYREQ_APA_TOPVIEW = 5;
        public static final int AVMDISPLAYREQ_AVM_VIEW = 1;
        public static final int AVMDISPLAYREQ_HPP_SINGLEVIEW = 4;
        public static final int AVMDISPLAYREQ_HPP_TOPVIEW = 3;
        public static final int AVMDISPLAYREQ_NOREQ = 0;
        public static final int AVMDISPLAYREQ_RVM_VIEW = 2;
    }

    public interface ParamsAvmHmiIndex {
        public static final int AVMHI_EOL_TEST = 2;
        public static final int AVMHI_MAIN_SCREEN = 1;
        public static final int AVMHI_OFF = 0;
        public static final int AVMHI_RESERVED = 3;
    }

    public interface ParamsAvmReqWarn {
        public static final int PIVIRW_ACC_ON_APA_TEMP_UNAVABLE = 3;
        public static final int PIVIRW_APA_FAILURE_WARNING = 1;
        public static final int PIVIRW_NO_WARNING = 0;
        public static final int PIVIRW_PDC_FAILURE_WARNING = 2;
    }

    public interface ParamsAvmSts {
        public static final int APA_ON = 2;
        public static final int AVM_ON = 1;
        public static final int HPP_ON = 3;
        public static final int RESERVED = 4;
        public static final int STANDBY_STATE = 0;
    }

    public interface ParamsAvmSwSts {
        public static final int AVMSS_INHIBITED = 1;
        public static final int AVMSS_NORMAL = 0;
    }

    public interface ParamsDistDispArea {
        public static final int DDA_FRONT = 1;
        public static final int DDA_NO_REQUEST = 0;
        public static final int DDA_REAR = 2;
    }

    public interface ParamsFrontBeepRate {
        public static final int PDCAFBR_1_HZ = 1;
        public static final int PDCAFBR_2_HZ = 2;
        public static final int PDCAFBR_4_HZ = 3;
        public static final int PDCAFBR_NO_WARNING = 0;
        public static final int PDCAFBR_RESERVED = 5;
        public static final int PDCAFBR_WARNING_ON = 4;
    }

    public interface ParamsLanguageSet {
        public static final int HMILS_ENGLISH = 1;
        public static final int HMILS_SIMPLIFIED_CHINESE = 0;
    }

    public interface ParamsMebSts {
        public static final int MEBS_ACTIVE = 2;
        public static final int MEBS_FAILURE = 3;
        public static final int MEBS_INACTIVE = 4;
        public static final int MEBS_OFF = 0;
        public static final int MEBS_STANDBY = 1;
    }

    public interface ParamsMebSwSts {
        public static final int MEBSS_INHIBIT = 2;
        public static final int MEBSS_OFF = 0;
        public static final int MEBSS_ON = 1;
        public static final int MEBSS_RESERVED = 3;
    }

    public interface ParamsPDCSysSts {
        public static final int PDCS_ACTIVE = 1;
        public static final int PDCS_FAILED = 2;
        public static final int PDCS_FRONT_FAILED = 3;
        public static final int PDCS_F_ACTICE_AND_R_FAILED = 6;
        public static final int PDCS_INACTIVE = 0;
        public static final int PDCS_REAR_FAILED = 4;
        public static final int PDCS_RESERVED = 7;
        public static final int PDCS_R_ACTICE_AND_F_FAILED = 5;
    }

    public interface ParamsParkingMode {
        public static final int INACTIVE = 0;
        public static final int INTERIOR_PARKING = 1;
        public static final int PARKING_RESUME = 3;
        public static final int REMOTE_PARKING = 2;
    }

    public interface ParamsPdcSwSts {
        public static final int INHIBITED = 2;
        public static final int OFF = 0;
        public static final int ON = 1;
        public static final int RESERVED = 3;
    }

    public interface ParamsSDWSysSts {
        public static final int SDWSS_ACTIVE = 1;
        public static final int SDWSS_ACTIVE_F_FAILED = 5;
        public static final int SDWSS_ACTIVE_R_FAILED = 6;
        public static final int SDWSS_FAILED = 2;
        public static final int SDWSS_FRONTFAILED = 3;
        public static final int SDWSS_INACTIVE = 0;
        public static final int SDWSS_REARFAILED = 4;
        public static final int SDWSS_RESERVED = 7;
    }

    public interface ParamsSingleViewSts {
        public static final int AVMSVS_2D_FRONT_VIEW_PRESS = 1;
        public static final int AVMSVS_2D_LEFT_VIEW_PRESS = 3;
        public static final int AVMSVS_2D_REAR_VIEW_PRESS = 2;
        public static final int AVMSVS_2D_RIGHT_VIEW_PRESS = 4;
        public static final int AVMSVS_3D_FRONT_LEFT_VIEW_PRESS = 9;
        public static final int AVMSVS_3D_FRONT_RIGHT_VIEW_PRESS = 10;
        public static final int AVMSVS_3D_LEFT_SIDE_VIEW_PRESS = 7;
        public static final int AVMSVS_3D_REAR_LEFT_VIEW_PRESS = 11;
        public static final int AVMSVS_3D_REAR_RIGHT_VIEW_PRESS = 12;
        public static final int AVMSVS_3D_RIGHT_SIDE_VIEW_PRESS = 8;
        public static final int AVMSVS_3D_ROTATION_VIEW_PRESS = 16;
        public static final int AVMSVS_3D_TOPVIEW_HEAD_PRESS = 5;
        public static final int AVMSVS_3D_TOPVIEW_TAIL_PRESS = 6;
        public static final int AVMSVS_DEFAULT = 0;
        public static final int AVMSVS_DYNAMIC_FRONT_VIEW_PRESS = 13;
        public static final int AVMSVS_DYNAMIC_REAR_VIEW_PRESS = 14;
        public static final int AVMSVS_RESERVED = 17;
        public static final int AVMSVS_SIDE_VIEW_PRESS = 15;
    }

    public interface ParamsSlotSts {
        public static final int AROUND_VIEW = 11;
        public static final int IDLE = 0;
        public static final int LEFT_FISH_BONE_SLOT = 6;
        public static final int LEFT_PARKING_OUT = 8;
        public static final int LEFT_PAR_SLOT = 4;
        public static final int LEFT_PER_SLOT = 2;
        public static final int PARKING_IN = 1;
        public static final int REAR_VIEW = 10;
        public static final int RESERVED = 12;
        public static final int RIGHT_FISH_BONE_SLOT = 7;
        public static final int RIGHT_PARKING_OUT = 9;
        public static final int RIGHT_PAR_SLOT = 5;
        public static final int RIGHT_PER_SLOT = 3;
    }

    public interface ParamsTouchScreenCtrl {
        public static final int NO_REQUEST = 0;
        public static final int SCREEN_HOLD = 2;
        public static final int SCREEN_RELEASE = 3;
        public static final int SCREEN_TOUCHED = 1;
    }

    public interface ParamsVoiceAPASwitch {
        public static final int AVMVAPAS_NO_REQUEST = 0;
        public static final int AVMVAPAS_REQUEST_OFF = 2;
        public static final int AVMVAPAS_REQUEST_ON = 1;
        public static final int AVMVAPAS_RESERVED = 3;
    }

    public interface ParamsVoiceProcessReq {
        public static final int APAVPR_ABORT = 8;
        public static final int APAVPR_ACC_ON = 1;
        public static final int APAVPR_ALREADY_CLOSED = 18;
        public static final int APAVPR_APA_ALEARDY_ON = 26;
        public static final int APAVPR_APA_CLOSE = 17;
        public static final int APAVPR_APA_FAILURE = 19;
        public static final int APAVPR_APPLY_BRAKE_PEDAL = 22;
        public static final int APAVPR_CLOSED_DOOR_AND_CONTINUE_APA = 25;
        public static final int APAVPR_CLOSE_DOOR = 21;
        public static final int APAVPR_EXCESSIVE_SLOPE = 20;
        public static final int APAVPR_ISC_ADJUSTED = 24;
        public static final int APAVPR_MANUEL_PARK_REQUEST = 13;
        public static final int APAVPR_MOVE_OBSTACLE_AWAY = 23;
        public static final int APAVPR_NO_OBJECT_REQUEST = 12;
        public static final int APAVPR_NO_REQUEST = 0;
        public static final int APAVPR_PARKING_FINISHED = 7;
        public static final int APAVPR_PARKING_IN_SELECTED = 3;
        public static final int APAVPR_PARKING_READY = 6;
        public static final int APAVPR_PARKING_RECOVERED = 10;
        public static final int APAVPR_PARKING_SLOT_FOUND = 5;
        public static final int APAVPR_PARKING_STARTED = 15;
        public static final int APAVPR_PARKING_SUSPENDED = 9;
        public static final int APAVPR_PLEASE_STOP_CAR = 27;
        public static final int APAVPR_RELEASE_BRAKE_PEDAL = 14;
        public static final int APAVPR_SELECT_PARKING_MODE = 2;
        public static final int APAVPR_SELECT_PARKING_OUT_DIRECTION = 11;
        public static final int APAVPR_SLOW_DOWN = 4;
        public static final int APAVPR_SPEED_TOO_HIGH = 16;
    }

    public interface ParamsVoiceWarnReq {
        public static final int ADAS_ON_PAS_TEMPROARILY_UNAVAILABLE = 1;
        public static final int NO_WARNING = 0;
        public static final int PAS_ON_OTHER_PAS_UNAVAILABLE = 2;
        public static final int RESERVED = 3;
    }

    public interface QNXParkingState {
        public static final int AVM_ON = 1;
        public static final int IDLE = 0;
        public static final int RUNING = 2;
    }

    public interface RDANmlOptMsg {
        public static final int RDANOMV_ABSACTIVE_TAKEOVER = 14;
        public static final int RDANOMV_ACTIVE = 21;
        public static final int RDANOMV_ALREADY_COLSE = 22;
        public static final int RDANOMV_ALREADY_ON = 23;
        public static final int RDANOMV_APAON_RDAUNVIABLE = 7;
        public static final int RDANOMV_CLOSEDOOR = 5;
        public static final int RDANOMV_COLSE = 24;
        public static final int RDANOMV_COMPELETED_TAKEOVER = 17;
        public static final int RDANOMV_DOOROPENED_TAKEOVER = 13;
        public static final int RDANOMV_EPS_INTERVENTION_TAKEOVER = 9;
        public static final int RDANOMV_FOLD_MIRROR_TAKEOVER = 19;
        public static final int RDANOMV_FUNCTIONOFF_TAKEOVER = 8;
        public static final int RDANOMV_GEAR_INTERVENTION_TAKEOVER = 10;
        public static final int RDANOMV_GEAR_R = 2;
        public static final int RDANOMV_HANDSHAKE_FAILED = 6;
        public static final int RDANOMV_INVALID_TRACK = 1;
        public static final int RDANOMV_NONE = 0;
        public static final int RDANOMV_ON = 25;
        public static final int RDANOMV_OTHERSYSTEMFAILURE_TAKEOVER = 16;
        public static final int RDANOMV_OVERSPEED = 3;
        public static final int RDANOMV_OVERSPEED_TAKEOVER = 11;
        public static final int RDANOMV_SLOWDOWN = 18;
        public static final int RDANOMV_SYSTEMFAILURE_TAKEOVER = 15;
        public static final int RDANOMV_TIMEOUT_QUIT = 20;
        public static final int RDANOMV_TRACKDEVIATED_TAKEOVER = 12;
        public static final int RDANOMV_UNFOLD_MIRROR = 4;
    }

    public interface RDASts {
        public static final int RDAS_ABORT = 5;
        public static final int RDAS_ACTIVE = 3;
        public static final int RDAS_COMPLETED = 4;
        public static final int RDAS_FAILURE = 6;
        public static final int RDAS_OFF = 0;
        public static final int RDAS_READY = 2;
        public static final int RDAS_STANDBY = 1;
    }

    public interface RDASwtSts {
        public static final int SWTST_INHIBITED = 1;
        public static final int SWTST_NORMAL = 0;
        public static final int SWTST_ON = 2;
        public static final int SWTST_RESERVED = 3;
    }

    public interface RPAAPAMode {
        public static final int RPAAPAM_APA_MODE = 1;
        public static final int RPAAPAM_MODE_DEFAULT = 0;
        public static final int RPAAPAM_RPA_MODE = 2;
    }

    public interface RPABLEParkOutDirection {
        public static final int RPABLEPOD_NO_REQUEST = 0;
        public static final int RPABLEPOD_PARALLEL_LEFT = 1;
        public static final int RPABLEPOD_PARALLEL_RIGHT = 2;
        public static final int RPABLEPOD_PERPENDICULAR_FRONT = 3;
        public static final int RPABLEPOD_PERPENDICULAR_FRONT_LEFT = 5;
        public static final int RPABLEPOD_PERPENDICULAR_FRONT_RIGHT = 6;
        public static final int RPABLEPOD_PERPENDICULAR_REAR = 4;
        public static final int RPABLEPOD_PERPENDICULAR_REAR_LEFT = 7;
        public static final int RPABLEPOD_PERPENDICULAR_REAR_RIGHT = 8;
        public static final int RPABLEPOD_RESERVED = 9;
    }

    public interface RPABLEParkingActiveReq {
        public static final int RPABLEPAR_NO_REQUEST = 0;
        public static final int RPABLEPAR_REQUEST_RPA_ACTIVE = 2;
        public static final int RPABLEPAR_REQUEST_RPA_ON = 1;
        public static final int RPABLEPAR_REQUEST_RPA_QUIT = 3;
        public static final int RPABLEPAR_RESERVED = 5;
        public static final int RPABLEPAR_SUSPEND = 4;
    }

    public interface RPACompletedDis {
        public static final int RPACD_NO_REQUEST = 0;
        public static final int RPACD_POC_COMPLETED = 6;
        public static final int RPACD_POWER_OFF = 2;
        public static final int RPACD_POWER_OFF_FAIL_VEHICLE_FORTIFICATION_FAIL = 4;
        public static final int RPACD_POWER_OFF_VEHICLE_FORTIFICATION = 3;
        public static final int RPACD_POWER_OFF_VEHICLE_FORTIFICATION_FAIL = 5;
        public static final int RPACD_P_EPB = 1;
        public static final int RPACD_RESERVED = 7;
    }

    public interface RPAFuncModSts {
        public static final int RPAFMSS_NO_REQUEST = 0;
        public static final int RPAFMSS_PARK_IN = 1;
        public static final int RPAFMSS_PARK_OUT = 2;
    }

    public interface RPAParkInOutDis {
        public static final int RPABLEPOD_DFFAULT = 0;
        public static final int RPABLEPOD_PARK_IN = 1;
        public static final int RPABLEPOD_PARK_OUT = 2;
    }

    public interface RPAParkingTypeIndication {
        public static final int APAVSTS_DEACTIVATED = 0;
        public static final int APAVSTS_FRONT_CPOC = 7;
        public static final int APAVSTS_LEFT_CPSC = 3;
        public static final int APAVSTS_LEFT_PPOC = 5;
        public static final int APAVSTS_LEFT_PPSC = 1;
        public static final int APAVSTS_REAR_CPOC = 8;
        public static final int APAVSTS_RIGHT_CPSC = 4;
        public static final int APAVSTS_RIGHT_PPOC = 6;
        public static final int APAVSTS_RIGHT_PPSC = 2;
    }

    public interface RunningStatus {
        public static final int ABORT = 0;
        public static final int ACTIVE = 2;
        public static final int PREPARE = 1;
    }

    public interface VoiceFeedBack {
        public static final int AVMVFB_AVM_ALREADY_CLOSED = 4;
        public static final int AVMVFB_AVM_ALREADY_ON = 2;
        public static final int AVMVFB_AVM_CLOSE = 3;
        public static final int AVMVFB_AVM_FAILURE = 10;
        public static final int AVMVFB_AVM_ON = 1;
        public static final int AVMVFB_CARTRANSPARENT_ALREADY_CLOSED = 8;
        public static final int AVMVFB_CARTRANSPARENT_ALREADY_ON = 6;
        public static final int AVMVFB_CARTRANSPARENT_CLOSE = 7;
        public static final int AVMVFB_CARTRANSPARENT_ON = 5;
        public static final int AVMVFB_NO_REQUEST = 0;
        public static final int AVMVFB_SPEED_TOO_HIGH = 9;
    }

    public static class Radar implements Parcelable {
        public static final Parcelable.Creator<Radar> CREATOR = new Parcelable.Creator<Radar>() { // from class: mega.car.config.Apa.Radar.1
            @Override // android.os.Parcelable.Creator
            public Radar createFromParcel(Parcel parcel) {
                return new Radar(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public Radar[] newArray(int i) {
                return new Radar[i];
            }
        };
        public int fault;
        public float obstacleDistance;
        public float sectorDistance;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        protected Radar(Parcel parcel) {
            this.fault = parcel.readInt();
            this.obstacleDistance = parcel.readFloat();
            this.sectorDistance = parcel.readFloat();
        }

        public String toString() {
            return "Radar{fault=" + this.fault + ", obstacleDistance=" + this.obstacleDistance + ", sectorDistance=" + this.sectorDistance + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.fault);
            parcel.writeFloat(this.obstacleDistance);
            parcel.writeFloat(this.sectorDistance);
        }
    }
}
