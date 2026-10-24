.class public Lorg/apache/poi/hssf/record/DConRefRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x51s


# instance fields
.field private _unused:[B

.field private final charCount:I

.field private final charType:I

.field private final firstCol:I

.field private final firstRow:I

.field private final lastCol:I

.field private final lastRow:I

.field private final path:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/DConRefRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    .line 8
    iget-object v0, p1, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    .line 9
    iget-object p1, p1, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/16 v1, 0x51

    if-ne v0, v1, :cond_1

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    int-to-long v0, v1

    .line 19
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    .line 20
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    const/4 v1, 0x0

    .line 21
    aget-byte v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 22
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    :cond_0
    return-void

    .line 23
    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong sid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 10
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DConRefRecord;->bytesToRIStream([B)Lorg/apache/poi/hssf/record/RecordInputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DConRefRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/DConRefRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/DConRefRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/DConRefRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/DConRefRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static bytesToRIStream([B)Lorg/apache/poi/hssf/record/RecordInputStream;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    sget v1, Ln4/f;->Z:I

    new-instance v1, Ln4/f$a;

    invoke-direct {v1}, Ln4/f$a;-><init>()V

    invoke-virtual {v1, p0}, Ln4/f$a;->m([B)V

    invoke-virtual {v1}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DConRefRecord;->copy()Lorg/apache/poi/hssf/record/DConRefRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/DConRefRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/DConRefRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DConRefRecord;-><init>(Lorg/apache/poi/hssf/record/DConRefRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DConRefRecord;->copy()Lorg/apache/poi/hssf/record/DConRefRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DConRefRecord;->copy()Lorg/apache/poi/hssf/record/DConRefRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x9

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    array-length p0, p0

    add-int/2addr v1, p0

    :cond_0
    return v1
.end method

.method public getFirstColumn()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    return p0
.end method

.method public getFirstRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "firstRow"

    new-instance v1, Lorg/apache/poi/hssf/record/b0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/b0;-><init>(Lorg/apache/poi/hssf/record/DConRefRecord;I)V

    const-string v3, "lastRow"

    new-instance v4, Lorg/apache/poi/hssf/record/c0;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/c0;-><init>(Lorg/apache/poi/hssf/record/DConRefRecord;I)V

    const-string v5, "firstColumn"

    new-instance v6, Lorg/apache/poi/hssf/record/d0;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/d0;-><init>(Lorg/apache/poi/hssf/record/DConRefRecord;I)V

    const-string v7, "lastColumn"

    new-instance v8, Lorg/apache/poi/hssf/record/b0;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/b0;-><init>(Lorg/apache/poi/hssf/record/DConRefRecord;I)V

    const-string v9, "charCount"

    new-instance v10, Lorg/apache/poi/hssf/record/c0;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/c0;-><init>(Lorg/apache/poi/hssf/record/DConRefRecord;I)V

    const-string v11, "charType"

    new-instance v12, Lorg/apache/poi/hssf/record/d0;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/d0;-><init>(Lorg/apache/poi/hssf/record/DConRefRecord;I)V

    const-string/jumbo v13, "path"

    new-instance v14, Lorg/apache/poi/hssf/record/b0;

    const/4 v2, 0x2

    invoke-direct {v14, p0, v2}, Lorg/apache/poi/hssf/record/b0;-><init>(Lorg/apache/poi/hssf/record/DConRefRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    invoke-static/range {v0 .. v13}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DConRefRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->DCON_REF:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLastColumn()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    return p0
.end method

.method public getLastRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    return p0
.end method

.method public getPath()[B
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public getReadablePath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-byte v2, v1, v0

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    sget-object v1, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "\u0003"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x51

    return p0
.end method

.method public isExternalRef()Z
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    :cond_0
    return-void
.end method
