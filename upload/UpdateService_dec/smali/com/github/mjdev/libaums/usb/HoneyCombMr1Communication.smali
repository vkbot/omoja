.class public final Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;
.super Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;
.source "HoneyCombMr1Communication.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000fH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;",
        "Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;",
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
        "bulkInTransfer",
        "",
        "dest",
        "Ljava/nio/ByteBuffer;",
        "bulkOutTransfer",
        "src",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
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

    .line 18
    nop

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    return-void
.end method


# virtual methods
.method public bulkInTransfer(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "dest"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 59
    .local v0, "offset":I
    const/4 v1, -0x1

    const/16 v2, 0x1388

    if-nez v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;->getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;->getInEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 60
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 63
    .local v2, "result":I
    if-eq v2, v1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    return v2

    .line 64
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Could read from to device, result == -1"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 72
    .end local v2    # "result":I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 73
    .local v3, "tmpBuffer":[B
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;->getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;->getInEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 75
    .restart local v2    # "result":I
    if-eq v2, v1, :cond_4

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 81
    return v2

    .line 76
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Could not read from device, result == -1"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public bulkOutTransfer(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 30
    .local v0, "offset":I
    const-string v1, "Could not write to device, result == -1"

    const/4 v2, -0x1

    const/16 v3, 0x1388

    if-nez v0, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;->getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;->getOutEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v5

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 31
    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    .line 34
    .local v3, "result":I
    if-eq v3, v2, :cond_1

    .line 38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    return v3

    .line 35
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 42
    .end local v3    # "result":I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 43
    .local v4, "tmpBuffer":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v5, v0, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;->getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;->getOutEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 44
    invoke-virtual {v5, v6, v4, v7, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    .line 47
    .restart local v3    # "result":I
    if-eq v3, v2, :cond_4

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    return v3

    .line 48
    :cond_4
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
