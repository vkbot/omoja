.class public final Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;
.super Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;
.source "ScsiWrite10.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScsiWrite10.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScsiWrite10.kt\ncom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10\n*L\n1#1,97:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u001f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\tJ\u001e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;",
        "lun",
        "",
        "(B)V",
        "blockAddress",
        "",
        "transferBytes",
        "blockSize",
        "(III)V",
        "transferBlocks",
        "",
        "init",
        "",
        "serialize",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "toString",
        "",
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
.field public static final Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10$Companion;

.field private static final LENGTH:B = 0xat

.field private static final OPCODE:B = 0x2at


# instance fields
.field private blockAddress:I

.field private blockSize:I

.field private transferBlocks:S

.field private transferBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10$Companion;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 8
    .param p1, "lun"    # B

    .line 44
    sget-object v2, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;->OUT:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    const/4 v1, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;-><init>(ILcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;BBZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 8
    .param p1, "blockAddress"    # I
    .param p2, "transferBytes"    # I
    .param p3, "blockSize"    # I

    .line 56
    sget-object v2, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;->OUT:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    const/4 v0, 0x0

    int-to-byte v3, v0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;-><init>(ILcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;BBZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->init(III)V

    return-void
.end method


# virtual methods
.method public final init(III)V
    .locals 3
    .param p1, "blockAddress"    # I
    .param p2, "transferBytes"    # I
    .param p3, "blockSize"    # I

    .line 61
    invoke-super {p0, p2}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->setDCbwDataTransferLength(I)V

    .line 62
    iput p1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->blockAddress:I

    .line 63
    iput p2, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->transferBytes:I

    .line 64
    iput p3, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->blockSize:I

    .line 65
    div-int v0, p2, p3

    int-to-short v0, v0

    .line 66
    .local v0, "transferBlocks":S
    rem-int v1, p2, p3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 67
    iput-short v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->transferBlocks:S

    .line 68
    return-void

    .line 66
    :cond_1
    const/4 v1, 0x0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "transfer bytes is not a multiple of block size"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->serialize(Ljava/nio/ByteBuffer;)V

    .line 73
    move-object v0, p1

    .local v0, "$this$apply":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 74
    .local v1, "$i$a$-apply-ScsiWrite10$serialize$1":I
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    const/4 v2, 0x0

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    iget v3, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->blockAddress:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    iget-short v2, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->transferBlocks:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 80
    .end local v0    # "$this$apply":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$a$-apply-ScsiWrite10$serialize$1":I
    nop

    .line 73
    nop

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScsiWrite10 [blockAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->blockAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transferBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->transferBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blockSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->blockSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transferBlocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->transferBlocks:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getdCbwDataTransferLength()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiWrite10;->getDCbwDataTransferLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
