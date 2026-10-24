.class public final Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;
.super Ljava/lang/Object;
.source "ScsiBlockDevice.kt"

# interfaces
.implements Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScsiBlockDevice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScsiBlockDevice.kt\ncom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice\n*L\n1#1,351:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 -2\u00020\u0001:\u0001-B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0008H\u0002J\u0008\u0010 \u001a\u00020\u001cH\u0016J\u0008\u0010!\u001a\u00020\u001cH\u0002J\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0014H\u0016J\u0008\u0010%\u001a\u00020\u001cH\u0002J\u0018\u0010&\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0014H\u0002J\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020(H\u0002J\u0018\u0010+\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0014H\u0002J\u0018\u0010,\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0014H\u0016R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "usbCommunication",
        "Lcom/github/mjdev/libaums/usb/UsbCommunication;",
        "lun",
        "",
        "(Lcom/github/mjdev/libaums/usb/UsbCommunication;B)V",
        "<set-?>",
        "",
        "blockSize",
        "getBlockSize",
        "()I",
        "blocks",
        "",
        "getBlocks",
        "()J",
        "cbwTagCounter",
        "csw",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;",
        "cswBuffer",
        "Ljava/nio/ByteBuffer;",
        "lastBlockAddress",
        "outBuffer",
        "readCommand",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiRead10;",
        "writeCommand",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;",
        "bulkOnlyMassStorageReset",
        "",
        "handleCommandResult",
        "",
        "status",
        "init",
        "initAttempt",
        "read",
        "deviceOffset",
        "buffer",
        "requestSense",
        "transferCommand",
        "command",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;",
        "inBuffer",
        "transferCommandWithoutDataPhase",
        "transferOneCommand",
        "write",
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
.field public static final Companion:Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice$Companion;

.field private static final MAX_RECOVERY_ATTEMPTS:I = 0x14

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private blockSize:I

.field private final blocks:J

.field private cbwTagCounter:I

.field private final csw:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;

.field private final cswBuffer:Ljava/nio/ByteBuffer;

.field private lastBlockAddress:I

.field private final lun:B

.field private final outBuffer:Ljava/nio/ByteBuffer;

.field private final readCommand:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiRead10;

.field private final usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

.field private final writeCommand:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->Companion:Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice$Companion;

    .line 348
    const-class v0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsiBlockDevice::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/mjdev/libaums/usb/UsbCommunication;B)V
    .locals 2
    .param p1, "usbCommunication"    # Lcom/github/mjdev/libaums/usb/UsbCommunication;
    .param p2, "lun"    # B

    const-string v0, "usbCommunication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    iput-byte p2, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->lun:B

    .line 41
    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "ByteBuffer.allocate(31)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->outBuffer:Ljava/nio/ByteBuffer;

    .line 42
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "ByteBuffer.allocate(CommandStatusWrapper.SIZE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->cswBuffer:Ljava/nio/ByteBuffer;

    .line 48
    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;

    iget-byte v1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->lun:B

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;-><init>(B)V

    iput-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->writeCommand:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;

    .line 49
    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiRead10;

    iget-byte v1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->lun:B

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiRead10;-><init>(B)V

    iput-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->readCommand:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiRead10;

    .line 50
    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;-><init>()V

    iput-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->csw:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->cbwTagCounter:I

    .line 59
    iget v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->lastBlockAddress:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->blocks:J

    return-void
.end method

.method private final bulkOnlyMassStorageReset()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    const-string v1, "sending bulk only mass storage request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 231
    .local v0, "bArr":[B
    iget-object v1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    invoke-interface {v1}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->getUsbInterface()Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v5

    const/16 v2, 0x21

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v6, v0

    invoke-interface/range {v1 .. v7}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->controlTransfer(IIII[BI)I

    move-result v1

    .line 232
    .local v1, "transferred":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 235
    sget-object v2, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    const-string v3, "Trying to clear halt on both endpoints"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    invoke-interface {v2}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->getInEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->clearFeatureHalt(Landroid/hardware/usb/UsbEndpoint;)V

    .line 237
    iget-object v2, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    invoke-interface {v2}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->getOutEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->clearFeatureHalt(Landroid/hardware/usb/UsbEndpoint;)V

    .line 238
    return-void

    .line 233
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bulk only mass storage reset failed!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method private final handleCommandResult(I)Z
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommandStatus wrapper illegal status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->bulkOnlyMassStorageReset()V

    .line 200
    new-instance v0, Ljava/io/IOException;

    const-string v1, "phase error, please reattach device and try again"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->requestSense()V

    .line 196
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_2
    nop

    .line 192
    :goto_0
    return v0
.end method

.method private final initAttempt()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/16 v0, 0x24

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    .local v0, "inBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iget-byte v3, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->lun:B

    invoke-direct {v1, v2, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry;-><init>(BB)V

    .line 100
    .local v1, "inquiry":Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry;
    move-object v2, v1

    check-cast v2, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;

    const-string v3, "inBuffer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->transferCommand(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;Ljava/nio/ByteBuffer;)V

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 102
    sget-object v2, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse$Companion;

    invoke-virtual {v2, v0}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse$Companion;->read(Ljava/nio/ByteBuffer;)Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;

    move-result-object v2

    .line 103
    .local v2, "inquiryResponse":Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;
    sget-object v3, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inquiry response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v2}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;->getPeripheralQualifier()B

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;->getPeripheralDeviceType()B

    move-result v3

    if-nez v3, :cond_0

    .line 109
    new-instance v3, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady;

    iget-byte v4, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->lun:B

    invoke-direct {v3, v4}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady;-><init>(B)V

    .line 110
    .local v3, "testUnit":Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady;
    move-object v4, v3

    check-cast v4, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;

    invoke-direct {p0, v4}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->transferCommandWithoutDataPhase(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;)V

    .line 112
    new-instance v4, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacity;

    iget-byte v5, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->lun:B

    invoke-direct {v4, v5}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacity;-><init>(B)V

    .line 113
    .local v4, "readCapacity":Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacity;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 114
    move-object v5, v4

    check-cast v5, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;

    invoke-direct {p0, v5, v0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->transferCommand(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;Ljava/nio/ByteBuffer;)V

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 116
    sget-object v5, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse$Companion;

    invoke-virtual {v5, v0}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse$Companion;->read(Ljava/nio/ByteBuffer;)Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;

    move-result-object v5

    .line 117
    .local v5, "readCapacityResponse":Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;
    invoke-virtual {v5}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;->getBlockLength()I

    move-result v6

    iput v6, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->blockSize:I

    .line 118
    invoke-virtual {v5}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;->getLogicalBlockAddress()I

    move-result v6

    iput v6, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->lastBlockAddress:I

    .line 120
    sget-object v6, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Block size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->getBlockSize()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v6, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last block address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->lastBlockAddress:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 106
    .end local v3    # "testUnit":Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady;
    .end local v4    # "readCapacity":Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacity;
    .end local v5    # "readCapacityResponse":Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "unsupported PeripheralQualifier or PeripheralDeviceType"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method private final requestSense()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 209
    .local v0, "inBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSense;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iget-byte v3, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->lun:B

    invoke-direct {v1, v2, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSense;-><init>(BB)V

    .line 210
    .local v1, "sense":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSense;
    move-object v2, v1

    check-cast v2, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;

    const-string v3, "inBuffer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->transferOneCommand(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;Ljava/nio/ByteBuffer;)I

    move-result v2

    .local v2, "status":I
    if-nez v2, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    sget-object v3, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse$Companion;

    invoke-virtual {v3, v0}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse$Companion;->read(Ljava/nio/ByteBuffer;)Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;

    move-result-object v3

    .line 214
    .local v3, "response":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;
    invoke-virtual {v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->checkResponseForError()V

    .line 222
    .end local v2    # "status":I
    .end local v3    # "response":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;
    nop

    .line 223
    return-void

    .line 216
    .restart local v2    # "status":I
    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 217
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->bulkOnlyMassStorageReset()V

    .line 219
    new-instance v3, Ljava/io/IOException;

    const-string v4, "phase error, please reattach device and try again"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 221
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommandStatus wrapper illegal status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 216
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "requesting sense failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method private final transferCommand(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "command"    # Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;
    .param p2, "inBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_7

    .line 147
    .local v0, "i":I
    nop

    .line 148
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->transferOneCommand(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 149
    .local v1, "result":I
    invoke-direct {p0, v1}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->handleCommandResult(I)Z

    move-result v2

    .line 150
    .local v2, "senseWasNotIssued":Z
    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->getDirection()Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    move-result-object v3

    sget-object v4, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;->NONE:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;
    :try_end_0
    .catch Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/github/mjdev/libaums/usb/PipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_5

    .line 155
    :cond_0
    return-void

    .line 173
    .end local v1    # "result":I
    .end local v2    # "senseWasNotIssued":Z
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "IOException"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retrying..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 170
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e":Lcom/github/mjdev/libaums/usb/PipeException;
    sget-object v2, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/mjdev/libaums/usb/PipeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const-string v4, "PipeException"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", try bulk storage reset and retry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->bulkOnlyMassStorageReset()V

    .end local v1    # "e":Lcom/github/mjdev/libaums/usb/PipeException;
    goto :goto_4

    .line 163
    :catch_2
    move-exception v1

    .line 164
    .local v1, "e":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;
    sget-object v2, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const-string v3, "SenseException"

    :goto_3
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    nop

    .line 166
    instance-of v2, v1, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/InitRequired;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->init()V

    goto :goto_4

    .line 167
    :cond_4
    instance-of v2, v1, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/NotReadyTryAgain;

    if-eqz v2, :cond_6

    .line 176
    .end local v1    # "e":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;
    :cond_5
    :goto_4
    nop

    .line 178
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 146
    nop

    .end local v0    # "i":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 168
    .restart local v0    # "i":I
    .restart local v1    # "e":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;
    :cond_6
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 181
    .end local v0    # "i":I
    .end local v1    # "e":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/SenseException;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAX_RECOVERY_ATTEMPTS Exceeded while trying to transfer command to device, please reattach device and try again"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final transferCommandWithoutDataPhase(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;)V
    .locals 3
    .param p1, "command"    # Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->getDirection()Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    move-result-object v0

    sget-object v1, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;->NONE:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 187
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "ByteBuffer.allocate(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->transferCommand(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;Ljava/nio/ByteBuffer;)V

    .line 188
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command has a data phase"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final transferOneCommand(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "command"    # Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;
    .param p2, "inBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 243
    .local v0, "outArray":[B
    const/4 v1, 0x0

    int-to-byte v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 245
    iget v1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->cbwTagCounter:I

    invoke-virtual {p1, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->setDCbwTag(I)V

    .line 246
    iget v1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->cbwTagCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->cbwTagCounter:I

    .line 248
    iget-object v1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 249
    iget-object v1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->serialize(Ljava/nio/ByteBuffer;)V

    .line 250
    iget-object v1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 252
    iget-object v1, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    iget-object v2, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->bulkOutTransfer(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 253
    .local v1, "written":I
    array-length v2, v0

    if-ne v1, v2, :cond_9

    .line 257
    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->getDCbwDataTransferLength()I

    move-result v2

    .line 258
    .local v2, "transferLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 259
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, "read":I
    if-lez v2, :cond_6

    .line 264
    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->getDirection()Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    move-result-object v4

    sget-object v5, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;->IN:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    if-ne v4, v5, :cond_3

    .line 265
    :cond_0
    nop

    .line 266
    iget-object v4, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    invoke-interface {v4, p2}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->bulkInTransfer(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v3, v4

    .line 267
    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->getBCbwDynamicSize()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    invoke-virtual {p1, p2}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->dynamicSizeFromPartialResponse(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 269
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 271
    :cond_1
    if-lt v3, v2, :cond_0

    .line 273
    if-ne v3, v2, :cond_2

    goto :goto_0

    .line 274
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected command size ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") on response to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 278
    :cond_3
    const/4 v1, 0x0

    .line 279
    :cond_4
    nop

    .line 280
    iget-object v4, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    invoke-interface {v4, p2}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->bulkOutTransfer(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v1, v4

    .line 281
    if-lt v1, v2, :cond_4

    .line 283
    if-ne v1, v2, :cond_5

    goto :goto_0

    .line 284
    :cond_5
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not write all bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 286
    :cond_6
    :goto_0
    nop

    .line 291
    iget-object v4, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->cswBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 292
    iget-object v4, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    iget-object v5, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->cswBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->bulkInTransfer(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 293
    const/16 v4, 0xd

    if-ne v3, v4, :cond_8

    .line 296
    iget-object v4, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->cswBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 298
    iget-object v4, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->csw:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;

    iget-object v5, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->cswBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->read(Ljava/nio/ByteBuffer;)V

    .line 299
    iget-object v4, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->csw:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;

    invoke-virtual {v4}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->getDCswTag()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->getDCbwTag()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 303
    iget-object v4, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->csw:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;

    invoke-virtual {v4}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandStatusWrapper;->getBCswStatus()B

    move-result v4

    return v4

    .line 300
    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "wrong csw tag!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 294
    :cond_8
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected command size while expecting csw"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 254
    .end local v2    # "transferLength":I
    .end local v3    # "read":I
    :cond_9
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing all bytes on command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->blockSize:I

    return v0
.end method

.method public getBlocks()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->blocks:J

    return-wide v0
.end method

.method public init()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const-string v0, "Reinitializing device"

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-gt v1, v2, :cond_2

    .line 82
    .local v1, "i":I
    nop

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->initAttempt()V
    :try_end_0
    .catch Lcom/github/mjdev/libaums/driver/scsi/commands/sense/InitRequired; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/github/mjdev/libaums/driver/scsi/commands/sense/NotReadyTryAgain; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/NotReadyTryAgain;
    sget-object v3, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/NotReadyTryAgain;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v4, v0

    :goto_1
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    .end local v2    # "e":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/NotReadyTryAgain;
    :catch_1
    move-exception v2

    .line 86
    .local v2, "e":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/InitRequired;
    sget-object v3, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/InitRequired;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    move-object v4, v0

    :goto_2
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v2    # "e":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/InitRequired;
    :goto_3
    nop

    .line 90
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 81
    nop

    .end local v1    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAX_RECOVERY_ATTEMPTS Exceeded while trying to init communication with USB device, please reattach device and try again"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public declared-synchronized read(JLjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "deviceOffset"    # J
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "buffer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->getBlockSize()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->readCommand:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiRead10;

    long-to-int v1, p1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->getBlockSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiRead10;->init(III)V

    .line 320
    iget-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->readCommand:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiRead10;

    check-cast v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;

    invoke-direct {p0, v0, p3}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->transferCommand(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;Ljava/nio/ByteBuffer;)V

    .line 321
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 315
    .end local p0    # "this":Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;
    :cond_1
    const/4 v0, 0x0

    .local v0, "$i$a$-require-ScsiBlockDevice$read$1":I
    :try_start_1
    const-string v1, "buffer.remaining() must be multiple of blockSize!"

    .end local v0    # "$i$a$-require-ScsiBlockDevice$read$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    .end local p1    # "deviceOffset":J
    .end local p3    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write(JLjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "deviceOffset"    # J
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "buffer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->getBlockSize()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->writeCommand:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;

    long-to-int v1, p1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->getBlockSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->init(III)V

    .line 340
    iget-object v0, p0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->writeCommand:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;

    check-cast v0, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;

    invoke-direct {p0, v0, p3}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;->transferCommand(Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;Ljava/nio/ByteBuffer;)V

    .line 341
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 335
    .end local p0    # "this":Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;
    :cond_1
    const/4 v0, 0x0

    .local v0, "$i$a$-require-ScsiBlockDevice$write$1":I
    :try_start_1
    const-string v1, "buffer.remaining() must be multiple of blockSize!"

    .end local v0    # "$i$a$-require-ScsiBlockDevice$write$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .end local p1    # "deviceOffset":J
    .end local p3    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
