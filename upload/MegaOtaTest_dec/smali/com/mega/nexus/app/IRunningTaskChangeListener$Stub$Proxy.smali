.class Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRunningTaskChangeListener.java"

# interfaces
.implements Lcom/mega/nexus/app/IRunningTaskChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mega/nexus/app/IRunningTaskChangeListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 138
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 145
    const-string v0, "com.mega.nexus.app.IRunningTaskChangeListener"

    return-object v0
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mega.nexus.app.IRunningTaskChangeListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    :goto_0
    if-eqz p2, :cond_1

    .line 165
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    invoke-virtual {p2, v0, v2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    :goto_1
    iget-object v2, p0, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 172
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->getDefaultImpl()Lcom/mega/nexus/app/IRunningTaskChangeListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 173
    invoke-static {}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->getDefaultImpl()Lcom/mega/nexus/app/IRunningTaskChangeListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mega/nexus/app/IRunningTaskChangeListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    return-void

    .line 178
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    nop

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    throw v1
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
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
    const-string v1, "com.mega.nexus.app.IRunningTaskChangeListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 224
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->getDefaultImpl()Lcom/mega/nexus/app/IRunningTaskChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 225
    invoke-static {}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->getDefaultImpl()Lcom/mega/nexus/app/IRunningTaskChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mega/nexus/app/IRunningTaskChangeListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    return-void

    .line 230
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    nop

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw v1
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mega.nexus.app.IRunningTaskChangeListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 198
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->getDefaultImpl()Lcom/mega/nexus/app/IRunningTaskChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 199
    invoke-static {}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->getDefaultImpl()Lcom/mega/nexus/app/IRunningTaskChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mega/nexus/app/IRunningTaskChangeListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    return-void

    .line 204
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    nop

    .line 206
    return-void

    .line 204
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    throw v1
.end method
