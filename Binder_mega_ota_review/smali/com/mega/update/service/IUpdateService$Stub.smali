.class public abstract Lcom/mega/update/service/IUpdateService$Stub;
.super Landroid/os/Binder;
.source "IUpdateService.java"

# interfaces
.implements Lcom/mega/update/service/IUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/service/IUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/service/IUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mega.update.service.IUpdateService"

.field static final TRANSACTION_applyAction:I = 0x1

.field static final TRANSACTION_bind:I = 0x4

.field static final TRANSACTION_getPackagePath:I = 0x2

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_unbind:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.mega.update.service.IUpdateService"

    invoke-virtual {p0, p0, v0}, Lcom/mega/update/service/IUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mega/update/service/IUpdateService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "com.mega.update.service.IUpdateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mega/update/service/IUpdateService;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/mega/update/service/IUpdateService;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Lcom/mega/update/service/IUpdateService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mega/update/service/IUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mega/update/service/IUpdateService;
    .locals 1

    .line 286
    sget-object v0, Lcom/mega/update/service/IUpdateService$Stub$Proxy;->sDefaultImpl:Lcom/mega/update/service/IUpdateService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mega/update/service/IUpdateService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mega/update/service/IUpdateService;

    .line 276
    sget-object v0, Lcom/mega/update/service/IUpdateService$Stub$Proxy;->sDefaultImpl:Lcom/mega/update/service/IUpdateService;

    if-nez v0, :cond_1

    .line 279
    if-eqz p0, :cond_0

    .line 280
    sput-object p0, Lcom/mega/update/service/IUpdateService$Stub$Proxy;->sDefaultImpl:Lcom/mega/update/service/IUpdateService;

    .line 281
    const/4 v0, 0x1

    return v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
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

    .line 65
    const-string v0, "com.mega.update.service.IUpdateService"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 122
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mega/update/service/IUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/update/service/IUpdateCallback;

    move-result-object v2

    .line 125
    .local v2, "_arg0":Lcom/mega/update/service/IUpdateCallback;
    invoke-virtual {p0, v2}, Lcom/mega/update/service/IUpdateService$Stub;->unbind(Lcom/mega/update/service/IUpdateCallback;)Z

    move-result v3

    .line 126
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return v1

    .line 112
    .end local v2    # "_arg0":Lcom/mega/update/service/IUpdateCallback;
    .end local v3    # "_result":Z
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mega/update/service/IUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/update/service/IUpdateCallback;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":Lcom/mega/update/service/IUpdateCallback;
    invoke-virtual {p0, v2}, Lcom/mega/update/service/IUpdateService$Stub;->bind(Lcom/mega/update/service/IUpdateCallback;)Z

    move-result v3

    .line 116
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v1

    .line 98
    .end local v2    # "_arg0":Lcom/mega/update/service/IUpdateCallback;
    .end local v3    # "_result":Z
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/mega/update/service/IUpdateService$Stub;->getState()Lcom/mega/update/service/UpdateState;

    move-result-object v2

    .line 100
    .local v2, "_result":Lcom/mega/update/service/UpdateState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_4

    .line 102
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v2, p3, v1}, Lcom/mega/update/service/UpdateState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 106
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    :goto_0
    return v1

    .line 90
    .end local v2    # "_result":Lcom/mega/update/service/UpdateState;
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/mega/update/service/IUpdateService$Stub;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 75
    .end local v2    # "_result":Ljava/lang/String;
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 78
    sget-object v2, Lcom/mega/update/service/UpdateOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/service/UpdateOption;

    .local v2, "_arg0":Lcom/mega/update/service/UpdateOption;
    goto :goto_1

    .line 81
    .end local v2    # "_arg0":Lcom/mega/update/service/UpdateOption;
    :cond_7
    const/4 v2, 0x0

    .line 83
    .restart local v2    # "_arg0":Lcom/mega/update/service/UpdateOption;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mega/update/service/IUpdateService$Stub;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    move-result v3

    .line 84
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v1
.end method
