.class Lcom/mega/nexus/app/ITopStackExchangeListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITopStackExchangeListener.java"

# interfaces
.implements Lcom/mega/nexus/app/ITopStackExchangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mega/nexus/app/ITopStackExchangeListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 83
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "com.mega.nexus.app.ITopStackExchangeListener"

    return-object v0
.end method

.method public onTopStackExchanged(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "packageName1"    # Ljava/lang/String;
    .param p2, "displayId1"    # I
    .param p3, "packageName2"    # Ljava/lang/String;
    .param p4, "displayId2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 95
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 97
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mega.nexus.app.ITopStackExchangeListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v2, p0, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 103
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;->getDefaultImpl()Lcom/mega/nexus/app/ITopStackExchangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 104
    invoke-static {}, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;->getDefaultImpl()Lcom/mega/nexus/app/ITopStackExchangeListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mega/nexus/app/ITopStackExchangeListener;->onTopStackExchanged(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    return-void

    .line 107
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    nop

    .line 113
    return-void

    .line 110
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    throw v2
.end method
