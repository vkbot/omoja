.class public final Lorg/apache/poi/poifs/storage/BATBlock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/storage/BlockWritable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    }
.end annotation


# instance fields
.field private _has_free_sectors:Z

.field private _values:[I

.field private bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field private ourBlockIndex:I


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_has_free_sectors:Z

    const/4 p0, -0x1

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public static calculateMaximumSize(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)J
    .locals 4

    int-to-long v0, p1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static calculateMaximumSize(Lorg/apache/poi/poifs/storage/HeaderBlock;)J
    .locals 2

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateMaximumSize(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 4

    new-instance v0, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/storage/BATBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    const/4 p0, 0x4

    new-array p0, p0, [B

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lorg/apache/poi/poifs/storage/BATBlock;->recomputeFree()V

    return-object v0
.end method

.method public static createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 2

    new-instance v0, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/storage/BATBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result p0

    iget-object p1, v0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    const/4 v1, -0x2

    aput v1, p1, p0

    :cond_0
    return-object v0
.end method

.method public static getBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;)",
            "Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result p1

    div-int v0, p0, p1

    rem-int/2addr p0, p1

    new-instance p1, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/storage/BATBlock;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;-><init>(ILorg/apache/poi/poifs/storage/BATBlock;Lorg/apache/poi/poifs/storage/BATBlock$1;)V

    return-object p1
.end method

.method public static getSBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;)",
            "Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->getBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p0

    return-object p0
.end method

.method private recomputeFree()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v2, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_has_free_sectors:Z

    return-void
.end method

.method private serialize()[B
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, p0, v2

    invoke-static {v0, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getOccupiedSize()I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getOurBlockIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->ourBlockIndex:I

    return p0
.end method

.method public getUsedSectors(Z)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v0, v0

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 p1, 0x0

    move v1, p1

    :goto_0
    if-ge p1, v0, :cond_2

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getValueAt(I)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p0, v0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Unable to fetch offset "

    const-string v2, " as the BAT only contains "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length p0, p0

    const-string v1, " entries"

    invoke-static {p1, p0, v1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasFreeSectors()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_has_free_sectors:Z

    return p0
.end method

.method public setOurBlockIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->ourBlockIndex:I

    return-void
.end method

.method public setValueAt(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    aget v1, v0, p1

    aput p2, v0, p1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_has_free_sectors:Z

    return-void

    :cond_0
    if-ne v1, p1, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/poifs/storage/BATBlock;->recomputeFree()V

    :cond_1
    return-void
.end method

.method public writeBlocks(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/storage/BATBlock;->serialize()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeData(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/storage/BATBlock;->serialize()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
