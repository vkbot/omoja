.class public final Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;
.super Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;
.source "UsbRequestCommunication.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbRequestCommunication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbRequestCommunication.kt\ncom/github/mjdev/libaums/usb/UsbRequestCommunication\n*L\n1#1,71:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0010H\u0016R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;",
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
        "inRequest",
        "Landroid/hardware/usb/UsbRequest;",
        "outRequest",
        "workaroundBuffer",
        "Ljava/nio/ByteBuffer;",
        "kotlin.jvm.PlatformType",
        "bulkInTransfer",
        "",
        "dest",
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


# instance fields
.field private final inRequest:Landroid/hardware/usb/UsbRequest;

.field private final outRequest:Landroid/hardware/usb/UsbRequest;

.field private final workaroundBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 4
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

    .line 12
    nop

    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/github/mjdev/libaums/usb/AndroidUsbCommunication;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    .line 20
    new-instance v0, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v0}, Landroid/hardware/usb/UsbRequest;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/hardware/usb/UsbRequest;
    const/4 v2, 0x0

    .local v2, "$i$a$-apply-UsbRequestCommunication$outRequest$1":I
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    invoke-virtual {v1, v3, p4}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .end local v1    # "$this$apply":Landroid/hardware/usb/UsbRequest;
    .end local v2    # "$i$a$-apply-UsbRequestCommunication$outRequest$1":I
    iput-object v0, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->outRequest:Landroid/hardware/usb/UsbRequest;

    .line 21
    new-instance v0, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v0}, Landroid/hardware/usb/UsbRequest;-><init>()V

    move-object v1, v0

    .restart local v1    # "$this$apply":Landroid/hardware/usb/UsbRequest;
    const/4 v2, 0x0

    .local v2, "$i$a$-apply-UsbRequestCommunication$inRequest$1":I
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    invoke-virtual {v1, v3, p5}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .end local v1    # "$this$apply":Landroid/hardware/usb/UsbRequest;
    .end local v2    # "$i$a$-apply-UsbRequestCommunication$inRequest$1":I
    iput-object v0, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->inRequest:Landroid/hardware/usb/UsbRequest;

    .line 22
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public declared-synchronized bulkInTransfer(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "dest"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 54
    .local v0, "length":I
    iget-object v1, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 55
    iget-object v1, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 57
    iget-object v1, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->inRequest:Landroid/hardware/usb/UsbRequest;

    iget-object v2, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .end local p0    # "this":Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v1

    .line 62
    .local v1, "request":Landroid/hardware/usb/UsbRequest;
    iget-object v2, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->inRequest:Landroid/hardware/usb/UsbRequest;

    if-ne v1, v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 64
    iget-object v2, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 65
    iget-object v2, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 68
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestWait failed! Request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 58
    .end local v1    # "request":Landroid/hardware/usb/UsbRequest;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error queueing request."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .end local v0    # "length":I
    .end local p1    # "dest":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized bulkOutTransfer(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 29
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 32
    .local v1, "oldPosition":I
    iget-object v2, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 33
    iget-object v2, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 35
    iget-object v2, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->outRequest:Landroid/hardware/usb/UsbRequest;

    iget-object v3, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->getDeviceConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .end local p0    # "this":Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v2

    .line 40
    .local v2, "request":Landroid/hardware/usb/UsbRequest;
    iget-object v3, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->outRequest:Landroid/hardware/usb/UsbRequest;

    if-ne v2, v3, :cond_1

    .line 41
    iget-object v3, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    iget-object v3, p0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;->workaroundBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    .line 45
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestWait failed! Request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 36
    .end local v2    # "request":Landroid/hardware/usb/UsbRequest;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error queueing request."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .end local v0    # "length":I
    .end local v1    # "oldPosition":I
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
