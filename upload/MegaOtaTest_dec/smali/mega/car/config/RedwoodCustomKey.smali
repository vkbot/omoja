.class public interface abstract Lmega/car/config/RedwoodCustomKey;
.super Ljava/lang/Object;
.source "RedwoodCustomKey.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x6c
    name = "redwood_custom_key"
    permission = "mega.car.permission.VEHICLE_CONTROL"
.end annotation


# static fields
.field public static final ID_MFS_DIRECTION_SWITCH:I = 0x6c000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "BodyInfo/MFSDirectionSwitch"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MFS_LEFT_SWITCH:I = 0x6c000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "BodyInfo/MFSLeftSwitch"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MFS_RIGHT_SWITCH:I = 0x6c000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "BodyInfo/MFSRightSwitch"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MFS_SWITCH_MODE:I = 0x6c000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "BodyInfo/MFSSwitchMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MFS_TJA_ICA_SWITCH:I = 0x6c000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "BodyInfo/MFSTJAICASwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RIGHT_ROLLER_SWITCH:I = 0x6c000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "BodyInfo/RightRollerSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x6c

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.VEHICLE_CONTROL"

.field public static final SERVICE_NAME:Ljava/lang/String; = "redwood_custom_key"
