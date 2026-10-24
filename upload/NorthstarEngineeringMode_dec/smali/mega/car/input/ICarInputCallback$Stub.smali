.class public abstract Lmega/car/input/ICarInputCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lmega/car/input/ICarInputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/ICarInputCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/input/ICarInputCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mega.car.input.ICarInputCallback"

.field static final TRANSACTION_onCustomInputEvent:I = 0x3

.field static final TRANSACTION_onCustomRotaryEvent:I = 0x4

.field static final TRANSACTION_onKeyEvent:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "mega.car.input.ICarInputCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInputCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "mega.car.input.ICarInputCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmega/car/input/ICarInputCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lmega/car/input/ICarInputCallback;

    return-object v0

    :cond_1
    new-instance v0, Lmega/car/input/ICarInputCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lmega/car/input/ICarInputCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lmega/car/input/ICarInputCallback;
    .locals 1

    sget-object v0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInputCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lmega/car/input/ICarInputCallback;)Z
    .locals 1

    sget-object v0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInputCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInputCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "mega.car.input.ICarInputCallback"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lmega/car/input/CustomRotaryEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lmega/car/input/CustomRotaryEvent;

    :cond_2
    invoke-interface {p0, v1}, Lmega/car/input/ICarInputCallback;->onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V

    return v2

    :cond_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lmega/car/input/CustomInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lmega/car/input/CustomInputEvent;

    :cond_4
    invoke-interface {p0, v1}, Lmega/car/input/ICarInputCallback;->onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V

    return v2

    :cond_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    :cond_6
    invoke-interface {p0, v1}, Lmega/car/input/ICarInputCallback;->onKeyEvent(Landroid/view/KeyEvent;)V

    return v2
.end method
