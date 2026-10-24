.class public Lcom/mega/nexus/os/MegaHandler;
.super Ljava/lang/Object;
.source "MegaHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;J)Z
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method
