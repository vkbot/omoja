.class public interface abstract Lmega/car/config/QNX;
.super Ljava/lang/Object;
.source "QNX.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x2e
    permission = "mega.car.permission.CAR_POWER"
.end annotation


# static fields
.field public static final MGR_ID:I = 0x2e

.field public static final MIC_MUTE:I = 0x2e000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MIC/Mute/Set"
        subscribe = "MIC/Mute"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.CAR_POWER"

.field public static final SERVICE_NAME:Ljava/lang/String; = "QNX"

.field public static final SOC_ABNORMAL_EVENT_ACK:I = 0x2e000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SoC/AbnormalEvent/Ack"
        serializable = false
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final SOC_ABNORMAL_EVENT_REPORT:I = 0x2e000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        serializable = false
        subscribe = "SoC/AbnormalEvent/Report"
        type = Ljava/lang/String;
    .end annotation
.end field
