.class public Lmega/car/hardware/property/ICarProperty$Default;
.super Ljava/lang/Object;
.source "ICarProperty.java"

# interfaces
.implements Lmega/car/hardware/property/ICarProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/ICarProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addBlacklist(Ljava/lang/String;[I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "propIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(II)Lmega/car/hardware/CarPropertyValue;
    .locals 1
    .param p1, "prop"    # I
    .param p2, "areaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public injectEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    .local p2, "events":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    return-void
.end method

.method public registerListener(Lmega/car/hardware/property/ICarPropertyEventListener;[I[F)V
    .locals 0
    .param p1, "callback"    # Lmega/car/hardware/property/ICarPropertyEventListener;
    .param p2, "propIds"    # [I
    .param p3, "rates"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public removeBlacklist(Ljava/lang/String;[I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "propIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public setProperty(Lmega/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p1, "prop"    # Lmega/car/hardware/CarPropertyValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public unregisterCallback(ILmega/car/hardware/property/ICarPropertyEventListener;)V
    .locals 0
    .param p1, "propId"    # I
    .param p2, "callback"    # Lmega/car/hardware/property/ICarPropertyEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public unregisterListener(Lmega/car/hardware/property/ICarPropertyEventListener;)V
    .locals 0
    .param p1, "callback"    # Lmega/car/hardware/property/ICarPropertyEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
