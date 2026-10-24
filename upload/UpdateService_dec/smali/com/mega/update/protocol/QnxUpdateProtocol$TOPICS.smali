.class final Lcom/mega/update/protocol/QnxUpdateProtocol$TOPICS;
.super Ljava/lang/Object;
.source "QnxUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/QnxUpdateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TOPICS"
.end annotation


# static fields
.field public static final PROGRESS:Ljava/lang/String; = "update/qnx/progress"

.field public static final REBOOT_REQ:Ljava/lang/String; = "update/qnx/reboot"

.field public static final RESULT:Ljava/lang/String; = "update/qnx/result"

.field public static final START_REQ:Ljava/lang/String; = "update/qnx/start/req"

.field public static final START_RES:Ljava/lang/String; = "update/qnx/start/res"

.field public static final SWITCH_REQ:Ljava/lang/String; = "update/qnx/switch/req"

.field public static final SWITCH_RES:Ljava/lang/String; = "update/qnx/switch/res"

.field public static final VERSION_REQ:Ljava/lang/String; = "update/qnx/version/req"

.field public static final VERSION_RES:Ljava/lang/String; = "update/qnx/version/res"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
