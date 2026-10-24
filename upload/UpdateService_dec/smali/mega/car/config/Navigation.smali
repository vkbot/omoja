.class public interface abstract Lmega/car/config/Navigation;
.super Ljava/lang/Object;
.source "Navigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Navigation$Send2Car;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x34
    permission = "mega.car.permission.Navigation"
.end annotation


# static fields
.field public static final ID_CAR_POSITION:I = 0x34000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/CarPosition/Set"
        subscribe = "Navigation/CarPosition"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_DIRECT_POINT:I = 0x34000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/DirectPoint/Set"
        subscribe = "Navigation/DirectPoint"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_ESTIMATED_DURATION:I = 0x3400000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/EstimatedDuration/Set"
        subscribe = "Navigation/EstimatedDuration"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MX_AV_METADATA:I = 0x34000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MeiXing/Av2Metadata/Set"
        subscribe = "MeiXing/Av2Metadata"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_MX_AV_POSITION:I = 0x3400001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MeiXing/Av2Position/Set"
        subscribe = "MeiXing/Av2Position"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_MX_AV_PROFILE_LONG:I = 0x3400001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MeiXing/Av2ProfileLong/Set"
        subscribe = "MeiXing/Av2ProfileLong"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_MX_AV_PROFILE_SHORT:I = 0x3400001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MeiXing/Av2ProfileShort/Set"
        subscribe = "MeiXing/Av2ProfileShort"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_MX_AV_SEGMENT:I = 0x3400001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MeiXing/Av2Segment/Set"
        subscribe = "MeiXing/Av2Segment"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_MX_AV_STUB:I = 0x3400001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MeiXing/Av2Stub/Set"
        subscribe = "MeiXing/Av2Stub"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_MX_SCENE_RECONSTRUCT:I = 0x34000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "MeiXing/SceneReconstruct/Set"
        serializable = false
        subscribe = "MeiXing/SceneReconstruct"
        type = [B
    .end annotation
.end field

.field public static final ID_NAVIGATING:I = 0x34000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/IsNavi/Set"
        subscribe = "Navigation/IsNavi/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVI_CAMERA:I = 0x34000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NaviCamera/Set"
        subscribe = "Navigation/NaviCamera"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_NAVI_CONGESTION_LENGTH_CAL:I = 0x34000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NavCongestionLengthCal/Set"
        subscribe = "Navigation/NavCongestionLengthCal"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_NAVI_CONGESTION_LEVEL_CAL:I = 0x34000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NavCongestionLevelCal/Set"
        subscribe = "Navigation/NavCongestionLevelCal"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVI_CURRENT_ROAD_CONDITION:I = 0x34000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/CurrentRoadCondition/Set"
        subscribe = "Navigation/CurrentRoadCondition"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_NAVI_DISPLAY_REQ:I = 0x34000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NavDisplayReq/Set"
        subscribe = "Navigation/NavDisplayReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVI_HIGH_WAY_LENGTH_CAL:I = 0x34000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NavHighWayLengthCal/Set"
        subscribe = "Navigation/NavHighWayLengthCal"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_NAVI_INFO:I = 0x34000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NaviInfo/Set"
        subscribe = "Navigation/NaviInfo/Set"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_NAVI_JOURNEY_SET:I = 0x34000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NavJourneySet/Set"
        subscribe = "Navigation/NavJourneySet"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVI_LANE:I = 0x34000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NaviLane/Set"
        subscribe = "Navigation/NaviLane"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_NAVI_MSG:I = 0x3400000f

.field public static final ID_NAVI_NEXT_ROAD_CONDITION_1:I = 0x34000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NextRoadCondition1/Set"
        subscribe = "Navigation/NextRoadCondition1"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_NAVI_NEXT_ROAD_CONDITION_2:I = 0x34000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NextRoadCondition2/Set"
        subscribe = "Navigation/NextRoadCondition2"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_NAVI_NEXT_ROAD_CONDITION_3:I = 0x34000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NextRoadCondition3/Set"
        subscribe = "Navigation/NextRoadCondition3"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_NAVI_NOA_STATUS:I = 0x3400001a

.field public static final ID_NAVI_ROAD_CDN_INTERVAL_CAL:I = 0x34000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NavRoadCdnIntervalCal/Set"
        subscribe = "Navigation/NavRoadCdnIntervalCal"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_NAV_ADAS:I = 0x34000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NavAdas/Set"
        subscribe = "Navigation/NavAdas"
        type = [B
    .end annotation
.end field

.field public static final ID_NAV_LIMIT_SPEED:I = 0x34000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/LimitSpeed/Set"
        subscribe = "Navigation/LimitSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_NAV_LIMIT_SPEED_STATUS:I = 0x34000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/LimitSpeedStatus/Set"
        subscribe = "Navigation/LimitSpeedStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAV_MAP_STATE:I = 0x34000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NavMapState/Set"
        subscribe = "Navigation/NavMapState"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_NAV_PROJECTOR_CMD:I = 0x34000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NavProjector/Set"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_NAV_PROJECTOR_REQ:I = 0x34000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Navigation/NavProjector"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_NAV_VERSION_INFO:I = 0x34000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NaviVersion/Set"
        subscribe = "Navigation/NaviVersion"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_NEXT_CHARGE:I = 0x3400000e

.field public static final ID_ROAD_CONFLUENCE:I = 0x3400000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/RoadConfluencePoint/Set"
        subscribe = "Navigation/RoadConfluencePoint"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_ROAD_FACILITY:I = 0x34000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NaviRoadFacility/Set"
        subscribe = "Navigation/NaviRoadFacility"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_ROAD_LANE_INFO:I = 0x3400000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/RoadLaneInfo/Set"
        subscribe = "Navigation/RoadLaneInfo"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_ROUNDABOUT:I = 0x34000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/IsInTheRoundabout/Set"
        subscribe = "Navigation/IsInTheRoundabout"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ROUTE_PLAN:I = 0x34000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Navigation/NaviRoutePlan/Set"
        subscribe = "Navigation/NaviRoutePlan"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_SEND_2_CAR:I = 0x3400000d

.field public static final MGR_ID:I = 0x34
