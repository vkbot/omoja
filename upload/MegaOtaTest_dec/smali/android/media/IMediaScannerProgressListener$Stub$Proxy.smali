.class Landroid/media/IMediaScannerProgressListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaScannerProgressListener.java"

# interfaces
.implements Landroid/media/IMediaScannerProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaScannerProgressListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/media/IMediaScannerProgressListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/media/IMediaScannerProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 99
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/media/IMediaScannerProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "android.media.IMediaScannerProgressListener"

    return-object v0
.end method

.method public onCanceled()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 129
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IMediaScannerProgressListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Landroid/media/IMediaScannerProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 131
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/media/IMediaScannerProgressListener$Stub;->getDefaultImpl()Landroid/media/IMediaScannerProgressListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-static {}, Landroid/media/IMediaScannerProgressListener$Stub;->getDefaultImpl()Landroid/media/IMediaScannerProgressListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IMediaScannerProgressListener;->onCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 133
    return-void

    .line 137
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    throw v1
.end method

.method public onFinished()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IMediaScannerProgressListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Landroid/media/IMediaScannerProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 146
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/media/IMediaScannerProgressListener$Stub;->getDefaultImpl()Landroid/media/IMediaScannerProgressListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    invoke-static {}, Landroid/media/IMediaScannerProgressListener$Stub;->getDefaultImpl()Landroid/media/IMediaScannerProgressListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IMediaScannerProgressListener;->onFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    return-void

    .line 152
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    nop

    .line 154
    return-void

    .line 152
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw v1
.end method

.method public onProgressUpdate(Ljava/util/List;I)V
    .locals 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaInfoShortProfile;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaInfoShortProfile;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 112
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IMediaScannerProgressListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 114
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v1, p0, Landroid/media/IMediaScannerProgressListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 116
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Landroid/media/IMediaScannerProgressListener$Stub;->getDefaultImpl()Landroid/media/IMediaScannerProgressListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    invoke-static {}, Landroid/media/IMediaScannerProgressListener$Stub;->getDefaultImpl()Landroid/media/IMediaScannerProgressListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/media/IMediaScannerProgressListener;->onProgressUpdate(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    return-void

    .line 122
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    throw v1
.end method
