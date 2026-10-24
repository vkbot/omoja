.class public abstract Lmega/car/CarManagerBase;
.super Ljava/lang/Object;
.source "CarManagerBase.java"


# instance fields
.field protected final mCar:Lmega/car/MegaCar;


# direct methods
.method public constructor <init>(Lmega/car/MegaCar;)V
    .locals 0
    .param p1, "car"    # Lmega/car/MegaCar;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    .line 12
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 15
    iget-object v0, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    invoke-virtual {v0}, Lmega/car/MegaCar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getEventHandler()Landroid/os/Handler;
    .locals 1

    .line 19
    iget-object v0, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    invoke-virtual {v0}, Lmega/car/MegaCar;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected getMainThreadEventHandler()Landroid/os/Handler;
    .locals 1

    .line 23
    iget-object v0, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    invoke-virtual {v0}, Lmega/car/MegaCar;->getMainThreadEventHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "e"    # Landroid/os/RemoteException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/RemoteException;",
            "TT;)TT;"
        }
    .end annotation

    .line 27
    .local p2, "returnValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    invoke-virtual {v0, p1, p2}, Lmega/car/MegaCar;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    .locals 1
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 31
    iget-object v0, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    invoke-virtual {v0, p1}, Lmega/car/MegaCar;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 32
    return-void
.end method

.method protected abstract onCarDisconnected()V
.end method
