.class public final Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;
.super Ljava/lang/Object;
.source "ScsiReadCapacityResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;",
        "",
        "()V",
        "<set-?>",
        "",
        "blockLength",
        "getBlockLength",
        "()I",
        "logicalBlockAddress",
        "getLogicalBlockAddress",
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
.field public static final Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse$Companion;


# instance fields
.field private blockLength:I

.field private logicalBlockAddress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;->Companion:Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 32
    invoke-direct {p0}, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBlockLength$p(Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;)I
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;

    .line 32
    iget v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;->blockLength:I

    return v0
.end method

.method public static final synthetic access$getLogicalBlockAddress$p(Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;)I
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;

    .line 32
    iget v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;->logicalBlockAddress:I

    return v0
.end method

.method public static final synthetic access$setBlockLength$p(Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;I)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;
    .param p1, "<set-?>"    # I

    .line 32
    iput p1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;->blockLength:I

    return-void
.end method

.method public static final synthetic access$setLogicalBlockAddress$p(Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;I)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;
    .param p1, "<set-?>"    # I

    .line 32
    iput p1, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;->logicalBlockAddress:I

    return-void
.end method


# virtual methods
.method public final getBlockLength()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;->blockLength:I

    return v0
.end method

.method public final getLogicalBlockAddress()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/github/mjdev/libaums/driver/scsi/commands/ScsiReadCapacityResponse;->logicalBlockAddress:I

    return v0
.end method
