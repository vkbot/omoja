package mega.car.config;

import java.util.Map;
import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 52, permission = "mega.car.permission.Navigation")
public interface Navigation {

    @PropertyDefine(publish = "Navigation/CarPosition/Set", subscribe = "Navigation/CarPosition", type = PropertyDefine.JsonString.class)
    public static final int ID_CAR_POSITION = 872415233;

    @PropertyDefine(publish = "Compass/Orientation/Set", type = Float.class)
    public static final int ID_COMPASS_ORIENTATION = 872415276;

    @PropertyDefine(publish = "Navigation/DirectPoint/Set", subscribe = "Navigation/DirectPoint", type = PropertyDefine.JsonString.class)
    public static final int ID_DIRECT_POINT = 872415239;

    @PropertyDefine(publish = "Navigation/EstimatedDuration/Set", subscribe = "Navigation/EstimatedDuration", type = Integer.class)
    public static final int ID_ESTIMATED_DURATION = 872415242;

    @PropertyDefine(publish = "MeiXing/Av2Metadata/Set", subscribe = "MeiXing/Av2Metadata", type = PropertyDefine.JsonString.class)
    public static final int ID_MX_AV_METADATA = 872415264;

    @PropertyDefine(publish = "MeiXing/Av2Position/Set", subscribe = "MeiXing/Av2Position", type = PropertyDefine.JsonString.class)
    public static final int ID_MX_AV_POSITION = 872415259;

    @PropertyDefine(publish = "MeiXing/Av2ProfileLong/Set", subscribe = "MeiXing/Av2ProfileLong", type = PropertyDefine.JsonString.class)
    public static final int ID_MX_AV_PROFILE_LONG = 872415263;

    @PropertyDefine(publish = "MeiXing/Av2ProfileShort/Set", subscribe = "MeiXing/Av2ProfileShort", type = PropertyDefine.JsonString.class)
    public static final int ID_MX_AV_PROFILE_SHORT = 872415262;

    @PropertyDefine(publish = "MeiXing/Av2Segment/Set", subscribe = "MeiXing/Av2Segment", type = PropertyDefine.JsonString.class)
    public static final int ID_MX_AV_SEGMENT = 872415261;

    @PropertyDefine(publish = "MeiXing/Av2Stub/Set", subscribe = "MeiXing/Av2Stub", type = PropertyDefine.JsonString.class)
    public static final int ID_MX_AV_STUB = 872415260;

    @PropertyDefine(changeMode = 2, publish = "MeiXing/SceneReconstruct/Set", serializable = false, subscribe = "MeiXing/SceneReconstruct", type = byte[].class)
    public static final int ID_MX_SCENE_RECONSTRUCT = 872415268;

    @PropertyDefine(publish = "Navigation/IsNavi/Set", subscribe = "Navigation/IsNavi/Set", type = Integer.class)
    public static final int ID_NAVIGATING = 872415241;

    @PropertyDefine(publish = "Navigation/NaviCamera/Set", subscribe = "Navigation/NaviCamera", type = PropertyDefine.JsonString.class)
    public static final int ID_NAVI_CAMERA = 872415237;

    @PropertyDefine(publish = "Navigation/NavCongestionLengthCal/Set", subscribe = "Navigation/NavCongestionLengthCal", type = Float.class)
    public static final int ID_NAVI_CONGESTION_LENGTH_CAL = 872415249;

    @PropertyDefine(publish = "Navigation/NavCongestionLevelCal/Set", subscribe = "Navigation/NavCongestionLevelCal", type = Integer.class)
    public static final int ID_NAVI_CONGESTION_LEVEL_CAL = 872415251;

    @PropertyDefine(publish = "Navigation/RoadZoomState/Set", type = Integer.class)
    public static final int ID_NAVI_CROSS_MAP = 872415274;

    @PropertyDefine(publish = "Navigation/CurrentRoadCondition/Set", subscribe = "Navigation/CurrentRoadCondition", type = PropertyDefine.JsonString.class)
    public static final int ID_NAVI_CURRENT_ROAD_CONDITION = 872415254;

    @PropertyDefine(publish = "Navigation/NavDisplayReq/Set", subscribe = "Navigation/NavDisplayReq", type = Integer.class)
    public static final int ID_NAVI_DISPLAY_REQ = 872415248;

    @PropertyDefine(publish = "Navigation/NavHighWayLengthCal/Set", subscribe = "Navigation/NavHighWayLengthCal", type = Float.class)
    public static final int ID_NAVI_HIGH_WAY_LENGTH_CAL = 872415250;

    @PropertyDefine(publish = "Navigation/NaviInfo/Set", subscribe = "Navigation/NaviInfo/Set", type = PropertyDefine.JsonString.class)
    public static final int ID_NAVI_INFO = 872415234;

    @PropertyDefine(publish = "Navigation/NavJourneySet/Set", subscribe = "Navigation/NavJourneySet", type = Integer.class)
    public static final int ID_NAVI_JOURNEY_SET = 872415253;

    @PropertyDefine(publish = "Navigation/NaviLane/Set", subscribe = "Navigation/NaviLane", type = PropertyDefine.JsonString.class)
    public static final int ID_NAVI_LANE = 872415235;

    @PropertyDefine(publish = "Navigation/NaviLaneHide/Set", type = Integer.class)
    public static final int ID_NAVI_LANE_HIDE = 872415273;

    @PropertyDefine(publish = "Navigation/MapTaskState/Set", type = Integer.class)
    public static final int ID_NAVI_MAP_TASK = 872415275;
    public static final int ID_NAVI_MSG = 872415247;

    @PropertyDefine(publish = "Navigation/NextRoadCondition1/Set", subscribe = "Navigation/NextRoadCondition1", type = PropertyDefine.JsonString.class)
    public static final int ID_NAVI_NEXT_ROAD_CONDITION_1 = 872415255;

    @PropertyDefine(publish = "Navigation/NextRoadCondition2/Set", subscribe = "Navigation/NextRoadCondition2", type = PropertyDefine.JsonString.class)
    public static final int ID_NAVI_NEXT_ROAD_CONDITION_2 = 872415256;

    @PropertyDefine(publish = "Navigation/NextRoadCondition3/Set", subscribe = "Navigation/NextRoadCondition3", type = PropertyDefine.JsonString.class)
    public static final int ID_NAVI_NEXT_ROAD_CONDITION_3 = 872415257;
    public static final int ID_NAVI_NOA_STATUS = 872415258;

    @PropertyDefine(publish = "Navigation/NavRoadCdnIntervalCal/Set", subscribe = "Navigation/NavRoadCdnIntervalCal", type = Float.class)
    public static final int ID_NAVI_ROAD_CDN_INTERVAL_CAL = 872415252;

    @PropertyDefine(publish = "Navigation/NavAdas/Set", subscribe = "Navigation/NavAdas", type = byte[].class)
    public static final int ID_NAV_ADAS = 872415265;

    @PropertyDefine(publish = "Navigation/LimitSpeed/Set", subscribe = "Navigation/LimitSpeed", type = Float.class)
    public static final int ID_NAV_LIMIT_SPEED = 872415266;

    @PropertyDefine(publish = "Navigation/LimitSpeedStatus/Set", subscribe = "Navigation/LimitSpeedStatus", type = Integer.class)
    public static final int ID_NAV_LIMIT_SPEED_STATUS = 872415267;

    @PropertyDefine(publish = "Navigation/NavMapState/Set", subscribe = "Navigation/NavMapState", type = PropertyDefine.JsonString.class)
    public static final int ID_NAV_MAP_STATE = 872415271;

    @PropertyDefine(publish = "Navigation/NavProjector/Set", type = Map.class)
    public static final int ID_NAV_PROJECTOR_CMD = 872415270;

    @PropertyDefine(changeMode = 2, subscribe = "Navigation/NavProjector", type = String.class)
    public static final int ID_NAV_PROJECTOR_REQ = 872415272;

    @PropertyDefine(publish = "Navigation/NaviVersion/Set", subscribe = "Navigation/NaviVersion", type = String.class)
    public static final int ID_NAV_VERSION_INFO = 872415269;
    public static final int ID_NEXT_CHARGE = 872415246;

    @PropertyDefine(publish = "Navigation/RoadConfluencePoint/Set", subscribe = "Navigation/RoadConfluencePoint", type = PropertyDefine.JsonString.class)
    public static final int ID_ROAD_CONFLUENCE = 872415243;

    @PropertyDefine(publish = "Navigation/NaviRoadFacility/Set", subscribe = "Navigation/NaviRoadFacility", type = PropertyDefine.JsonString.class)
    public static final int ID_ROAD_FACILITY = 872415236;

    @PropertyDefine(publish = "Navigation/RoadLaneInfo/Set", subscribe = "Navigation/RoadLaneInfo", type = PropertyDefine.JsonString.class)
    public static final int ID_ROAD_LANE_INFO = 872415244;

    @PropertyDefine(publish = "Navigation/IsInTheRoundabout/Set", subscribe = "Navigation/IsInTheRoundabout", type = Integer.class)
    public static final int ID_ROUNDABOUT = 872415240;

    @PropertyDefine(publish = "Navigation/NaviRoutePlan/Set", subscribe = "Navigation/NaviRoutePlan", type = PropertyDefine.JsonString.class)
    public static final int ID_ROUTE_PLAN = 872415238;
    public static final int ID_SEND_2_CAR = 872415245;
    public static final int MGR_ID = 52;

    public interface Send2Car {
        public static final int FAILURE = 2;
        public static final int INVALID = 0;
        public static final int REQUEST = 1;
    }
}
