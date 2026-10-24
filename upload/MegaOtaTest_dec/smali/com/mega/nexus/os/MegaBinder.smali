.class public Lcom/mega/nexus/os/MegaBinder;
.super Ljava/lang/Object;
.source "MegaBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 9
    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
