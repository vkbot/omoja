.class public abstract Lmega/car/hardware/property/ICarProperty$Stub;
.super Landroid/os/Binder;
.source "ICarProperty.java"

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

.field static final TRANSACTION_getPropertyList:I = 0x3

.field static final TRANSACTION_injectEvent:I = 0x66

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_removeBlacklist:I = 0x68

.field static final TRANSACTION_setProperty:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0x6

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {p0, p0, v0}, Lmega/car/hardware/property/ICarProperty$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarProperty;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "mega.car.hardware.property.ICarProperty"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmega/car/hardware/property/ICarProperty;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Lmega/car/hardware/property/ICarProperty;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;

    invoke-direct {v1, p0}, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmega/car/hardware/property/ICarProperty;
    .locals 1

    .line 458
    sget-object v0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->sDefaultImpl:Lmega/car/hardware/property/ICarProperty;

    return-object v0
.end method

.method public static setDefaultImpl(Lmega/car/hardware/property/ICarProperty;)Z
    .locals 2
    .param p0, "impl"    # Lmega/car/hardware/property/ICarProperty;

    .line 448
    sget-object v0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->sDefaultImpl:Lmega/car/hardware/property/ICarProperty;

    if-nez v0, :cond_1

    .line 451
    if-eqz p0, :cond_0

    .line 452
    sput-object p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->sDefaultImpl:Lmega/car/hardware/property/ICarProperty;

    .line 453
    const/4 v0, 0x1

    return v0

    .line 455
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 449
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 91
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const-string v0, "mega.car.hardware.property.ICarProperty"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 199
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 204
    .local v3, "_arg1":[I
    invoke-virtual {p0, v1, v3}, Lmega/car/hardware/property/ICarProperty$Stub;->removeBlacklist(Ljava/lang/String;[I)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    return v2

    .line 188
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 193
    .restart local v3    # "_arg1":[I
    invoke-virtual {p0, v1, v3}, Lmega/car/hardware/property/ICarProperty$Stub;->addBlacklist(Ljava/lang/String;[I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    return v2

    .line 177
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v3, Lmega/car/hardware/property/CarPropertyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 182
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    invoke-virtual {p0, v1, v3}, Lmega/car/hardware/property/ICarProperty$Stub;->injectEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    return v2

    .line 167
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarPropertyEventListener;

    move-result-object v3

    .line 172
    .local v3, "_arg1":Lmega/car/hardware/property/ICarPropertyEventListener;
    invoke-virtual {p0, v1, v3}, Lmega/car/hardware/property/ICarProperty$Stub;->unregisterCallback(ILmega/car/hardware/property/ICarPropertyEventListener;)V

    .line 173
    return v2

    .line 153
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Lmega/car/hardware/property/ICarPropertyEventListener;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lmega/car/hardware/CarPropertyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/hardware/CarPropertyValue;

    .local v1, "_arg0":Lmega/car/hardware/CarPropertyValue;
    goto :goto_0

    .line 159
    .end local v1    # "_arg0":Lmega/car/hardware/CarPropertyValue;
    :cond_0
    const/4 v1, 0x0

    .line 161
    .restart local v1    # "_arg0":Lmega/car/hardware/CarPropertyValue;
    :goto_0
    invoke-virtual {p0, v1}, Lmega/car/hardware/property/ICarProperty$Stub;->setProperty(Lmega/car/hardware/CarPropertyValue;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    return v2

    .line 135
    .end local v1    # "_arg0":Lmega/car/hardware/CarPropertyValue;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lmega/car/hardware/property/ICarProperty$Stub;->getProperty(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v4

    .line 141
    .local v4, "_result":Lmega/car/hardware/CarPropertyValue;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v4, :cond_1

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v4, p3, v2}, Lmega/car/hardware/CarPropertyValue;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 147
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    :goto_1
    return v2

    .line 127
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lmega/car/hardware/CarPropertyValue;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lmega/car/hardware/property/ICarProperty$Stub;->getPropertyList()Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/CarPropertyConfig;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 131
    return v2

    .line 118
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/CarPropertyConfig;>;"
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarPropertyEventListener;

    move-result-object v1

    .line 121
    .local v1, "_arg0":Lmega/car/hardware/property/ICarPropertyEventListener;
    invoke-virtual {p0, v1}, Lmega/car/hardware/property/ICarProperty$Stub;->unregisterListener(Lmega/car/hardware/property/ICarPropertyEventListener;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v2

    .line 105
    .end local v1    # "_arg0":Lmega/car/hardware/property/ICarPropertyEventListener;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmega/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarPropertyEventListener;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg0":Lmega/car/hardware/property/ICarPropertyEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 111
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    .line 112
    .local v4, "_arg2":[F
    invoke-virtual {p0, v1, v3, v4}, Lmega/car/hardware/property/ICarProperty$Stub;->registerListener(Lmega/car/hardware/property/ICarPropertyEventListener;[I[F)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v2

    .line 100
    .end local v1    # "_arg0":Lmega/car/hardware/property/ICarPropertyEventListener;
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[F
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
