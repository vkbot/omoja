.class Lmega/car/hardware/property/ICarProperty$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarProperty.java"

# interfaces
.implements Lmega/car/hardware/property/ICarProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/ICarProperty$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmega/car/hardware/property/ICarProperty;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 220
    return-void
.end method


# virtual methods
.method public addBlacklist(Ljava/lang/String;[I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "propIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 396
    iget-object v2, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 397
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 398
    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lmega/car/hardware/property/ICarProperty;->addBlacklist(Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    return-void

    .line 401
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 406
    nop

    .line 407
    return-void

    .line 404
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 406
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 223
    iget-object v0, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 227
    const-string v0, "mega.car.hardware.property.ICarProperty"

    return-object v0
.end method

.method public getProperty(II)Lmega/car/hardware/CarPropertyValue;
    .locals 5
    .param p1, "prop"    # I
    .param p2, "areaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v2, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 299
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 300
    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lmega/car/hardware/property/ICarProperty;->getProperty(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    return-object v3

    .line 302
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    sget-object v3, Lmega/car/hardware/CarPropertyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmega/car/hardware/CarPropertyValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lmega/car/hardware/CarPropertyValue;
    goto :goto_0

    .line 307
    .end local v3    # "_result":Lmega/car/hardware/CarPropertyValue;
    :cond_1
    const/4 v3, 0x0

    .line 311
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lmega/car/hardware/CarPropertyValue;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    nop

    .line 314
    return-object v3

    .line 311
    .end local v3    # "_result":Lmega/car/hardware/CarPropertyValue;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    throw v2
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 277
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 278
    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    invoke-interface {v3}, Lmega/car/hardware/property/ICarProperty;->getPropertyList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    return-object v3

    .line 280
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 281
    sget-object v3, Lmega/car/hardware/CarPropertyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 284
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/CarPropertyConfig;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    nop

    .line 287
    return-object v2

    .line 284
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/CarPropertyConfig;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    throw v2
.end method

.method public injectEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 365
    .local p2, "events":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 371
    iget-object v2, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 372
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 373
    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lmega/car/hardware/property/ICarProperty;->injectEvent(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    return-void

    .line 376
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 381
    nop

    .line 382
    return-void

    .line 379
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 381
    throw v2
.end method

.method public registerListener(Lmega/car/hardware/property/ICarPropertyEventListener;[I[F)V
    .locals 5
    .param p1, "callback"    # Lmega/car/hardware/property/ICarPropertyEventListener;
    .param p2, "propIds"    # [I
    .param p3, "rates"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmega/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 237
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 238
    iget-object v2, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 239
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 240
    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lmega/car/hardware/property/ICarProperty;->registerListener(Lmega/car/hardware/property/ICarPropertyEventListener;[I[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    return-void

    .line 243
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    nop

    .line 249
    return-void

    .line 246
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    throw v2
.end method

.method public removeBlacklist(Ljava/lang/String;[I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "propIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 416
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 421
    iget-object v2, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 422
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 423
    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lmega/car/hardware/property/ICarProperty;->removeBlacklist(Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 424
    return-void

    .line 426
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    nop

    .line 432
    return-void

    .line 429
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw v2
.end method

.method public setProperty(Lmega/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "prop"    # Lmega/car/hardware/CarPropertyValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 323
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {p1, v0, v2}, Lmega/car/hardware/CarPropertyValue;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    :goto_0
    iget-object v3, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 330
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 331
    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    invoke-interface {v3, p1}, Lmega/car/hardware/property/ICarProperty;->setProperty(Lmega/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    return-void

    .line 334
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    nop

    .line 340
    return-void

    .line 337
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw v2
.end method

.method public unregisterCallback(ILmega/car/hardware/property/ICarPropertyEventListener;)V
    .locals 5
    .param p1, "propId"    # I
    .param p2, "callback"    # Lmega/car/hardware/property/ICarPropertyEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 345
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lmega/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 348
    iget-object v2, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 349
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 350
    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lmega/car/hardware/property/ICarProperty;->unregisterCallback(ILmega/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    return-void

    .line 355
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    nop

    .line 357
    return-void

    .line 355
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    throw v1
.end method

.method public unregisterListener(Lmega/car/hardware/property/ICarPropertyEventListener;)V
    .locals 5
    .param p1, "callback"    # Lmega/car/hardware/property/ICarPropertyEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.hardware.property.ICarProperty"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 256
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmega/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 257
    iget-object v2, p0, Lmega/car/hardware/property/ICarProperty$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 258
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 259
    invoke-static {}, Lmega/car/hardware/property/ICarProperty$Stub;->getDefaultImpl()Lmega/car/hardware/property/ICarProperty;

    move-result-object v3

    invoke-interface {v3, p1}, Lmega/car/hardware/property/ICarProperty;->unregisterListener(Lmega/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    return-void

    .line 262
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    nop

    .line 268
    return-void

    .line 265
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    throw v2
.end method
