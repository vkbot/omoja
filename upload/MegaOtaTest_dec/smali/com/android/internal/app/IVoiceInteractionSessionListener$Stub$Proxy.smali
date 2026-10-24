.class Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceInteractionSessionListener.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/app/IVoiceInteractionSessionListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "com.android.internal.app.IVoiceInteractionSessionListener"

    return-object v0
.end method

.method public onVoiceSessionHidden()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.app.IVoiceInteractionSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 125
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->getDefaultImpl()Lcom/android/internal/app/IVoiceInteractionSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->getDefaultImpl()Lcom/android/internal/app/IVoiceInteractionSessionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    .line 131
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    throw v1
.end method

.method public onVoiceSessionShown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 105
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.app.IVoiceInteractionSessionListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 107
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->getDefaultImpl()Lcom/android/internal/app/IVoiceInteractionSessionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    invoke-static {}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->getDefaultImpl()Lcom/android/internal/app/IVoiceInteractionSessionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionShown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    return-void

    .line 113
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    nop

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    throw v1
.end method
