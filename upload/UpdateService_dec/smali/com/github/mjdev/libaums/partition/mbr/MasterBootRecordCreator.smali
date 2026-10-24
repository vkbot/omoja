.class public final Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecordCreator;
.super Ljava/lang/Object;
.source "MasterBootRecordCreator.kt"

# interfaces
.implements Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecordCreator;",
        "Lcom/github/mjdev/libaums/partition/PartitionTableFactory$PartitionTableCreator;",
        "()V",
        "read",
        "Lcom/github/mjdev/libaums/partition/PartitionTable;",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
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
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/partition/PartitionTable;
    .locals 3
    .param p1, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "blockDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->getBlockSize()I

    move-result v0

    const/16 v1, 0x200

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const-string v1, "buffer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 18
    sget-object v1, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;->Companion:Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord$Companion;

    invoke-virtual {v1, v0}, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord$Companion;->read(Ljava/nio/ByteBuffer;)Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;

    move-result-object v1

    check-cast v1, Lcom/github/mjdev/libaums/partition/PartitionTable;

    return-object v1
.end method
