.class public final Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector$Companion;
.super Ljava/lang/Object;
.source "Fat32BootSector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector$Companion;",
        "",
        "()V",
        "BYTES_PER_SECTOR_OFF",
        "",
        "FAT_COUNT_OFF",
        "FLAGS_OFF",
        "FS_INFO_SECTOR_OFF",
        "RESERVED_COUNT_OFF",
        "ROOT_DIR_CLUSTER_OFF",
        "SECTORS_PER_CLUSTER_OFF",
        "SECTORS_PER_FAT_OFF",
        "TOTAL_SECTORS_OFF",
        "VOLUME_LABEL_OFF",
        "read",
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;",
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

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 171
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Ljava/nio/ByteBuffer;)Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 194
    .local v0, "result":Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 195
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setBytesPerSector$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;S)V

    .line 196
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setSectorsPerCluster$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;S)V

    .line 197
    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setReservedSectors$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;S)V

    .line 198
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setFatCount$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;B)V

    .line 199
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setTotalNumberOfSectors$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;J)V

    .line 200
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setSectorsPerFat$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;J)V

    .line 201
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setRootDirStartCluster$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;J)V

    .line 202
    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setFsInfoStartSector$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;S)V

    .line 203
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    .line 204
    .local v1, "flag":S
    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setFatMirrored$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;Z)V

    .line 205
    and-int/lit8 v2, v1, 0x7

    int-to-byte v2, v2

    invoke-static {v0, v2}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setValidFat$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;B)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/16 v4, 0xa

    :goto_1
    if-gt v3, v4, :cond_2

    .line 210
    .local v3, "i":I
    add-int/lit8 v5, v3, 0x30

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 211
    .local v5, "b":B
    if-nez v5, :cond_1

    .line 212
    goto :goto_2

    .line 213
    :cond_1
    int-to-char v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    .end local v5    # "b":B
    nop

    .end local v3    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 216
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;->access$setVolumeLabel$p(Lcom/github/mjdev/libaums/fs/fat32/Fat32BootSector;Ljava/lang/String;)V

    .line 218
    return-object v0
.end method
