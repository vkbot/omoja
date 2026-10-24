.class public abstract Lmega/car/input/ICarInput$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lmega/car/input/ICarInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/ICarInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/input/ICarInput$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mega.car.input.ICarInput"

.field static final TRANSACTION_customEventDownReport:I = 0x4

.field static final TRANSACTION_customRotaryEventInterceptReport:I = 0x7

.field static final TRANSACTION_forceCustomEventDownReport:I = 0x6

.field static final TRANSACTION_releaseInputEventCapture:I = 0x3

.field static final TRANSACTION_releaseInputEventCapture2:I = 0x8

.field static final TRANSACTION_requestInputEventCapture:I = 0x2

.field static final TRANSACTION_requestInputEventCaptureWithLevel:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "mega.car.input.ICarInput"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInput;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "mega.car.input.ICarInput"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmega/car/input/ICarInput;

    if-eqz v1, :cond_1

    check-cast v0, Lmega/car/input/ICarInput;

    return-object v0

    :cond_1
    new-instance v0, Lmega/car/input/ICarInput$Stub$Proxy;

    invoke-direct {v0, p0}, Lmega/car/input/ICarInput$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lmega/car/input/ICarInput;
    .locals 1

    sget-object v0, Lmega/car/input/ICarInput$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInput;

    return-object v0
.end method

.method public static setDefaultImpl(Lmega/car/input/ICarInput;)Z
    .locals 1

    sget-object v0, Lmega/car/input/ICarInput$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInput;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lmega/car/input/ICarInput$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInput;

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
    .locals 3

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "mega.car.input.ICarInput"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lmega/car/input/ICarInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInputCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lmega/car/input/ICarInput;->releaseInputEventCapture2(Lmega/car/input/ICarInputCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {p0, p1, v0}, Lmega/car/input/ICarInput;->customRotaryEventInterceptReport(IZ)V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {p0, p1, v0}, Lmega/car/input/ICarInput;->forceCustomEventDownReport(IZ)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lmega/car/input/ICarInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInputCallback;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lmega/car/input/ICarInput;->requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    invoke-interface {p0, p1, v0}, Lmega/car/input/ICarInput;->customEventDownReport(IZ)V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lmega/car/input/ICarInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInputCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lmega/car/input/ICarInput;->releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lmega/car/input/ICarInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInputCallback;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lmega/car/input/ICarInput;->requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
