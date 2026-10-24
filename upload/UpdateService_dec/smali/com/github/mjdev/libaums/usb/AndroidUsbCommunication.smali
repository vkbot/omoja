.class public abstract Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;
.super Ljava/lang/Object;
.source "AndroidUsbCommunication.kt"

# interfaces
.implements Lcom/github/mjdev/libaums/usb/UsbCommunication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0002\u0008\u0007\u0008 \u0018\u0000 .2\u00020\u0001:\u0001.B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\tH\u0016J\u0019\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001fH\u0082 J\u0008\u0010 \u001a\u00020\u001bH\u0016J\u0008\u0010!\u001a\u00020\u001bH\u0002J8\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001fH\u0016J\u0008\u0010*\u001a\u00020\u001bH\u0002J\u0008\u0010+\u001a\u00020\u001bH\u0002J\u0008\u0010,\u001a\u00020\u001bH\u0016J\u0011\u0010-\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001fH\u0082 R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\n\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;",
        "Lcom/github/mjdev/libaums/usb/UsbCommunication;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "usbDevice",
        "Landroid/hardware/usb/UsbDevice;",
        "usbInterface",
        "Landroid/hardware/usb/UsbInterface;",
        "outEndpoint",
        "Landroid/hardware/usb/UsbEndpoint;",
        "inEndpoint",
        "(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V",
        "deviceConnection",
        "Landroid/hardware/usb/UsbDeviceConnection;",
        "getDeviceConnection",
        "()Landroid/hardware/usb/UsbDeviceConnection;",
        "setDeviceConnection",
        "(Landroid/hardware/usb/UsbDeviceConnection;)V",
        "getInEndpoint",
        "()Landroid/hardware/usb/UsbEndpoint;",
        "isClosed",
        "",
        "isNativeInited",
        "getOutEndpoint",
        "getUsbInterface",
        "()Landroid/hardware/usb/UsbInterface;",
        "clearFeatureHalt",
        "",
        "endpoint",
        "clearHaltNative",
        "fd",
        "",
        "close",
        "closeUsbConnection",
        "controlTransfer",
        "requestType",
        "request",
        "value",
        "index",
        "buffer",
        "",
        "length",
        "initNativeLibrary",
        "initUsbConnection",
        "resetDevice",
        "resetUsbDeviceNative",
        "Companion",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private isClosed:Z

.field private isNativeInited:Z

.field private final outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final usbDevice:Landroid/hardware/usb/UsbDevice;

.field private final usbInterface:Landroid/hardware/usb/UsbInterface;

.field private final usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->Companion:Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication$Companion;

    .line 99
    const-class v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidUsbCommunication::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 1
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "usbInterface"    # Landroid/hardware/usb/UsbInterface;
    .param p4, "outEndpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p5, "inEndpoint"    # Landroid/hardware/usb/UsbEndpoint;

    const-string v0, "usbManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbDevice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbInterface"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outEndpoint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inEndpoint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->usbManager:Landroid/hardware/usb/UsbManager;

    iput-object p2, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->usbDevice:Landroid/hardware/usb/UsbDevice;

    iput-object p3, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->usbInterface:Landroid/hardware/usb/UsbInterface;

    iput-object p4, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iput-object p5, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 23
    invoke-direct {p0}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->initNativeLibrary()V

    .line 24
    invoke-direct {p0}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->initUsbConnection()V

    .line 25
    return-void
.end method

.method private final native clearHaltNative(II)Z
.end method

.method private final closeUsbConnection()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->getUsbInterface()Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    .line 85
    .local v0, "release":Z
    if-nez v0, :cond_2

    .line 86
    sget-object v1, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    const-string v2, "could not release interface!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 90
    return-void
.end method

.method private final initNativeLibrary()V
    .locals 4

    .line 42
    nop

    .line 43
    :try_start_0
    const-string v0, "usb-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->isNativeInited:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->isNativeInited:Z

    .line 47
    sget-object v1, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "could not load usb-lib"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 49
    return-void
.end method

.method private final initUsbConnection()V
    .locals 3

    .line 28
    iget-boolean v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->isClosed:Z

    if-eqz v0, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    const-string v1, "setup device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 33
    iput-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 35
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->getUsbInterface()Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    .line 36
    .local v0, "claim":Z
    if-eqz v0, :cond_2

    .line 39
    return-void

    .line 37
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not claim interface!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 33
    .end local v0    # "claim":Z
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "deviceConnection is null!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final native resetUsbDeviceNative(I)Z
.end method


# virtual methods
.method public clearFeatureHalt(Landroid/hardware/usb/UsbEndpoint;)V
    .locals 4
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing halt on endpoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->clearHaltNative(II)Z

    move-result v0

    .line 75
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 76
    sget-object v1, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear halt failed: errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrno()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrstr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2

    .line 93
    sget-object v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    const-string v1, "close device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->closeUsbConnection()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->isClosed:Z

    .line 96
    return-void
.end method

.method public controlTransfer(IIII[BI)I
    .locals 9
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "length"    # I

    const-string v0, "buffer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/16 v8, 0x1388

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    return v0
.end method

.method public final getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-object v0
.end method

.method public getInEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public getOutEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public getUsbInterface()Landroid/hardware/usb/UsbInterface;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->usbInterface:Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method public resetDevice()V
    .locals 4

    .line 56
    sget-object v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    const-string v1, "Performing native reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->getUsbInterface()Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    const/16 v1, 0x20

    if-nez v0, :cond_1

    .line 59
    sget-object v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to release interface, errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrno()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrstr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->resetUsbDeviceNative(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    sget-object v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioctl failed! errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrno()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrstr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->TAG:Ljava/lang/String;

    const-string v2, "USB device will likely require new discovery and permissions"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->getUsbInterface()Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    return-void

    .line 68
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not claim interface, errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrno()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v1}, Lcom/github/mjdev/libaums/ErrNo;->getErrstr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setDeviceConnection(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/hardware/usb/UsbDeviceConnection;

    .line 19
    iput-object p1, p0, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;->deviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-void
.end method
