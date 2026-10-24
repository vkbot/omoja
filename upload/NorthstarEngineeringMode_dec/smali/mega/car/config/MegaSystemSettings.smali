.class public interface abstract Lmega/car/config/MegaSystemSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x35
    permission = "mega.car.permission.CarSettings"
.end annotation


# static fields
.field public static final MGR_ID:I = 0x35

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.CarSettings"

.field public static final SERVICE_NAME:Ljava/lang/String; = "CarSettings"

.field public static final TIME_FORMAT_24_HOURS:I = 0x35000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        source = 0x5
        topic = "time_12_24"
        type = Ljava/lang/Integer;
    .end annotation
.end field
