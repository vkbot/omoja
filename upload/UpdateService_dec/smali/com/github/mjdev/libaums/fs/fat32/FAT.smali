.class public final Lcom/github/mjdev/libaums/fs/fat32/FAT;
.super Ljava/lang/Object;
.source "FAT.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/fs/fat32/FAT$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFAT.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FAT.kt\ncom/github/mjdev/libaums/fs/fat32/FAT\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,387:1\n37#2,2:388\n37#2,2:390\n*E\n*S KotlinDebug\n*F\n+ 1 FAT.kt\ncom/github/mjdev/libaums/fs/fat32/FAT\n*L\n135#1,2:388\n268#1,2:390\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0016\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J+\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000c2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J+\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000c2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\u001d\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000c2\u0006\u0010\u001a\u001a\u00020\u000bH\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/FAT;",
        "",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "bootSector",
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;",
        "fsInfoStructure",
        "Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;",
        "(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;)V",
        "cache",
        "Lcom/github/mjdev/libaums/util/LRUCache;",
        "",
        "",
        "fatNumbers",
        "",
        "fatOffset",
        "",
        "alloc",
        "chain",
        "numberOfClusters",
        "",
        "alloc$libaums_release",
        "([Ljava/lang/Long;I)[Ljava/lang/Long;",
        "free",
        "free$libaums_release",
        "getChain",
        "startCluster",
        "getChain$libaums_release",
        "(J)[Ljava/lang/Long;",
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
.field public static final Companion:Lcom/github/mjdev/libaums/fs/fat32/FAT$Companion;

.field private static final FAT32_EOF_CLUSTER:I = 0xffffff8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

.field private final cache:Lcom/github/mjdev/libaums/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mjdev/libaums/util/LRUCache<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private fatNumbers:[I

.field private final fatOffset:[J

.field private final fsInfoStructure:Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/FAT$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/FAT$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->Companion:Lcom/github/mjdev/libaums/fs/fat32/FAT$Companion;

    .line 378
    const-class v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FAT::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;)V
    .locals 6
    .param p1, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .param p2, "bootSector"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .param p3, "fsInfoStructure"    # Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;

    const-string v0, "blockDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bootSector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fsInfoStructure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    iput-object p3, p0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fsInfoStructure:Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;

    .line 60
    new-instance v0, Lcom/github/mjdev/libaums/util/LRUCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->cache:Lcom/github/mjdev/libaums/util/LRUCache;

    .line 63
    invoke-virtual {p2}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->isFatMirrored()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p2}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->getValidFat()B

    move-result v0

    .line 65
    .local v0, "fatNumber":I
    new-array v3, v1, [I

    aput v0, v3, v2

    iput-object v3, p0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatNumbers:[I

    .line 66
    sget-object v3, Lcom/github/mjdev/libaums/fs/fat32/FAT;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fat is not mirrored, fat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    .end local v0    # "fatNumber":I
    :cond_0
    invoke-virtual {p2}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->getFatCount()B

    move-result v0

    .line 69
    .local v0, "fatCount":I
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatNumbers:[I

    .line 70
    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 71
    .local v3, "i":I
    iget-object v4, p0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatNumbers:[I

    aput v3, v4, v3

    .line 70
    nop

    .end local v3    # "i":I
    add-int/2addr v3, v1

    goto :goto_0

    .line 73
    :cond_1
    sget-object v3, Lcom/github/mjdev/libaums/fs/fat32/FAT;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fat is mirrored, fat count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "fatCount":I
    :goto_1
    nop

    .line 76
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatNumbers:[I

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatOffset:[J

    .line 77
    array-length v0, v0

    :goto_2
    if-ge v2, v0, :cond_2

    .line 78
    .local v2, "i":I
    iget-object v3, p0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatOffset:[J

    iget-object v4, p0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatNumbers:[I

    aget v4, v4, v2

    invoke-virtual {p2, v4}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->getFatOffset(I)J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 77
    nop

    .end local v2    # "i":I
    add-int/2addr v2, v1

    goto :goto_2

    .line 80
    :cond_2
    return-void
.end method


# virtual methods
.method public final alloc$libaums_release([Ljava/lang/Long;I)[Ljava/lang/Long;
    .locals 32
    .param p1, "chain"    # [Ljava/lang/Long;
    .param p2, "numberOfClusters"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "chain"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    move/from16 v2, p2

    .line 161
    .local v2, "numberOfClusters":I
    move v3, v2

    .line 163
    .local v3, "originalNumberOfClusters":I
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    add-int/2addr v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v4, "result":Ljava/util/ArrayList;
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Long;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    iget-object v5, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v5}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->getBlockSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    .line 171
    .local v5, "bufferSize":I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 172
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 174
    array-length v7, v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    xor-int/2addr v7, v8

    if-eqz v7, :cond_1

    .line 175
    array-length v7, v1

    sub-int/2addr v7, v8

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_1

    .line 177
    :cond_1
    const-wide/16 v10, -0x1

    .line 174
    :goto_1
    nop

    .line 179
    .local v10, "cluster":J
    iget-object v7, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fsInfoStructure:Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;

    invoke-virtual {v7}, Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;->getLastAllocatedClusterHint()J

    move-result-wide v12

    .line 180
    .local v12, "lastAllocated":J
    sget-object v7, Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;->Companion:Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure$Companion;

    invoke-virtual {v7}, Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure$Companion;->getINVALID_VALUE()I

    move-result v7

    int-to-long v14, v7

    cmp-long v7, v12, v14

    if-nez v7, :cond_2

    .line 182
    const-wide/16 v12, 0x2

    .line 185
    :cond_2
    move-wide v14, v12

    .line 187
    .local v14, "currentCluster":J
    const-wide/16 v16, 0x0

    .line 188
    .local v16, "offset":J
    const-wide/16 v18, 0x0

    .line 189
    .local v18, "offsetInBlock":J
    const-wide/16 v20, -0x1

    .line 192
    .local v20, "lastOffset":J
    :goto_2
    const/4 v7, 0x4

    const-string v8, "buffer"

    if-lez v2, :cond_5

    .line 193
    const-wide/16 v22, 0x1

    add-long v14, v14, v22

    .line 194
    move-wide/from16 v22, v12

    .end local v12    # "lastAllocated":J
    .local v22, "lastAllocated":J
    iget-object v12, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatOffset:[J

    aget-wide v24, v12, v9

    move-wide/from16 v26, v10

    .end local v10    # "cluster":J
    .local v26, "cluster":J
    int-to-long v9, v7

    mul-long v28, v14, v9

    add-long v24, v24, v28

    move-wide/from16 v28, v14

    .end local v14    # "currentCluster":J
    .local v28, "currentCluster":J
    int-to-long v13, v5

    div-long v24, v24, v13

    int-to-long v13, v5

    mul-long v14, v24, v13

    .line 195
    .end local v16    # "offset":J
    .local v14, "offset":J
    const/4 v7, 0x0

    aget-wide v11, v12, v7

    mul-long v9, v9, v28

    add-long/2addr v11, v9

    int-to-long v9, v5

    rem-long v9, v11, v9

    .line 198
    .end local v18    # "offsetInBlock":J
    .local v9, "offsetInBlock":J
    cmp-long v7, v20, v14

    if-eqz v7, :cond_3

    .line 199
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 200
    iget-object v7, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v14, v15, v6}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 201
    move-wide v7, v14

    move-wide/from16 v20, v7

    .line 204
    :cond_3
    long-to-int v7, v9

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    if-nez v7, :cond_4

    .line 205
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v2, v2, -0x1

    .line 192
    :cond_4
    move-wide/from16 v18, v9

    move-wide/from16 v16, v14

    move-wide/from16 v12, v22

    move-wide/from16 v10, v26

    move-wide/from16 v14, v28

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_2

    .line 211
    .end local v9    # "offsetInBlock":J
    .end local v22    # "lastAllocated":J
    .end local v26    # "cluster":J
    .end local v28    # "currentCluster":J
    .restart local v10    # "cluster":J
    .restart local v12    # "lastAllocated":J
    .local v14, "currentCluster":J
    .restart local v16    # "offset":J
    .restart local v18    # "offsetInBlock":J
    :cond_5
    move-wide/from16 v26, v10

    move-wide/from16 v22, v12

    .end local v10    # "cluster":J
    .end local v12    # "lastAllocated":J
    .restart local v22    # "lastAllocated":J
    .restart local v26    # "cluster":J
    move-wide/from16 v9, v26

    .end local v26    # "cluster":J
    .local v9, "cluster":J
    long-to-int v11, v9

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    .line 214
    iget-object v11, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatOffset:[J

    const/4 v12, 0x0

    aget-wide v24, v11, v12

    int-to-long v12, v7

    mul-long v27, v9, v12

    add-long v24, v24, v27

    move-object/from16 v28, v8

    int-to-long v7, v5

    div-long v24, v24, v7

    int-to-long v7, v5

    mul-long v7, v7, v24

    .line 215
    .end local v16    # "offset":J
    .local v7, "offset":J
    const/16 v16, 0x0

    aget-wide v24, v11, v16

    mul-long/2addr v12, v9

    add-long v24, v24, v12

    int-to-long v12, v5

    rem-long v12, v24, v12

    .line 218
    .end local v18    # "offsetInBlock":J
    .local v12, "offsetInBlock":J
    cmp-long v16, v20, v7

    if-eqz v16, :cond_6

    .line 219
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 220
    iget-object v11, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    move/from16 v24, v2

    move-object/from16 v2, v28

    .end local v2    # "numberOfClusters":I
    .local v24, "numberOfClusters":I
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v7, v8, v6}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 221
    move-wide/from16 v20, v7

    goto :goto_3

    .line 218
    .end local v24    # "numberOfClusters":I
    .restart local v2    # "numberOfClusters":I
    :cond_6
    move/from16 v24, v2

    move-object/from16 v2, v28

    .line 223
    .end local v2    # "numberOfClusters":I
    .restart local v24    # "numberOfClusters":I
    :goto_3
    long-to-int v11, v12

    move-wide/from16 v16, v7

    .end local v7    # "offset":J
    .restart local v16    # "offset":J
    array-length v7, v1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v11, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-wide/from16 v18, v12

    goto :goto_4

    .line 211
    .end local v12    # "offsetInBlock":J
    .end local v24    # "numberOfClusters":I
    .restart local v2    # "numberOfClusters":I
    .restart local v18    # "offsetInBlock":J
    :cond_7
    move/from16 v24, v2

    move-object v2, v8

    .line 227
    .end local v2    # "numberOfClusters":I
    .restart local v24    # "numberOfClusters":I
    :goto_4
    array-length v7, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    move-wide/from16 v11, v20

    .end local v20    # "lastOffset":J
    .local v11, "lastOffset":J
    :goto_5
    if-ge v7, v8, :cond_9

    .line 228
    .local v7, "i":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    const-string v1, "result[i]"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    .line 229
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatOffset:[J

    const/4 v13, 0x0

    aget-wide v20, v1, v13

    move-wide/from16 v28, v9

    const/4 v13, 0x4

    move v10, v8

    .end local v9    # "cluster":J
    .local v28, "cluster":J
    int-to-long v8, v13

    mul-long v30, v14, v8

    add-long v20, v20, v30

    move/from16 v25, v3

    move-object/from16 v30, v4

    .end local v3    # "originalNumberOfClusters":I
    .end local v4    # "result":Ljava/util/ArrayList;
    .local v25, "originalNumberOfClusters":I
    .local v30, "result":Ljava/util/ArrayList;
    int-to-long v3, v5

    div-long v20, v20, v3

    int-to-long v3, v5

    mul-long v3, v3, v20

    .line 230
    .end local v16    # "offset":J
    .local v3, "offset":J
    const/4 v13, 0x0

    aget-wide v16, v1, v13

    mul-long/2addr v8, v14

    add-long v16, v16, v8

    int-to-long v8, v5

    rem-long v8, v16, v8

    .line 233
    .end local v18    # "offsetInBlock":J
    .local v8, "offsetInBlock":J
    cmp-long v1, v11, v3

    if-eqz v1, :cond_8

    .line 234
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 235
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v11, v12, v6}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    .line 236
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 237
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v1, v3, v4, v6}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 238
    move-wide v11, v3

    .line 241
    :cond_8
    long-to-int v1, v8

    add-int/lit8 v13, v7, 0x1

    move-wide/from16 v16, v3

    move-object/from16 v3, v30

    .end local v30    # "result":Ljava/util/ArrayList;
    .local v3, "result":Ljava/util/ArrayList;
    .restart local v16    # "offset":J
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    move-wide/from16 v18, v8

    .end local v8    # "offsetInBlock":J
    .restart local v18    # "offsetInBlock":J
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    long-to-int v4, v8

    invoke-virtual {v6, v1, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 227
    nop

    .end local v7    # "i":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object v4, v3

    move v8, v10

    move/from16 v3, v25

    move-wide/from16 v9, v28

    goto :goto_5

    .line 245
    .end local v25    # "originalNumberOfClusters":I
    .end local v28    # "cluster":J
    .local v3, "originalNumberOfClusters":I
    .restart local v4    # "result":Ljava/util/ArrayList;
    .restart local v9    # "cluster":J
    :cond_9
    move/from16 v25, v3

    move-object v3, v4

    move-wide/from16 v28, v9

    .end local v4    # "result":Ljava/util/ArrayList;
    .end local v9    # "cluster":J
    .local v3, "result":Ljava/util/ArrayList;
    .restart local v25    # "originalNumberOfClusters":I
    .restart local v28    # "cluster":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "result[result.size - 1]"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 246
    .end local v14    # "currentCluster":J
    .local v7, "currentCluster":J
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatOffset:[J

    const/4 v4, 0x0

    aget-wide v9, v1, v4

    const/4 v13, 0x4

    int-to-long v14, v13

    mul-long v20, v7, v14

    add-long v9, v9, v20

    move-object/from16 v20, v2

    move-object/from16 v30, v3

    .end local v3    # "result":Ljava/util/ArrayList;
    .restart local v30    # "result":Ljava/util/ArrayList;
    int-to-long v2, v5

    div-long/2addr v9, v2

    int-to-long v2, v5

    mul-long/2addr v9, v2

    .line 247
    .end local v16    # "offset":J
    .local v9, "offset":J
    aget-wide v1, v1, v4

    mul-long/2addr v14, v7

    add-long/2addr v1, v14

    int-to-long v3, v5

    rem-long/2addr v1, v3

    .line 250
    .end local v18    # "offsetInBlock":J
    .local v1, "offsetInBlock":J
    cmp-long v3, v11, v9

    if-eqz v3, :cond_a

    .line 251
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 252
    iget-object v3, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    move-object/from16 v4, v20

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v11, v12, v6}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    .line 253
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 254
    iget-object v3, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v3, v9, v10, v6}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    goto :goto_6

    .line 250
    :cond_a
    move-object/from16 v4, v20

    .line 257
    :goto_6
    long-to-int v3, v1

    const v14, 0xffffff8

    invoke-virtual {v6, v3, v14}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 259
    iget-object v3, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v9, v10, v6}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    .line 262
    iget-object v3, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fsInfoStructure:Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;

    invoke-virtual {v3, v7, v8}, Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;->setLastAllocatedClusterHint(J)V

    .line 263
    iget-object v3, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fsInfoStructure:Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;

    move/from16 v4, v25

    .end local v25    # "originalNumberOfClusters":I
    .local v4, "originalNumberOfClusters":I
    int-to-long v14, v4

    invoke-virtual {v3, v14, v15}, Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;->decreaseClusterCount(J)V

    .line 264
    iget-object v3, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fsInfoStructure:Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;

    invoke-virtual {v3}, Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;->write()V

    .line 266
    sget-object v3, Lcom/github/mjdev/libaums/fs/fat32/FAT;->TAG:Ljava/lang/String;

    const-string v14, "allocating clusters finished"

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v3, v30

    check-cast v3, Ljava/util/Collection;

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v14, 0x0

    .line 390
    .local v14, "$i$f$toTypedArray":I
    move-object v15, v3

    .line 391
    .local v15, "thisCollection$iv":Ljava/util/Collection;
    move-wide/from16 v16, v1

    const/4 v13, 0x0

    .end local v1    # "offsetInBlock":J
    .local v16, "offsetInBlock":J
    new-array v1, v13, [Ljava/lang/Long;

    invoke-interface {v15, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 268
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v14    # "$i$f$toTypedArray":I
    .end local v15    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v1, [Ljava/lang/Long;

    .line 270
    .local v1, "arr":[Ljava/lang/Long;
    iget-object v2, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->cache:Lcom/github/mjdev/libaums/util/LRUCache;

    check-cast v2, Ljava/util/Map;

    aget-object v3, v1, v13

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-object v1

    .line 391
    .end local v1    # "arr":[Ljava/lang/Long;
    .restart local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v14    # "$i$f$toTypedArray":I
    .restart local v15    # "thisCollection$iv":Ljava/util/Collection;
    :cond_b
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final free$libaums_release([Ljava/lang/Long;I)[Ljava/lang/Long;
    .locals 28
    .param p1, "chain"    # [Ljava/lang/Long;
    .param p2, "numberOfClusters"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "chain"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    array-length v3, v1

    sub-int/2addr v3, v2

    .line 303
    .local v3, "offsetInChain":I
    iget-object v4, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v4}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    .line 304
    .local v4, "bufferSize":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 305
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 307
    if-ltz v3, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_8

    .line 309
    const-wide/16 v8, 0x0

    .line 311
    .local v8, "currentCluster":J
    const-wide/16 v10, 0x0

    .line 312
    .local v10, "offset":J
    const-wide/16 v12, 0x0

    .line 313
    .local v12, "offsetInBlock":J
    const-wide/16 v14, -0x1

    .line 316
    .local v14, "lastOffset":J
    array-length v6, v1

    move v7, v3

    :goto_1
    move-wide/from16 v17, v8

    .end local v8    # "currentCluster":J
    .local v17, "currentCluster":J
    const/4 v8, 0x4

    const-string v9, "buffer"

    if-ge v7, v6, :cond_3

    .line 317
    .local v7, "i":I
    aget-object v19, v1, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 318
    move/from16 v19, v6

    iget-object v6, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatOffset:[J

    const/16 v16, 0x0

    aget-wide v20, v6, v16

    move-wide/from16 v22, v10

    .end local v10    # "offset":J
    .local v22, "offset":J
    int-to-long v10, v8

    mul-long v24, v17, v10

    add-long v20, v20, v24

    move-wide/from16 v24, v12

    .end local v12    # "offsetInBlock":J
    .local v24, "offsetInBlock":J
    int-to-long v12, v4

    div-long v20, v20, v12

    int-to-long v12, v4

    mul-long v12, v12, v20

    .line 319
    .end local v22    # "offset":J
    .local v12, "offset":J
    aget-wide v20, v6, v16

    mul-long v10, v10, v17

    add-long v20, v20, v10

    int-to-long v10, v4

    rem-long v10, v20, v10

    .line 322
    .end local v24    # "offsetInBlock":J
    .local v10, "offsetInBlock":J
    cmp-long v6, v14, v12

    if-eqz v6, :cond_2

    .line 323
    long-to-int v6, v14

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 324
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 325
    iget-object v6, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v14, v15, v5}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    .line 328
    :cond_1
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 329
    iget-object v6, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v12, v13, v5}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 330
    move-wide v8, v12

    move-wide v14, v8

    .line 333
    :cond_2
    long-to-int v6, v10

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 316
    nop

    .end local v7    # "i":I
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v8, v17

    move/from16 v6, v19

    move-wide/from16 v26, v10

    move-wide v10, v12

    move-wide/from16 v12, v26

    goto :goto_1

    .line 337
    .local v10, "offset":J
    .local v12, "offsetInBlock":J
    :cond_3
    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    .end local v10    # "offset":J
    .end local v12    # "offsetInBlock":J
    .restart local v22    # "offset":J
    .restart local v24    # "offsetInBlock":J
    if-lez v3, :cond_5

    .line 339
    add-int/lit8 v6, v3, -0x1

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 340
    .end local v17    # "currentCluster":J
    .local v6, "currentCluster":J
    iget-object v10, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatOffset:[J

    const/4 v11, 0x0

    aget-wide v12, v10, v11

    int-to-long v1, v8

    mul-long v16, v6, v1

    add-long v12, v12, v16

    move-object/from16 v19, v9

    int-to-long v8, v4

    div-long/2addr v12, v8

    int-to-long v8, v4

    mul-long/2addr v8, v12

    .line 341
    .end local v22    # "offset":J
    .local v8, "offset":J
    aget-wide v12, v10, v11

    mul-long/2addr v1, v6

    add-long/2addr v12, v1

    int-to-long v1, v4

    rem-long/2addr v12, v1

    .line 344
    .end local v24    # "offsetInBlock":J
    .restart local v12    # "offsetInBlock":J
    cmp-long v1, v14, v8

    if-eqz v1, :cond_4

    .line 345
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 346
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    move-object/from16 v2, v19

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v14, v15, v5}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    .line 347
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 348
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v1, v8, v9, v5}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    goto :goto_2

    .line 344
    :cond_4
    move-object/from16 v2, v19

    .line 351
    :goto_2
    long-to-int v1, v12

    const v10, 0xffffff8

    invoke-virtual {v5, v1, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 352
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 353
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v8, v9, v5}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    move-wide v10, v8

    move-wide v8, v6

    goto :goto_3

    .line 357
    .end local v6    # "currentCluster":J
    .end local v8    # "offset":J
    .end local v12    # "offsetInBlock":J
    .restart local v17    # "currentCluster":J
    .restart local v22    # "offset":J
    .restart local v24    # "offsetInBlock":J
    :cond_5
    move-object v2, v9

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 358
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v14, v15, v5}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    move-wide/from16 v8, v17

    move-wide/from16 v10, v22

    move-wide/from16 v12, v24

    .line 359
    .end local v17    # "currentCluster":J
    .end local v22    # "offset":J
    .end local v24    # "offsetInBlock":J
    .local v8, "currentCluster":J
    .restart local v10    # "offset":J
    .restart local v12    # "offsetInBlock":J
    :goto_3
    nop

    .line 361
    sget-object v1, Lcom/github/mjdev/libaums/fs/fat32/FAT;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "freed "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " clusters"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fsInfoStructure:Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;

    neg-int v2, v6

    move v7, v4

    move-object/from16 v17, v5

    .end local v4    # "bufferSize":I
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .local v7, "bufferSize":I
    .local v17, "buffer":Ljava/nio/ByteBuffer;
    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;->decreaseClusterCount(J)V

    .line 365
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fsInfoStructure:Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;

    invoke-virtual {v1}, Lcom/github/mjdev/libaums/fs/fat32/FsInfoStructure;->write()V

    .line 367
    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, [Ljava/lang/Long;

    .line 369
    .local v2, "arr":[Ljava/lang/Long;
    const-string v4, "arr"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v2

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_7

    .line 370
    iget-object v4, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->cache:Lcom/github/mjdev/libaums/util/LRUCache;

    check-cast v4, Ljava/util/Map;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_7
    return-object v2

    .line 307
    .end local v2    # "arr":[Ljava/lang/Long;
    .end local v7    # "bufferSize":I
    .end local v8    # "currentCluster":J
    .end local v10    # "offset":J
    .end local v12    # "offsetInBlock":J
    .end local v14    # "lastOffset":J
    .end local v17    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "bufferSize":I
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    :cond_8
    move v6, v2

    move v7, v4

    .end local v4    # "bufferSize":I
    .restart local v7    # "bufferSize":I
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "trying to remove more clusters in chain than currently exist!"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final getChain$libaums_release(J)[Ljava/lang/Long;
    .locals 20
    .param p1, "startCluster"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 97
    new-array v1, v2, [Ljava/lang/Long;

    return-object v1

    .line 100
    :cond_0
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->cache:Lcom/github/mjdev/libaums/util/LRUCache;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/github/mjdev/libaums/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    .line 101
    .local v1, "cachedChain":[Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 102
    return-object v1

    .line 105
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v3, "result":Ljava/util/ArrayList;
    iget-object v4, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v4}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    .line 112
    .local v4, "bufferSize":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 113
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 115
    move-wide/from16 v6, p1

    .line 116
    .local v6, "currentCluster":J
    const-wide/16 v8, 0x0

    .line 117
    .local v8, "offset":J
    const-wide/16 v10, 0x0

    .line 118
    .local v10, "offsetInBlock":J
    const-wide/16 v12, -0x1

    .line 120
    .local v12, "lastOffset":J
    :goto_0
    nop

    .line 121
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v14, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->fatOffset:[J

    aget-wide v15, v14, v2

    const/4 v2, 0x4

    move-object/from16 v17, v1

    .end local v1    # "cachedChain":[Ljava/lang/Long;
    .local v17, "cachedChain":[Ljava/lang/Long;
    int-to-long v1, v2

    mul-long v18, v6, v1

    add-long v15, v15, v18

    move-wide/from16 v18, v8

    .end local v8    # "offset":J
    .local v18, "offset":J
    int-to-long v8, v4

    div-long/2addr v15, v8

    int-to-long v8, v4

    mul-long/2addr v8, v15

    .line 123
    .end local v18    # "offset":J
    .restart local v8    # "offset":J
    const/4 v15, 0x0

    aget-wide v18, v14, v15

    mul-long/2addr v1, v6

    add-long v18, v18, v1

    int-to-long v1, v4

    rem-long v10, v18, v1

    .line 126
    cmp-long v1, v12, v8

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 128
    iget-object v1, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    const-string v2, "buffer"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v8, v9, v5}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 129
    move-wide v1, v8

    move-wide v12, v1

    .line 132
    :cond_2
    long-to-int v1, v10

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, 0xfffffff

    and-int/2addr v1, v2

    int-to-long v6, v1

    .line 133
    const v1, 0xffffff8

    int-to-long v1, v1

    cmp-long v1, v6, v1

    if-ltz v1, :cond_4

    .line 135
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 388
    .local v2, "$i$f$toTypedArray":I
    move-object v14, v1

    .line 389
    .local v14, "thisCollection$iv":Ljava/util/Collection;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Long;

    invoke-interface {v14, v15}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 135
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v14    # "thisCollection$iv":Ljava/util/Collection;
    move-object v1, v15

    check-cast v1, [Ljava/lang/Long;

    .line 136
    .local v1, "arr":[Ljava/lang/Long;
    iget-object v2, v0, Lcom/github/mjdev/libaums/fs/fat32/FAT;->cache:Lcom/github/mjdev/libaums/util/LRUCache;

    check-cast v2, Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v2, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-object v1

    .line 389
    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v2    # "$i$f$toTypedArray":I
    .restart local v14    # "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    new-instance v15, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v15, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 133
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v14    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v2, v15

    move-object/from16 v1, v17

    goto :goto_0
.end method
