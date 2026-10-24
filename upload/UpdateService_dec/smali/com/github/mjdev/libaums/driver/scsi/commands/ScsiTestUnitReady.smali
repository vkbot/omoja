.class public final Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady;
.super Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;
.source "ScsiTestUnitReady.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady;",
        "Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;",
        "lun",
        "",
        "(B)V",
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
.field public static final Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady$Companion;

.field private static final LENGTH:B = 0x6t

.field private static final OPCODE:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiTestUnitReady$Companion;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 8
    .param p1, "lun"    # B

    .line 34
    sget-object v2, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;->NONE:Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;

    const/4 v1, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;-><init>(ILcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper$Direction;BBZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1}, Lcom/github/mjdev/libaums/driver/scsi/commands/CommandBlockWrapper;->serialize(Ljava/nio/ByteBuffer;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 39
    return-void
.end method
