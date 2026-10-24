.class public interface abstract Lmega/car/config/Avm;
.super Ljava/lang/Object;
.source "Avm.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x32
    permission = "mega.car.permission.NET"
.end annotation


# static fields
.field public static final ID_ANDROID_REPLY:I = 0x32000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Ais/android-cmd/Set"
        serializable = false
        subscribe = "Ais/android-cmd"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_AVM_KEYCODE_APA:I = 0x32000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "icinput/event/Set"
        serializable = false
        subscribe = "icinput/event"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x32
