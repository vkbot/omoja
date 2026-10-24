.class public abstract Lmega/car/ICar$Stub;
.super Landroid/os/Binder;
.source "ICar.java"

# interfaces
.implements Lmega/car/ICar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/ICar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/ICar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mega.car.ICar"

.field static final TRANSACTION_getCarService:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "mega.car.ICar"

    invoke-virtual {p0, p0, v0}, Lmega/car/ICar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmega/car/ICar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const-string v0, "mega.car.ICar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmega/car/ICar;

    if-eqz v1, :cond_1

    .line 40
    move-object v1, v0

    check-cast v1, Lmega/car/ICar;

    return-object v1

    .line 42
    :cond_1
    new-instance v1, Lmega/car/ICar$Stub$Proxy;

    invoke-direct {v1, p0}, Lmega/car/ICar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmega/car/ICar;
    .locals 1

    .line 127
    sget-object v0, Lmega/car/ICar$Stub$Proxy;->sDefaultImpl:Lmega/car/ICar;

    return-object v0
.end method

.method public static setDefaultImpl(Lmega/car/ICar;)Z
    .locals 2
    .param p0, "impl"    # Lmega/car/ICar;

    .line 117
    sget-object v0, Lmega/car/ICar$Stub$Proxy;->sDefaultImpl:Lmega/car/ICar;

    if-nez v0, :cond_1

    .line 120
    if-eqz p0, :cond_0

    .line 121
    sput-object p0, Lmega/car/ICar$Stub$Proxy;->sDefaultImpl:Lmega/car/ICar;

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const-string v0, "mega.car.ICar"

    .line 51
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 55
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v1

    .line 60
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lmega/car/ICar$Stub;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 64
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 66
    return v1
.end method
