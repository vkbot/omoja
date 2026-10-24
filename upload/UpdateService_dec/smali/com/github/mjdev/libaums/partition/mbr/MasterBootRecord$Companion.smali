.class public final Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord$Companion;
.super Ljava/lang/Object;
.source "MasterBootRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000-\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord$Companion;",
        "",
        "()V",
        "TABLE_ENTRY_SIZE",
        "",
        "TABLE_OFFSET",
        "TAG",
        "",
        "partitionTypes",
        "com/github/mjdev/libaums/partition/mbr/MasterBootRecord$Companion$partitionTypes$1",
        "Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord$Companion$partitionTypes$1;",
        "read",
        "Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;",
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 45
    invoke-direct {p0}, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Ljava/nio/ByteBuffer;)Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;
    .locals 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .local v0, "result":Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/16 v3, 0x200

    if-lt v2, v3, :cond_7

    .line 90
    const/16 v2, 0x1fe

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x55

    int-to-byte v3, v3

    if-ne v2, v3, :cond_6

    const/16 v2, 0x1ff

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0xaa

    int-to-byte v3, v3

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    .line 95
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    :goto_0
    if-gt v1, v2, :cond_5

    .line 96
    .local v1, "i":I
    mul-int/lit8 v3, v1, 0x10

    add-int/lit16 v3, v3, 0x1be

    .line 97
    .local v3, "offset":I
    add-int/lit8 v4, v3, 0x4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 99
    .local v4, "partitionType":B
    if-nez v4, :cond_1

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 106
    :cond_2
    invoke-static {}, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;->access$getPartitionTypes$cp()Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord$Companion$partitionTypes$1;

    move-result-object v5

    and-int/lit16 v6, v4, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord$Companion$partitionTypes$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 108
    .local v5, "type":Ljava/lang/Integer;
    if-nez v5, :cond_3

    .line 109
    invoke-static {}, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown partition type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 113
    :cond_3
    new-instance v6, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 114
    add-int/lit8 v8, v3, 0x8

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    add-int/lit8 v9, v3, 0xc

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    .line 113
    invoke-direct {v6, v7, v8, v9}, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;-><init>(III)V

    .line 116
    .local v6, "entry":Lcom/github/mjdev/libaums/partition/PartitionTableEntry;
    invoke-static {v0}, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;->access$getPartitions$p(Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 102
    .end local v5    # "type":Ljava/lang/Integer;
    .end local v6    # "entry":Lcom/github/mjdev/libaums/partition/PartitionTableEntry;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v5

    const-string v6, "extended partitions are currently unsupported!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    nop

    .line 95
    .end local v3    # "offset":I
    .end local v4    # "partitionType":B
    :goto_2
    nop

    .end local v1    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_5
    return-object v0

    .line 91
    :cond_6
    :goto_3
    invoke-static {}, Lcom/github/mjdev/libaums/partition/mbr/MasterBootRecord;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not a valid mbr partition table!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v1

    .line 86
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Size mismatch!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
