.class public final Lcom/github/mjdev/libaums/usb/JellyBeanMr2Communication;
.super Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;
.source "JellyBeanMr2Communication.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000fH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/usb/JellyBeanMr2Communication;",
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

    .line 23
    nop

    .line 29
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

    .line 49
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/JellyBeanMr2Communication;->getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/JellyBeanMr2Communication;->getInEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x1388

    .line 49
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    .line 52
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 53
    sget-object v1, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v1}, Lcom/github/mjdev/libaums/ErrNo;->getErrno()I

    move-result v1

    .line 54
    sget v2, Landroid/system/OsConstants;->EPIPE:I

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/github/mjdev/libaums/usb/PipeException;

    invoke-direct {v1}, Lcom/github/mjdev/libaums/usb/PipeException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 55
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read from device, result == -1 errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrno()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrstr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 56
    :cond_2
    nop

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    return v0
.end method

.method public bulkOutTransfer(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/JellyBeanMr2Communication;->getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/JellyBeanMr2Communication;->getOutEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x1388

    .line 33
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    .line 36
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 37
    sget-object v1, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v1}, Lcom/github/mjdev/libaums/ErrNo;->getErrno()I

    move-result v1

    .line 38
    sget v2, Landroid/system/OsConstants;->EPIPE:I

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/github/mjdev/libaums/usb/PipeException;

    invoke-direct {v1}, Lcom/github/mjdev/libaums/usb/PipeException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 39
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read from device, result == -1 errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrno()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/mjdev/libaums/ErrNo;->INSTANCE:Lcom/github/mjdev/libaums/ErrNo;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/ErrNo;->getErrstr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 40
    :cond_2
    nop

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    return v0
.end method
