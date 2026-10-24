.class public abstract Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;
.super Landroid/os/Binder;
.source "ITopStackExchangeListener.java"

# interfaces
.implements Lcom/mega/nexus/app/ITopStackExchangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/ITopStackExchangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/app/ITopStackExchangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mega.nexus.app.ITopStackExchangeListener"

.field static final TRANSACTION_onTopStackExchanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.mega.nexus.app.ITopStackExchangeListener"

    invoke-virtual {p0, p0, v0}, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/app/ITopStackExchangeListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    const-string v0, "com.mega.nexus.app.ITopStackExchangeListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mega/nexus/app/ITopStackExchangeListener;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Lcom/mega/nexus/app/ITopStackExchangeListener;

    return-object v1

    .line 40
    :cond_1
    new-instance v1, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mega/nexus/app/ITopStackExchangeListener;
    .locals 1

    .line 131
    sget-object v0, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub$Proxy;->sDefaultImpl:Lcom/mega/nexus/app/ITopStackExchangeListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mega/nexus/app/ITopStackExchangeListener;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mega/nexus/app/ITopStackExchangeListener;

    .line 121
    sget-object v0, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub$Proxy;->sDefaultImpl:Lcom/mega/nexus/app/ITopStackExchangeListener;

    if-nez v0, :cond_1

    .line 124
    if-eqz p0, :cond_0

    .line 125
    sput-object p0, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub$Proxy;->sDefaultImpl:Lcom/mega/nexus/app/ITopStackExchangeListener;

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "com.mega.nexus.app.ITopStackExchangeListener"

    .line 49
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 53
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v1

    .line 58
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 64
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 67
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;->onTopStackExchanged(Ljava/lang/String;ILjava/lang/String;I)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v1
.end method
