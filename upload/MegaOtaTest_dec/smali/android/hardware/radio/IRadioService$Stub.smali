.class public abstract Landroid/hardware/radio/IRadioService$Stub;
.super Landroid/os/Binder;
.source "IRadioService.java"

# interfaces
.implements Landroid/hardware/radio/IRadioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/IRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/IRadioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.IRadioService"

.field static final TRANSACTION_listModules:I = 0x1

.field static final TRANSACTION_openTuner:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.hardware.radio.IRadioService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/IRadioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/IRadioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "android.hardware.radio.IRadioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/IRadioService;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/IRadioService;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Landroid/hardware/radio/IRadioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/IRadioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/hardware/radio/IRadioService;
    .locals 1

    .line 184
    sget-object v0, Landroid/hardware/radio/IRadioService$Stub$Proxy;->sDefaultImpl:Landroid/hardware/radio/IRadioService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/radio/IRadioService;)Z
    .locals 2
    .param p0, "impl"    # Landroid/hardware/radio/IRadioService;

    .line 174
    sget-object v0, Landroid/hardware/radio/IRadioService$Stub$Proxy;->sDefaultImpl:Landroid/hardware/radio/IRadioService;

    if-nez v0, :cond_1

    .line 177
    if-eqz p0, :cond_0

    .line 178
    sput-object p0, Landroid/hardware/radio/IRadioService$Stub$Proxy;->sDefaultImpl:Landroid/hardware/radio/IRadioService;

    .line 179
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 54
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const-string v0, "android.hardware.radio.IRadioService"

    .line 59
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 63
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v1

    .line 76
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    sget-object v3, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/RadioManager$BandConfig;

    .local v3, "_arg1":Landroid/hardware/radio/RadioManager$BandConfig;
    goto :goto_0

    .line 84
    .end local v3    # "_arg1":Landroid/hardware/radio/RadioManager$BandConfig;
    :cond_2
    const/4 v3, 0x0

    .line 87
    .restart local v3    # "_arg1":Landroid/hardware/radio/RadioManager$BandConfig;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 89
    .local v4, "_arg2":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/radio/ITunerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITunerCallback;

    move-result-object v5

    .line 90
    .local v5, "_arg3":Landroid/hardware/radio/ITunerCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/radio/IRadioService$Stub;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object v6

    .line 91
    .local v6, "_result":Landroid/hardware/radio/ITuner;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/hardware/radio/ITuner;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 93
    return v1

    .line 68
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/RadioManager$BandConfig;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/hardware/radio/ITunerCallback;
    .end local v6    # "_result":Landroid/hardware/radio/ITuner;
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/hardware/radio/IRadioService$Stub;->listModules()Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ModuleProperties;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 72
    return v1
.end method
