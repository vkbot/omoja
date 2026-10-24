.class public final Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;
.super Ljava/lang/Object;
.source "ClusterChain.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/fs/fat32/ClusterChain$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClusterChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClusterChain.kt\ncom/github/mjdev/libaums/fs/fat32/ClusterChain\n*L\n1#1,259:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 )2\u00020\u0001:\u0001)B\'\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0018\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0010H\u0002J\u001d\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$H\u0000\u00a2\u0006\u0002\u0008%J\u001d\u0010&\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020$H\u0000\u00a2\u0006\u0002\u0008(R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000cX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00038@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006*"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;",
        "",
        "startCluster",
        "",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "fat",
        "Lcom/github/mjdev/libaums/fs/fat32/FAT;",
        "bootSector",
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;",
        "(JLcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/fat32/FAT;Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)V",
        "chain",
        "",
        "[Ljava/lang/Long;",
        "clusterSize",
        "newNumberOfClusters",
        "",
        "clusters",
        "getClusters",
        "()I",
        "setClusters",
        "(I)V",
        "dataAreaOffset",
        "newLength",
        "length",
        "getLength$libaums_release",
        "()J",
        "setLength$libaums_release",
        "(J)V",
        "getFileSystemOffset",
        "cluster",
        "clusterOffset",
        "read",
        "",
        "offset",
        "dest",
        "Ljava/nio/ByteBuffer;",
        "read$libaums_release",
        "write",
        "source",
        "write$libaums_release",
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
.field public static final Companion:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

.field private chain:[Ljava/lang/Long;

.field private final clusterSize:J

.field private final dataAreaOffset:J

.field private final fat:Lcom/github/mjdev/libaums/fs/fat32/FAT;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->Companion:Lcom/github/mjdev/libaums/fs/fat32/ClusterChain$Companion;

    .line 256
    const-class v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClusterChain::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/github/mjdev/libaums/driver/BlockDeviceDriver;Lcom/github/mjdev/libaums/fs/fat32/FAT;Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;)V
    .locals 2
    .param p1, "startCluster"    # J
    .param p3, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .param p4, "fat"    # Lcom/github/mjdev/libaums/fs/fat32/FAT;
    .param p5, "bootSector"    # Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "blockDevice"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bootSector"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    iput-object p4, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->fat:Lcom/github/mjdev/libaums/fs/fat32/FAT;

    .line 104
    sget-object v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->TAG:Ljava/lang/String;

    const-string v1, "Init a cluster chain, reading from FAT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->fat:Lcom/github/mjdev/libaums/fs/fat32/FAT;

    invoke-virtual {v0, p1, p2}, Lcom/github/mjdev/libaums/fs/fat32/FAT;->getChain$libaums_release(J)[Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    .line 106
    invoke-virtual {p5}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->getBytesPerCluster()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->clusterSize:J

    .line 107
    invoke-virtual {p5}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->getDataAreaOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->dataAreaOffset:J

    .line 108
    sget-object v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->TAG:Ljava/lang/String;

    const-string v1, "Finished init of a cluster chain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method private final getClusters()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    array-length v0, v0

    return v0
.end method

.method private final getFileSystemOffset(JI)J
    .locals 6
    .param p1, "cluster"    # J
    .param p3, "clusterOffset"    # I

    .line 251
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->dataAreaOffset:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    const/4 v2, 0x2

    int-to-long v2, v2

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->clusterSize:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final setClusters(I)V
    .locals 4
    .param p1, "newNumberOfClusters"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->getClusters()I

    move-result v0

    .line 75
    .local v0, "oldNumberOfClusters":I
    if-ne p1, v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    if-le p1, v0, :cond_1

    .line 79
    sget-object v1, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->TAG:Ljava/lang/String;

    const-string v2, "grow chain"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->fat:Lcom/github/mjdev/libaums/fs/fat32/FAT;

    iget-object v2, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    sub-int v3, p1, v0

    invoke-virtual {v1, v2, v3}, Lcom/github/mjdev/libaums/fs/fat32/FAT;->alloc$libaums_release([Ljava/lang/Long;I)[Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_1
    sget-object v1, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->TAG:Ljava/lang/String;

    const-string v2, "shrink chain"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->fat:Lcom/github/mjdev/libaums/fs/fat32/FAT;

    iget-object v2, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    sub-int v3, v0, p1

    invoke-virtual {v1, v2, v3}, Lcom/github/mjdev/libaums/fs/fat32/FAT;->free$libaums_release([Ljava/lang/Long;I)[Ljava/lang/Long;

    move-result-object v1

    .line 78
    :goto_0
    iput-object v1, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    .line 85
    .end local v0    # "oldNumberOfClusters":I
    return-void
.end method


# virtual methods
.method public final getLength$libaums_release()J
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->clusterSize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final read$libaums_release(JLjava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "offset"    # J
    .param p3, "dest"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 128
    .local v0, "length":I
    iget-wide v1, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->clusterSize:J

    div-long v3, p1, v1

    long-to-int v3, v3

    .line 132
    .local v3, "chainIndex":I
    rem-long v4, p1, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 134
    rem-long v4, p1, v1

    long-to-int v4, v4

    .line 135
    .local v4, "clusterOffset":I
    int-to-long v5, v4

    sub-long/2addr v1, v5

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 136
    .local v1, "size":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    iget-object v2, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    iget-object v5, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v4}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->getFileSystemOffset(JI)J

    move-result-wide v5

    invoke-interface {v2, v5, v6, p3}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 143
    sub-int/2addr v0, v1

    .line 148
    .end local v1    # "size":I
    .end local v4    # "clusterOffset":I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 151
    iget-wide v1, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->clusterSize:J

    int-to-long v4, v0

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 152
    .restart local v1    # "size":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 154
    iget-object v2, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    iget-object v4, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->getFileSystemOffset(JI)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p3}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 157
    sub-int/2addr v0, v1

    .line 148
    .end local v1    # "size":I
    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method

.method public final setLength$libaums_release(J)V
    .locals 6
    .param p1, "newLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->clusterSize:J

    add-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    .line 100
    .local v2, "newNumberOfClusters":J
    long-to-int v0, v2

    invoke-direct {p0, v0}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->setClusters(I)V

    .line 101
    .end local v2    # "newNumberOfClusters":J
    return-void
.end method

.method public final write$libaums_release(JLjava/nio/ByteBuffer;)V
    .locals 17
    .param p1, "offset"    # J
    .param p3, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "source"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 178
    .local v2, "length":I
    iget-wide v3, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->clusterSize:J

    div-long v5, p1, v3

    long-to-int v5, v5

    .line 182
    .local v5, "chainIndex":I
    rem-long v6, p1, v3

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 183
    rem-long v6, p1, v3

    long-to-int v6, v6

    .line 184
    .local v6, "clusterOffset":I
    int-to-long v10, v6

    sub-long/2addr v3, v10

    long-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 185
    .local v3, "size":I
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 187
    iget-object v4, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    iget-object v7, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v0, v10, v11, v6}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->getFileSystemOffset(JI)J

    move-result-wide v10

    invoke-interface {v4, v10, v11, v1}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    .line 190
    add-int/lit8 v5, v5, 0x1

    .line 192
    sub-int/2addr v2, v3

    .line 195
    .end local v3    # "size":I
    .end local v6    # "clusterOffset":I
    :cond_0
    int-to-long v3, v2

    iget-wide v6, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->clusterSize:J

    div-long/2addr v3, v6

    .line 199
    .local v3, "remainingClusters":J
    :goto_0
    if-lez v2, :cond_5

    .line 200
    const/4 v6, 0x0

    .line 201
    .local v6, "size":I
    const/4 v7, 0x1

    .line 205
    .local v7, "numberOfClusters":I
    const/4 v10, 0x1

    .line 206
    .local v10, "maxConsecutiveClusters":I
    iget-object v11, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    move v12, v5

    :goto_1
    if-ge v12, v11, :cond_2

    .line 207
    .local v12, "i":I
    iget-object v13, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iget-object v15, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    add-int/lit8 v16, v12, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    .line 208
    add-int/lit8 v10, v10, 0x1

    .line 211
    nop

    .line 206
    nop

    .end local v12    # "i":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 210
    .restart local v12    # "i":I
    :cond_1
    nop

    .line 215
    .end local v12    # "i":I
    :cond_2
    const/4 v11, 0x4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 216
    nop

    .line 217
    int-to-long v11, v10

    cmp-long v11, v3, v11

    if-lez v11, :cond_3

    .line 218
    iget-wide v11, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->clusterSize:J

    int-to-long v13, v10

    mul-long/2addr v11, v13

    long-to-int v6, v11

    .line 219
    move v7, v10

    .line 220
    int-to-long v11, v10

    sub-long/2addr v3, v11

    goto :goto_2

    .line 222
    :cond_3
    cmp-long v11, v3, v8

    if-lez v11, :cond_4

    .line 223
    iget-wide v11, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->clusterSize:J

    long-to-int v13, v3

    invoke-static {v13, v10}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-long v13, v13

    mul-long/2addr v11, v13

    long-to-int v6, v11

    .line 224
    long-to-int v11, v3

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 225
    int-to-long v11, v7

    sub-long/2addr v3, v11

    goto :goto_2

    .line 227
    :cond_4
    move v6, v2

    .line 228
    :goto_2
    nop

    .line 230
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 232
    iget-object v11, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->blockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    iget-object v12, v0, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->chain:[Ljava/lang/Long;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-direct {v0, v12, v13, v14}, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;->getFileSystemOffset(JI)J

    move-result-wide v12

    invoke-interface {v11, v12, v13, v1}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    .line 234
    add-int/2addr v5, v7

    .line 235
    sub-int/2addr v2, v6

    .line 199
    .end local v6    # "size":I
    .end local v7    # "numberOfClusters":I
    .end local v10    # "maxConsecutiveClusters":I
    goto :goto_0

    .line 237
    :cond_5
    return-void
.end method
