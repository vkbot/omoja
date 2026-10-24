.class public Lcom/mega/nexus/app/MegaActivityManagerProxy$RunningTaskInfo;
.super Ljava/lang/Object;
.source "MegaActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/MegaActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningTaskInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1
    .param p0, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 43
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    return v0
.end method
