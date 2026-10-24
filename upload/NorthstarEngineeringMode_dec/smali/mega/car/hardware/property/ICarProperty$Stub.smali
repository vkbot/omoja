.class public abstract Lmega/car/hardware/property/ICarProperty$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lmega/car/hardware/property/ICarProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/ICarProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/hardware/property/ICarProperty$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mega.car.hardware.property.ICarProperty"

.field static final TRANSACTION_addBlacklist:I = 0x67

.field static final TRANSACTION_getProperty:I = 0x4

.field static final TRANSACTION_getPropertyConfigs:I = 0x69

.field static final TRANSACTION_getPropertyList:I = 0x3

.field static final TRANSACTION_injectEvent:I = 0x66

.field static final TRANSACTION_injectPropertyChange:I = 0x8

.field static final TRANSACTION_injectPropertySetError:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_removeBlacklist:I = 0x68

.field static final TRANSACTION_setDebug:I = 0x9

.field static final TRANSACTION_setProperty:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0x6

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarProperty;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "mega.car.hardware.property.ICarProperty"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmega/car/hardware/property/ICarProperty;

    if-eqz v1, :cond_1

    check-cast v0, Lmega/car/hardware/property/ICarProperty;

    return-object v0

    :cond_1
    new-instance v0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;

    invoke-direct {v0, p0}, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lmega/car/hardware/property/ICarProperty;
    .locals 1

    sget-object v0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->sDefaultImpl:Lmega/car/hardware/property/ICarProperty;

    return-object v0
.end method

.method public static setDefaultImpl(Lmega/car/hardware/property/ICarProperty;)Z
    .locals 1

    sget-object v0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->sDefaultImpl:Lmega/car/hardware/property/ICarProperty;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->sDefaultImpl:Lmega/car/hardware/property/ICarProperty;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "mega.car.hardware.property.ICarProperty"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-interface {p0, p1}, Lmega/car/hardware/property/ICarProperty;->getPropertyConfigs([I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->removeBlacklist(Ljava/lang/String;[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->addBlacklist(Ljava/lang/String;[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Lmega/car/hardware/property/CarPropertyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->injectEvent(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v3, v1

    :cond_0
    invoke-interface {p0, v3}, Lmega/car/hardware/property/ICarProperty;->setDebug(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lmega/car/hardware/property/CarPropertyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lmega/car/hardware/property/CarPropertyEvent;

    :cond_1
    invoke-interface {p0, v0}, Lmega/car/hardware/property/ICarProperty;->injectPropertyChange(Lmega/car/hardware/property/CarPropertyEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->injectPropertySetError(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarPropertyEventListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->unregisterCallback(ILmega/car/hardware/property/ICarPropertyEventListener;)V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lmega/car/hardware/CarPropertyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lmega/car/hardware/CarPropertyValue;

    :cond_2
    invoke-interface {p0, v0}, Lmega/car/hardware/property/ICarProperty;->setProperty(Lmega/car/hardware/CarPropertyValue;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->getProperty(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v1}, Lmega/car/hardware/CarPropertyValue;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lmega/car/hardware/property/ICarProperty;->getPropertyList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarPropertyEventListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lmega/car/hardware/property/ICarProperty;->unregisterListener(Lmega/car/hardware/property/ICarPropertyEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarPropertyEventListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lmega/car/hardware/property/ICarProperty;->registerListener(Lmega/car/hardware/property/ICarPropertyEventListener;[I[F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
