.class public interface abstract Lmega/car/ADAS;
.super Ljava/lang/Object;
.source "ADAS.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x65
    permission = "mega.car.permission.VEHICLE_CONTROL"
.end annotation


# static fields
.field public static final ADAS_NHOP_TTS:I = 0x65000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/NHOP/TTSPlay/Set"
        subscribe = "ADAS/NHOP/TTSPlay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x65

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.VEHICLE_CONTROL"
