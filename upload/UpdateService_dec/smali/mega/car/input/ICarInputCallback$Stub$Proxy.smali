.class Lmega/car/input/ICarInputCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarInputCallback.java"

# interfaces
.implements Lmega/car/input/ICarInputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/ICarInputCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmega/car/input/ICarInputCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 120
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 123
    iget-object v0, p0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "mega.car.input.ICarInputCallback"

    return-object v0
.end method

.method public onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
    .locals 5
    .param p1, "event"    # Lmega/car/input/CustomInputEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 157
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "mega.car.input.ICarInputCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {p1, v0, v2}, Lmega/car/input/CustomInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    :goto_0
    iget-object v2, p0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 166
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lmega/car/input/ICarInputCallback$Stub;->getDefaultImpl()Lmega/car/input/ICarInputCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 167
    invoke-static {}, Lmega/car/input/ICarInputCallback$Stub;->getDefaultImpl()Lmega/car/input/ICarInputCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lmega/car/input/ICarInputCallback;->onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    return-void

    .line 172
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    nop

    .line 174
    return-void

    .line 172
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    throw v1
.end method

.method public onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
    .locals 5
    .param p1, "event"    # Lmega/car/input/CustomRotaryEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "mega.car.input.ICarInputCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {p1, v0, v2}, Lmega/car/input/CustomRotaryEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    :goto_0
    iget-object v2, p0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 188
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lmega/car/input/ICarInputCallback$Stub;->getDefaultImpl()Lmega/car/input/ICarInputCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 189
    invoke-static {}, Lmega/car/input/ICarInputCallback$Stub;->getDefaultImpl()Lmega/car/input/ICarInputCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lmega/car/input/ICarInputCallback;->onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    return-void

    .line 194
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw v1
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "mega.car.input.ICarInputCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {p1, v0, v2}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    :goto_0
    iget-object v2, p0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 142
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lmega/car/input/ICarInputCallback$Stub;->getDefaultImpl()Lmega/car/input/ICarInputCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 143
    invoke-static {}, Lmega/car/input/ICarInputCallback$Stub;->getDefaultImpl()Lmega/car/input/ICarInputCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lmega/car/input/ICarInputCallback;->onKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    return-void

    .line 148
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    throw v1
.end method
