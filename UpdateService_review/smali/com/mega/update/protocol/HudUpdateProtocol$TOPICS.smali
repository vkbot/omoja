.class final Lcom/mega/update/protocol/HudUpdateProtocol$TOPICS;
.super Ljava/lang/Object;
.source "HudUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/HudUpdateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TOPICS"
.end annotation


# static fields
.field public static final ACTIVE_REQ:Ljava/lang/String; = "update/hud/active/req"

.field public static final ACTIVE_RES:Ljava/lang/String; = "update/hud/active/res"

.field public static final PROGRESS:Ljava/lang/String; = "update/hud/progress"

.field public static final REBOOT_REQ:Ljava/lang/String; = "update/hud/reboot"

.field public static final RESULT:Ljava/lang/String; = "update/hud/result"

.field public static final START_REQ:Ljava/lang/String; = "update/hud/start/req"

.field public static final START_RES:Ljava/lang/String; = "update/hud/start/res"

.field public static final VERSION_REQ:Ljava/lang/String; = "update/hud/version/req"

.field public static final VERSION_RES:Ljava/lang/String; = "update/hud/version/res"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
