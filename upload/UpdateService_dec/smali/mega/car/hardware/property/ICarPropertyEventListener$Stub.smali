.class public abstract Lmega/car/hardware/property/ICarPropertyEventListener$Stub;
.super Landroid/os/Binder;
.source "ICarPropertyEventListener.java"

# interfaces
.implements Lmega/car/hardware/property/ICarPropertyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/ICarPropertyEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/hardware/property/ICarPropertyEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mega.car.hardware.property.ICarPropertyEventListener"

.field static final TRANSACTION_onEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "mega.car.hardware.property.ICarPropertyEventListener"

    invoke-virtual {p0, p0, v0}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarPropertyEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "mega.car.hardware.property.ICarPropertyEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmega/car/hardware/property/ICarPropertyEventListener;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Lmega/car/hardware/property/ICarPropertyEventListener;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Lmega/car/hardware/property/ICarPropertyEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmega/car/hardware/property/ICarPropertyEventListener;
    .locals 1

    .line 131
    sget-object v0, Lmega/car/hardware/property/ICarPropertyEventListener$Stub$Proxy;->sDefaultImpl:Lmega/car/hardware/property/ICarPropertyEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lmega/car/hardware/property/ICarPropertyEventListener;)Z
    .locals 2
    .param p0, "impl"    # Lmega/car/hardware/property/ICarPropertyEventListener;

    .line 121
    sget-object v0, Lmega/car/hardware/property/ICarPropertyEventListener$Stub$Proxy;->sDefaultImpl:Lmega/car/hardware/property/ICarPropertyEventListener;

    if-nez v0, :cond_1

    .line 124
    if-eqz p0, :cond_0

    .line 125
    sput-object p0, Lmega/car/hardware/property/ICarPropertyEventListener$Stub$Proxy;->sDefaultImpl:Lmega/car/hardware/property/ICarPropertyEventListener;

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 53
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "mega.car.hardware.property.ICarPropertyEventListener"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 67
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    sget-object v2, Lmega/car/hardware/property/CarPropertyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 70
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    invoke-virtual {p0, v2}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;->onEvent(Ljava/util/List;)V

    .line 71
    return v1
.end method
