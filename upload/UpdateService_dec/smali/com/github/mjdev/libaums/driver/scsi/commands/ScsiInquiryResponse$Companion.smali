.class public final Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse$Companion;
.super Ljava/lang/Object;
.source "ScsiInquiryResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScsiInquiryResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScsiInquiryResponse.kt\ncom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse$Companion\n*L\n1#1,96:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse$Companion;",
        "",
        "()V",
        "read",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;",
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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 73
    invoke-direct {p0}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Ljava/nio/ByteBuffer;)Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 86
    .local v0, "b":B
    new-instance v1, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v1

    .local v2, "$this$apply":Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;
    const/4 v3, 0x0

    .line 87
    .local v3, "$i$a$-apply-ScsiInquiryResponse$Companion$read$1":I
    const/16 v4, 0xe0

    int-to-byte v4, v4

    and-int/2addr v4, v0

    int-to-byte v4, v4

    invoke-static {v2, v4}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;->access$setPeripheralQualifier$p(Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;B)V

    .line 88
    const/16 v4, 0x1f

    int-to-byte v4, v4

    and-int/2addr v4, v0

    int-to-byte v4, v4

    invoke-static {v2, v4}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;->access$setPeripheralDeviceType$p(Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;B)V

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;->setRemovableMedia$libaums_release(Z)V

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;->setSpcVersion$libaums_release(B)V

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x7

    int-to-byte v5, v5

    and-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;->setResponseDataFormat$libaums_release(B)V

    .line 92
    .end local v2    # "$this$apply":Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiryResponse;
    .end local v3    # "$i$a$-apply-ScsiInquiryResponse$Companion$read$1":I
    nop

    .line 86
    return-object v1
.end method
