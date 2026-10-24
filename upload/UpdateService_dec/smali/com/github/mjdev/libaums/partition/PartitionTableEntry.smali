.class public final Lcom/github/mjdev/libaums/partition/PartitionTableEntry;
.super Ljava/lang/Object;
.source "PartitionTableEntry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006R$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR$\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/partition/PartitionTableEntry;",
        "",
        "partitionType",
        "",
        "logicalBlockAddress",
        "totalNumberOfSectors",
        "(III)V",
        "<set-?>",
        "getLogicalBlockAddress",
        "()I",
        "setLogicalBlockAddress$libaums_release",
        "(I)V",
        "getPartitionType",
        "setPartitionType$libaums_release",
        "getTotalNumberOfSectors",
        "setTotalNumberOfSectors$libaums_release",
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
.field private logicalBlockAddress:I

.field private partitionType:I

.field private totalNumberOfSectors:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "partitionType"    # I
    .param p2, "logicalBlockAddress"    # I
    .param p3, "totalNumberOfSectors"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;->partitionType:I

    .line 64
    iput p2, p0, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;->logicalBlockAddress:I

    .line 65
    iput p3, p0, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;->totalNumberOfSectors:I

    .line 66
    return-void
.end method


# virtual methods
.method public final getLogicalBlockAddress()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;->logicalBlockAddress:I

    return v0
.end method

.method public final getPartitionType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;->partitionType:I

    return v0
.end method

.method public final getTotalNumberOfSectors()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;->totalNumberOfSectors:I

    return v0
.end method

.method public final setLogicalBlockAddress$libaums_release(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 51
    iput p1, p0, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;->logicalBlockAddress:I

    return-void
.end method

.method public final setPartitionType$libaums_release(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 44
    iput p1, p0, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;->partitionType:I

    return-void
.end method

.method public final setTotalNumberOfSectors$libaums_release(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 59
    iput p1, p0, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;->totalNumberOfSectors:I

    return-void
.end method
