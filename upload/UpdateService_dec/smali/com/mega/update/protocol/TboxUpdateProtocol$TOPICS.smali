.class final Lcom/mega/update/protocol/TboxUpdateProtocol$TOPICS;
.super Ljava/lang/Object;
.source "TboxUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/TboxUpdateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TOPICS"
.end annotation


# static fields
.field public static final ACTIVE_REQ:Ljava/lang/String; = "update/tbox/active/req"

.field public static final ACTIVE_RES:Ljava/lang/String; = "update/tbox/active/res"

.field public static final PROGRESS:Ljava/lang/String; = "update/tbox/progress"

.field public static final REBOOT_REQ:Ljava/lang/String; = "update/tbox/reboot"

.field public static final RESULT:Ljava/lang/String; = "update/tbox/result"

.field public static final START_REQ:Ljava/lang/String; = "update/tbox/start/req"

.field public static final START_RES:Ljava/lang/String; = "update/tbox/start/res"

.field public static final VERSION_REQ:Ljava/lang/String; = "update/tbox/version/req"

.field public static final VERSION_RES:Ljava/lang/String; = "update/tbox/version/res"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
