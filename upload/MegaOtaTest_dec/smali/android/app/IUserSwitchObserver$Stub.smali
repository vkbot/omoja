.class public abstract Landroid/app/IUserSwitchObserver$Stub;
.super Landroid/os/Binder;
.source "IUserSwitchObserver.java"

# interfaces
.implements Landroid/app/IUserSwitchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUserSwitchObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUserSwitchObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUserSwitchObserver"

.field static final TRANSACTION_onForegroundProfileSwitch:I = 0x3

.field static final TRANSACTION_onLockedBootComplete:I = 0x4

.field static final TRANSACTION_onUserSwitchComplete:I = 0x2

.field static final TRANSACTION_onUserSwitching:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.app.IUserSwitchObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUserSwitchObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "android.app.IUserSwitchObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IUserSwitchObserver;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/app/IUserSwitchObserver;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Landroid/app/IUserSwitchObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUserSwitchObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/app/IUserSwitchObserver;
    .locals 1

    .line 206
    sget-object v0, Landroid/app/IUserSwitchObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/IUserSwitchObserver;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/IUserSwitchObserver;)Z
    .locals 2
    .param p0, "impl"    # Landroid/app/IUserSwitchObserver;

    .line 196
    sget-object v0, Landroid/app/IUserSwitchObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/IUserSwitchObserver;

    if-nez v0, :cond_1

    .line 199
    if-eqz p0, :cond_0

    .line 200
    sput-object p0, Landroid/app/IUserSwitchObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/IUserSwitchObserver;

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 54
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const-string v0, "android.app.IUserSwitchObserver"

    .line 59
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 63
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v1

    .line 94
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/app/IUserSwitchObserver$Stub;->onLockedBootComplete(I)V

    .line 98
    return v1

    .line 86
    .end local v2    # "_arg0":I
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/app/IUserSwitchObserver$Stub;->onForegroundProfileSwitch(I)V

    .line 90
    return v1

    .line 78
    .end local v2    # "_arg0":I
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/app/IUserSwitchObserver$Stub;->onUserSwitchComplete(I)V

    .line 82
    return v1

    .line 68
    .end local v2    # "_arg0":I
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 73
    .local v3, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p0, v2, v3}, Landroid/app/IUserSwitchObserver$Stub;->onUserSwitching(ILandroid/os/IRemoteCallback;)V

    .line 74
    return v1
.end method
