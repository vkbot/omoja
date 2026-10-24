.class final Lcom/mega/update/protocol/McuUpdateProtocol$TOPICS;
.super Ljava/lang/Object;
.source "McuUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/McuUpdateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TOPICS"
.end annotation


# static fields
.field public static final ACTIVE_REQ:Ljava/lang/String; = "update/mcu/active/req"

.field public static final ACTIVE_RES:Ljava/lang/String; = "update/mcu/active/res"

.field public static final INACTIVE_REQ:Ljava/lang/String; = "update/mcu/inactive/req"

.field public static final INACTIVE_RES:Ljava/lang/String; = "update/mcu/inactive/res"

.field public static final PROGRESS:Ljava/lang/String; = "update/mcu/progress"

.field public static final REBOOT_REQ:Ljava/lang/String; = "update/mcu/reboot"

.field public static final RESULT:Ljava/lang/String; = "update/mcu/result"

.field public static final START_REQ:Ljava/lang/String; = "update/mcu/start/req"

.field public static final START_RES:Ljava/lang/String; = "update/mcu/start/res"

.field public static final VERSION_REQ:Ljava/lang/String; = "update/mcu/version/req"

.field public static final VERSION_RES:Ljava/lang/String; = "update/mcu/version/res"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
