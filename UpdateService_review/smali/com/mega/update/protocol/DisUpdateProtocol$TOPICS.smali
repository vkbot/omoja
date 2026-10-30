.class final Lcom/mega/update/protocol/DisUpdateProtocol$TOPICS;
.super Ljava/lang/Object;
.source "DisUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/DisUpdateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TOPICS"
.end annotation


# static fields
.field public static final ACTIVE_REQ:Ljava/lang/String; = "update/dis/active/req"

.field public static final ACTIVE_RES:Ljava/lang/String; = "update/dis/active/res"

.field public static final INACTIVE_REQ:Ljava/lang/String; = "update/dis/inactive/req"

.field public static final INACTIVE_RES:Ljava/lang/String; = "update/dis/inactive/res"

.field public static final PROGRESS:Ljava/lang/String; = "update/dis/progress"

.field public static final REBOOT_REQ:Ljava/lang/String; = "update/dis/reboot"

.field public static final RESULT:Ljava/lang/String; = "update/dis/result"

.field public static final START_REQ:Ljava/lang/String; = "update/dis/start/req"

.field public static final START_RES:Ljava/lang/String; = "update/dis/start/res"

.field public static final VERSION_REQ:Ljava/lang/String; = "update/dis/version/req"

.field public static final VERSION_RES:Ljava/lang/String; = "update/dis/version/res"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
