.class public final Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse$Companion;
.super Ljava/lang/Object;
.source "ScsiRequestSenseResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScsiRequestSenseResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScsiRequestSenseResponse.kt\ncom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse$Companion\n*L\n1#1,233:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse$Companion;",
        "",
        "()V",
        "ABORTED",
        "",
        "BLANK_CHECK",
        "COMPLETED",
        "COPY_ABORTED",
        "DATA_PROTECT",
        "HARDWARE_ERROR",
        "ILLEGAL_REQUEST",
        "MEDIUM_ERROR",
        "MISCOMPARE",
        "NOT_READY",
        "NO_SENSE",
        "RECOVERED_ERROR",
        "UNIT_ATTENTION",
        "VOLUME_OVERFLOW",
        "read",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;",
        "buffer",
        "Ljava/nio/ByteBuffer;",
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
.method private constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 185
    invoke-direct {p0}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Ljava/nio/ByteBuffer;)Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 198
    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .local v1, "$this$apply":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;
    const/4 v2, 0x0

    .line 199
    .local v2, "$i$a$-apply-ScsiRequestSenseResponse$Companion$read$1":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setErrorCode$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;B)V

    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setSegmentNumber$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;B)V

    .line 201
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setSenseKey$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;B)V

    .line 202
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setInformation$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;I)V

    .line 203
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setAdditionalSenseLength$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;B)V

    .line 204
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setCommandSpecificInformation$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;I)V

    .line 205
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setAdditionalSenseCode$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;B)V

    .line 206
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setAdditionalSenseCodeQualifier$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;B)V

    .line 209
    invoke-virtual {v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->getErrorCode()B

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setInformationValid$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;Z)V

    .line 210
    invoke-virtual {v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->getErrorCode()B

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setErrorCode$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;B)V

    .line 211
    invoke-virtual {v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->getSenseKey()B

    move-result v3

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v1, v3}, Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;->access$setSenseKey$p(Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;B)V

    .line 212
    .end local v1    # "$this$apply":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/ScsiRequestSenseResponse;
    .end local v2    # "$i$a$-apply-ScsiRequestSenseResponse$Companion$read$1":I
    nop

    .line 198
    return-object v0
.end method
