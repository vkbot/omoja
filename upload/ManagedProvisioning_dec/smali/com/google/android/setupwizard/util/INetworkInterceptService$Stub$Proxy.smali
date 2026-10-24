.class Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkInterceptService.java"

# interfaces
.implements Lcom/google/android/setupwizard/util/INetworkInterceptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/google/android/setupwizard/util/INetworkInterceptService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public disableNetworkIntentIntercept()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.android.setupwizard.util.INetworkInterceptService"

    .line 139
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    iget-object p0, p0, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 141
    invoke-static {}, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub;->getDefaultImpl()Lcom/google/android/setupwizard/util/INetworkInterceptService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 142
    invoke-static {}, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub;->getDefaultImpl()Lcom/google/android/setupwizard/util/INetworkInterceptService;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/setupwizard/util/INetworkInterceptService;->disableNetworkIntentIntercept()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 144
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    move v2, v3

    .line 148
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    throw p0
.end method

.method public enableNetworkIntentIntercept()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.android.setupwizard.util.INetworkInterceptService"

    .line 163
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 165
    invoke-static {}, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub;->getDefaultImpl()Lcom/google/android/setupwizard/util/INetworkInterceptService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 166
    invoke-static {}, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub;->getDefaultImpl()Lcom/google/android/setupwizard/util/INetworkInterceptService;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/setupwizard/util/INetworkInterceptService;->enableNetworkIntentIntercept()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 168
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 172
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw p0
.end method

.method public isNetworkIntentIntercepted()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.android.setupwizard.util.INetworkInterceptService"

    .line 186
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 188
    invoke-static {}, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub;->getDefaultImpl()Lcom/google/android/setupwizard/util/INetworkInterceptService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 189
    invoke-static {}, Lcom/google/android/setupwizard/util/INetworkInterceptService$Stub;->getDefaultImpl()Lcom/google/android/setupwizard/util/INetworkInterceptService;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/setupwizard/util/INetworkInterceptService;->isNetworkIntentIntercepted()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 191
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 195
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    throw p0
.end method
