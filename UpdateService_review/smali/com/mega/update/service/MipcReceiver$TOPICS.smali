.class public Lcom/mega/update/service/MipcReceiver$TOPICS;
.super Ljava/lang/Object;
.source "MipcReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/service/MipcReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TOPICS"
.end annotation


# static fields
.field public static final ACTION_REQ:Ljava/lang/String; = "update/action/req"

.field public static final ACTION_RES:Ljava/lang/String; = "update/action/res"

.field public static final STATE_NOTIFY:Ljava/lang/String; = "update/state/notify"

.field public static final STATE_REQ:Ljava/lang/String; = "update/state/req"

.field public static final STATE_RES:Ljava/lang/String; = "update/state/res"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
