.class public abstract Landroid/hardware/radio/ITuner$Stub;
.super Landroid/os/Binder;
.source "ITuner.java"

# interfaces
.implements Landroid/hardware/radio/ITuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITuner$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITuner"

.field static final TRANSACTION_cancel:I = 0xa

.field static final TRANSACTION_cancelAnnouncement:I = 0xb

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getImage:I = 0xd

.field static final TRANSACTION_getProgramInformation:I = 0xc

.field static final TRANSACTION_getProgramList:I = 0xf

.field static final TRANSACTION_isAnalogForced:I = 0x10

.field static final TRANSACTION_isAntennaConnected:I = 0x12

.field static final TRANSACTION_isClosed:I = 0x2

.field static final TRANSACTION_isMuted:I = 0x6

.field static final TRANSACTION_scan:I = 0x8

.field static final TRANSACTION_setAnalogForced:I = 0x11

.field static final TRANSACTION_setConfiguration:I = 0x3

.field static final TRANSACTION_setMuted:I = 0x5

.field static final TRANSACTION_startBackgroundScan:I = 0xe

.field static final TRANSACTION_step:I = 0x7

.field static final TRANSACTION_tune:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "android.hardware.radio.ITuner"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITuner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITuner;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 132
    if-nez p0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    const-string v0, "android.hardware.radio.ITuner"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/ITuner;

    if-eqz v1, :cond_1

    .line 137
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ITuner;

    return-object v1

    .line 139
    :cond_1
    new-instance v1, Landroid/hardware/radio/ITuner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITuner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/hardware/radio/ITuner;
    .locals 1

    .line 811
    sget-object v0, Landroid/hardware/radio/ITuner$Stub$Proxy;->sDefaultImpl:Landroid/hardware/radio/ITuner;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/radio/ITuner;)Z
    .locals 2
    .param p0, "impl"    # Landroid/hardware/radio/ITuner;

    .line 801
    sget-object v0, Landroid/hardware/radio/ITuner$Stub$Proxy;->sDefaultImpl:Landroid/hardware/radio/ITuner;

    if-nez v0, :cond_1

    .line 804
    if-eqz p0, :cond_0

    .line 805
    sput-object p0, Landroid/hardware/radio/ITuner$Stub$Proxy;->sDefaultImpl:Landroid/hardware/radio/ITuner;

    .line 806
    const/4 v0, 0x1

    return v0

    .line 808
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 802
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 143
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    const-string v0, "android.hardware.radio.ITuner"

    .line 148
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_b

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 341
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 333
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isAntennaConnected()Z

    move-result v1

    .line 335
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    return v2

    .line 324
    .end local v1    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 327
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITuner$Stub;->setAnalogForced(Z)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    return v2

    .line 316
    .end local v1    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isAnalogForced()Z

    move-result v1

    .line 318
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    return v2

    .line 305
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 308
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 309
    .local v3, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITuner$Stub;->getProgramList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 310
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 312
    return v2

    .line 297
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->startBackgroundScan()Z

    move-result v1

    .line 299
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    return v2

    .line 281
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 284
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITuner$Stub;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 285
    .local v4, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v4, :cond_1

    .line 287
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {v4, p3, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    :goto_0
    return v2

    .line 267
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Bitmap;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->getProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v3

    .line 269
    .local v3, "_result":Landroid/hardware/radio/RadioManager$ProgramInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v3, :cond_2

    .line 271
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    invoke-virtual {v3, p3, v2}, Landroid/hardware/radio/RadioManager$ProgramInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    :goto_1
    return v2

    .line 260
    .end local v3    # "_result":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->cancelAnnouncement()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    return v2

    .line 253
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->cancel()V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    return v2

    .line 239
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    sget-object v1, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ProgramSelector;

    .local v1, "_arg0":Landroid/hardware/radio/ProgramSelector;
    goto :goto_2

    .line 245
    .end local v1    # "_arg0":Landroid/hardware/radio/ProgramSelector;
    :cond_3
    const/4 v1, 0x0

    .line 247
    .restart local v1    # "_arg0":Landroid/hardware/radio/ProgramSelector;
    :goto_2
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITuner$Stub;->tune(Landroid/hardware/radio/ProgramSelector;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    return v2

    .line 228
    .end local v1    # "_arg0":Landroid/hardware/radio/ProgramSelector;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    .line 232
    .local v3, "_arg0":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 233
    .local v1, "_arg1":Z
    :cond_5
    invoke-virtual {p0, v3, v1}, Landroid/hardware/radio/ITuner$Stub;->scan(ZZ)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    return v2

    .line 217
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Z
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v1

    .line 221
    .restart local v3    # "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v1, v2

    .line 222
    .restart local v1    # "_arg1":Z
    :cond_7
    invoke-virtual {p0, v3, v1}, Landroid/hardware/radio/ITuner$Stub;->step(ZZ)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    return v2

    .line 209
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Z
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isMuted()Z

    move-result v1

    .line 211
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    return v2

    .line 200
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    .line 203
    .local v1, "_arg0":Z
    :cond_8
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITuner$Stub;->setMuted(Z)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    return v2

    .line 186
    .end local v1    # "_arg0":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v3

    .line 188
    .local v3, "_result":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v3, :cond_9

    .line 190
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {v3, p3, v2}, Landroid/hardware/radio/RadioManager$BandConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 194
    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    :goto_5
    return v2

    .line 172
    .end local v3    # "_result":Landroid/hardware/radio/RadioManager$BandConfig;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 175
    sget-object v1, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    .local v1, "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    goto :goto_6

    .line 178
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :cond_a
    const/4 v1, 0x0

    .line 180
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :goto_6
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITuner$Stub;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    return v2

    .line 164
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isClosed()Z

    move-result v1

    .line 166
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return v2

    .line 157
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->close()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    return v2

    .line 152
    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
