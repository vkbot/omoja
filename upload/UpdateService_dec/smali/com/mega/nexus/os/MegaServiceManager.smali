.class public Lcom/mega/nexus/os/MegaServiceManager;
.super Ljava/lang/Object;
.source "MegaServiceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 12
    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    return-void
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;

    .line 8
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
