.class public Lcom/mega/nexus/app/MegaActivityHelper;
.super Ljava/lang/Object;
.source "MegaActivityHelper.java"


# static fields
.field private static final ADD_FOREGROUND_PACKAGE:I = 0x1f5

.field private static final DESCRIPTOR_ACTIVITY_MANAGER:Ljava/lang/String; = "android.app.IActivityManager"

.field private static final REMOVE_FOREGROUND_PACKAGE:I = 0x1f6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addForegroundPackage(Ljava/lang/String;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 17
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 18
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 20
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 22
    .local v2, "rely":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    const/16 v3, 0x1f5

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 31
    goto :goto_2

    .line 29
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 26
    :catch_0
    move-exception v3

    .line 27
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 29
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 31
    throw v3

    .line 33
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "rely":Landroid/os/Parcel;
    :cond_0
    :goto_2
    return-void
.end method

.method public static removeForegroundPackage(Ljava/lang/String;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 39
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 40
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 42
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 43
    .local v2, "rely":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v3, 0x1f6

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 52
    goto :goto_2

    .line 50
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 47
    :catch_0
    move-exception v3

    .line 48
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 50
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 52
    throw v3

    .line 54
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "rely":Landroid/os/Parcel;
    :cond_0
    :goto_2
    return-void
.end method
