.class public abstract Landroid/media/IMediaScannerService$Stub;
.super Landroid/os/Binder;
.source "IMediaScannerService.java"

# interfaces
.implements Landroid/media/IMediaScannerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaScannerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaScannerService"

.field static final TRANSACTION_registerScanProgressListener:I = 0x3

.field static final TRANSACTION_requestScanFile:I = 0x1

.field static final TRANSACTION_scanFile:I = 0x2

.field static final TRANSACTION_unregisterScanProgressListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.media.IMediaScannerService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaScannerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    const-string v0, "android.media.IMediaScannerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IMediaScannerService;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaScannerService;

    return-object v1

    .line 64
    :cond_1
    new-instance v1, Landroid/media/IMediaScannerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaScannerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/media/IMediaScannerService;
    .locals 1

    .line 254
    sget-object v0, Landroid/media/IMediaScannerService$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaScannerService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/media/IMediaScannerService;)Z
    .locals 2
    .param p0, "impl"    # Landroid/media/IMediaScannerService;

    .line 244
    sget-object v0, Landroid/media/IMediaScannerService$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaScannerService;

    if-nez v0, :cond_1

    .line 247
    if-eqz p0, :cond_0

    .line 248
    sput-object p0, Landroid/media/IMediaScannerService$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaScannerService;

    .line 249
    const/4 v0, 0x1

    return v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 68
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const-string v0, "android.media.IMediaScannerService"

    .line 73
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

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 77
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return v1

    .line 115
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/media/IMediaScannerService$Stub;->unregisterScanProgressListener()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v1

    .line 106
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IMediaScannerProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerProgressListener;

    move-result-object v2

    .line 109
    .local v2, "_arg0":Landroid/media/IMediaScannerProgressListener;
    invoke-virtual {p0, v2}, Landroid/media/IMediaScannerService$Stub;->registerScanProgressListener(Landroid/media/IMediaScannerProgressListener;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v1

    .line 95
    .end local v2    # "_arg0":Landroid/media/IMediaScannerProgressListener;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaScannerService$Stub;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v1

    .line 82
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v4

    .line 89
    .local v4, "_arg2":Landroid/media/IMediaScannerListener;
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IMediaScannerService$Stub;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v1
.end method
