.class public abstract Lmega/car/CarManagerBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mCar:Lmega/car/MegaCar;


# direct methods
.method public constructor <init>(Lmega/car/MegaCar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    invoke-virtual {p0}, Lmega/car/MegaCar;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getEventHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    invoke-virtual {p0}, Lmega/car/MegaCar;->getEventHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getMainThreadEventHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    invoke-virtual {p0}, Lmega/car/MegaCar;->getMainThreadEventHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/RemoteException;",
            "TT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    .line 1
    invoke-virtual {p0, p1, p2}, Lmega/car/MegaCar;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    .locals 0

    iget-object p0, p0, Lmega/car/CarManagerBase;->mCar:Lmega/car/MegaCar;

    .line 2
    invoke-virtual {p0, p1}, Lmega/car/MegaCar;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    return-void
.end method

.method public abstract onCarDisconnected()V
.end method
