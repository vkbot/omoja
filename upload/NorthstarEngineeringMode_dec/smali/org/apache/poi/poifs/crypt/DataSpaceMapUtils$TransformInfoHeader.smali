.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformInfoHeader"
.end annotation


# instance fields
.field readerVersionMajor:I

.field readerVersionMinor:I

.field transformType:I

.field transformerId:Ljava/lang/String;

.field transformerName:Ljava/lang/String;

.field updaterVersionMajor:I

.field updaterVersionMinor:I

.field writerVersionMajor:I

.field writerVersionMinor:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformType:I

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerId:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerName:Ljava/lang/String;

    iput p4, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMajor:I

    iput p5, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMinor:I

    iput p6, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMajor:I

    iput p7, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMinor:I

    iput p8, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMajor:I

    iput p9, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMinor:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMajor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMajor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMajor:I

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 4
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformType:I

    .line 5
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerId:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerName:Ljava/lang/String;

    .line 7
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMajor:I

    .line 8
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMinor:I

    .line 9
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMajor:I

    .line 10
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMinor:I

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMajor:I

    .line 12
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMinor:I

    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->createDelayedOutput(I)Lorg/apache/poi/util/LittleEndianOutput;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformType:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerId:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMajor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMinor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMajor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMinor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMajor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMinor:I

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    return-void
.end method
