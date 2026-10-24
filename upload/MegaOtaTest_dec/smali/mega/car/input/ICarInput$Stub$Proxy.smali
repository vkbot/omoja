.class Lmega/car/input/ICarInput$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarInput.java"

# interfaces
.implements Lmega/car/input/ICarInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/ICarInput$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmega/car/input/ICarInput;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lmega/car/input/ICarInput$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 164
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 167
    iget-object v0, p0, Lmega/car/input/ICarInput$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public customEventDownReport(IZ)V
    .locals 5
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 215
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "mega.car.input.ICarInput"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v2, p0, Lmega/car/input/ICarInput$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 219
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 220
    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lmega/car/input/ICarInput;->customEventDownReport(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    return-void

    .line 225
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    nop

    .line 227
    return-void

    .line 225
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    throw v1
.end method

.method public customRotaryEventInterceptReport(IZ)V
    .locals 5
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "mega.car.input.ICarInput"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v2, p0, Lmega/car/input/ICarInput$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 274
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 275
    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lmega/car/input/ICarInput;->customRotaryEventInterceptReport(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 276
    return-void

    .line 280
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    nop

    .line 282
    return-void

    .line 280
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    throw v1
.end method

.method public forceCustomEventDownReport(IZ)V
    .locals 5
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "mega.car.input.ICarInput"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v2, p0, Lmega/car/input/ICarInput$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 257
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 258
    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lmega/car/input/ICarInput;->forceCustomEventDownReport(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 259
    return-void

    .line 263
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    nop

    .line 265
    return-void

    .line 263
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 171
    const-string v0, "mega.car.input.ICarInput"

    return-object v0
.end method

.method public releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V
    .locals 5
    .param p1, "callback"    # Lmega/car/input/ICarInputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "mega.car.input.ICarInput"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmega/car/input/ICarInputCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 201
    iget-object v2, p0, Lmega/car/input/ICarInput$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 202
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 203
    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v2

    invoke-interface {v2, p1}, Lmega/car/input/ICarInput;->releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    return-void

    .line 208
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 209
    nop

    .line 210
    return-void

    .line 208
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 209
    throw v1
.end method

.method public releaseInputEventCapture2(Lmega/car/input/ICarInputCallback;)V
    .locals 5
    .param p1, "callback"    # Lmega/car/input/ICarInputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.input.ICarInput"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmega/car/input/ICarInputCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 290
    iget-object v2, p0, Lmega/car/input/ICarInput$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 291
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 292
    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v3

    invoke-interface {v3, p1}, Lmega/car/input/ICarInput;->releaseInputEventCapture2(Lmega/car/input/ICarInputCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    return-void

    .line 295
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    nop

    .line 301
    return-void

    .line 298
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    throw v2
.end method

.method public requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V
    .locals 5
    .param p1, "callback"    # Lmega/car/input/ICarInputCallback;
    .param p2, "inputType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 179
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.input.ICarInput"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmega/car/input/ICarInputCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 181
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v2, p0, Lmega/car/input/ICarInput$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 183
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 184
    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lmega/car/input/ICarInput;->requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    return-void

    .line 187
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    nop

    .line 193
    return-void

    .line 190
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    throw v2
.end method

.method public requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V
    .locals 5
    .param p1, "callback"    # Lmega/car/input/ICarInputCallback;
    .param p2, "inputType"    # I
    .param p3, "requestLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "mega.car.input.ICarInput"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 234
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmega/car/input/ICarInputCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v2, p0, Lmega/car/input/ICarInput$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 238
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 239
    invoke-static {}, Lmega/car/input/ICarInput$Stub;->getDefaultImpl()Lmega/car/input/ICarInput;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lmega/car/input/ICarInput;->requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    return-void

    .line 242
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    nop

    .line 248
    return-void

    .line 245
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v2
.end method
