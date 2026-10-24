.class Lmega/car/hardware/property/ICarPropertyEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarPropertyEventListener.java"

# interfaces
.implements Lmega/car/hardware/property/ICarPropertyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/ICarPropertyEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmega/car/hardware/property/ICarPropertyEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lmega/car/hardware/property/ICarPropertyEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 85
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 88
    iget-object v0, p0, Lmega/car/hardware/property/ICarPropertyEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "mega.car.hardware.property.ICarPropertyEventListener"

    return-object v0
.end method

.method public onEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 100
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "mega.car.hardware.property.ICarPropertyEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 104
    iget-object v1, p0, Lmega/car/hardware/property/ICarPropertyEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 105
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarPropertyEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    invoke-static {}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarPropertyEventListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lmega/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    return-void

    .line 111
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    nop

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    throw v1
.end method
