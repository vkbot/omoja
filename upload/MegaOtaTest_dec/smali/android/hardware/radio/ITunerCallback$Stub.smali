.class public abstract Landroid/hardware/radio/ITunerCallback$Stub;
.super Landroid/os/Binder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITunerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITunerCallback"

.field static final TRANSACTION_onAntennaState:I = 0x6

.field static final TRANSACTION_onBackgroundScanAvailabilityChange:I = 0x7

.field static final TRANSACTION_onBackgroundScanComplete:I = 0x8

.field static final TRANSACTION_onConfigurationChanged:I = 0x2

.field static final TRANSACTION_onCurrentProgramInfoChanged:I = 0x3

.field static final TRANSACTION_onEmergencyAnnouncement:I = 0x5

.field static final TRANSACTION_onError:I = 0x1

.field static final TRANSACTION_onProgramListChanged:I = 0x9

.field static final TRANSACTION_onTrafficAnnouncement:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITunerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITunerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    const-string v0, "android.hardware.radio.ITunerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/ITunerCallback;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ITunerCallback;

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/hardware/radio/ITunerCallback;
    .locals 1

    .line 359
    sget-object v0, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;->sDefaultImpl:Landroid/hardware/radio/ITunerCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/radio/ITunerCallback;)Z
    .locals 2
    .param p0, "impl"    # Landroid/hardware/radio/ITunerCallback;

    .line 349
    sget-object v0, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;->sDefaultImpl:Landroid/hardware/radio/ITunerCallback;

    if-nez v0, :cond_1

    .line 352
    if-eqz p0, :cond_0

    .line 353
    sput-object p0, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;->sDefaultImpl:Landroid/hardware/radio/ITunerCallback;

    .line 354
    const/4 v0, 0x1

    return v0

    .line 356
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 350
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 69
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

    .line 73
    const-string v0, "android.hardware.radio.ITunerCallback"

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 155
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListChanged()V

    .line 157
    return v2

    .line 149
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanComplete()V

    .line 151
    return v2

    .line 141
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 144
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanAvailabilityChange(Z)V

    .line 145
    return v2

    .line 133
    .end local v1    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 136
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onAntennaState(Z)V

    .line 137
    return v2

    .line 125
    .end local v1    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 128
    .restart local v1    # "_arg0":Z
    :cond_2
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onEmergencyAnnouncement(Z)V

    .line 129
    return v2

    .line 117
    .end local v1    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 120
    .restart local v1    # "_arg0":Z
    :cond_3
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onTrafficAnnouncement(Z)V

    .line 121
    return v2

    .line 104
    .end local v1    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    sget-object v1, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .local v1, "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    goto :goto_0

    .line 110
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :cond_4
    const/4 v1, 0x0

    .line 112
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 113
    return v2

    .line 91
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    sget-object v1, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    .local v1, "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    goto :goto_1

    .line 97
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :cond_5
    const/4 v1, 0x0

    .line 99
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 100
    return v2

    .line 83
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onError(I)V

    .line 87
    return v2

    .line 78
    .end local v1    # "_arg0":I
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
