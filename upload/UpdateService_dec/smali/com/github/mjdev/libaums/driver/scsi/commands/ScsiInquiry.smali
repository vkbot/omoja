.class public final Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry;
.super Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;
.source "ScsiInquiry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScsiInquiry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScsiInquiry.kt\ncom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry\n*L\n1#1,52:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry;",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;",
        "allocationLength",
        "",
        "lun",
        "(BB)V",
        "serialize",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
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
.field public static final Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry$Companion;

.field private static final LENGTH:B = 0x6t

.field private static final OPCODE:B = 0x12t


# instance fields
.field private final allocationLength:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry$Companion;

    return-void
.end method

.method public constructor <init>(BB)V
    .locals 8
    .param p1, "allocationLength"    # B
    .param p2, "lun"    # B

    .line 33
    sget-object v2, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;->IN:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;-><init>(ILcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;BBZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-byte p1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry;->allocationLength:B

    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->serialize(Ljava/nio/ByteBuffer;)V

    .line 37
    move-object v0, p1

    .local v0, "$this$apply":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 38
    .local v1, "$i$a$-apply-ScsiInquiry$serialize$1":I
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 39
    const/4 v2, 0x0

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 42
    iget-byte v2, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiInquiry;->allocationLength:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 43
    .end local v0    # "$this$apply":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$a$-apply-ScsiInquiry$serialize$1":I
    nop

    .line 37
    nop

    .line 44
    return-void
.end method
