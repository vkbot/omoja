.class public final Lorg/apache/poi/hssf/record/RecordInputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;,
        Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
    }
.end annotation


# static fields
.field private static final DATA_LEN_NEEDS_TO_BE_READ:I = -0x1

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final INVALID_SID_VALUE:I = -0x1

.field public static final MAX_RECORD_DATA_SIZE:S = 0x2020s


# instance fields
.field private final _bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

.field private _currentDataLength:I

.field private _currentDataOffset:I

.field private _currentSid:I

.field private final _dataInput:Lorg/apache/poi/util/LittleEndianInput;

.field private _markedDataOffset:I

.field private _nextSid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/RecordInputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_1

    .line 3
    instance-of p2, p1, Lorg/apache/poi/util/LittleEndianInput;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/poi/util/LittleEndianInput;

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {p2, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    .line 4
    new-instance p2, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/hssf/record/RecordInputStream$1;)V

    iput-object p2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;

    invoke-direct {v0, p1, p3, p2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;-><init>(Ljava/io/InputStream;ILorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    .line 6
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readNextSid()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    return-void
.end method

.method private checkRecordPosition(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    return-void

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not enough data ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") to read requested ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isContinueNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should never be called before end of current record"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    const/16 v0, 0x3c

    if-ne p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private readFully([BIIZ)V
    .locals 3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    .line 4
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_5

    move v0, p3

    :goto_0
    if-lez v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string p2, "Need to have a valid next chunk, but had: "

    const-string p3, " with len: "

    const-string p4, " and available: "

    .line 10
    invoke-static {p2, v1, p3, v0, p4}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t read the remaining "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes of the requested "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes. No further record exists."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    if-eqz p4, :cond_3

    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    .line 14
    invoke-interface {v2, p1, p2, v1}, Lorg/apache/poi/util/LittleEndianInput;->readPlain([BII)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    .line 15
    invoke-interface {v2, p1, p2, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([BII)V

    :goto_2
    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr p2, v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-void

    .line 16
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private readNextSid()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->available()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->readRecordSID()I

    move-result v0

    if-eq v0, v2, :cond_1

    iput v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    return v0

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "Found invalid sid ("

    const-string v2, ")"

    invoke-static {v1, v0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readStringCommon(IZ)Ljava/lang/String;
    .locals 5

    if-ltz p1, :cond_b

    const/high16 v0, 0x100000

    if-gt p1, v0, :cond_b

    new-array v0, p1, [C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    div-int/lit8 v3, v3, 0x2

    :goto_1
    sub-int v4, p1, v2

    if-gt v4, v3, :cond_3

    :goto_2
    if-ge v2, p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    :goto_3
    int-to-char v1, v1

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    goto :goto_3

    :goto_4
    aput-char v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_3
    :goto_5
    if-lez v3, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v4

    :goto_6
    int-to-char v4, v4

    goto :goto_7

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v4

    goto :goto_6

    :goto_7
    aput-char v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_7

    if-ne p2, v3, :cond_6

    goto :goto_8

    :cond_6
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Invalid compressFlag: "

    invoke-static {p1, p2}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_8
    if-nez p2, :cond_8

    move p2, v3

    goto :goto_0

    :cond_8
    move p2, v1

    goto :goto_0

    :cond_9
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Odd number of bytes("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") left behind"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected to find a ContinueRecord in order to read remaining "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v0, p1, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chars"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad requested string length ("

    const-string v0, ")"

    invoke-static {p2, p1, v0}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public available()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p0

    return p0
.end method

.method public getNextSid()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    return p0
.end method

.method public getSid()S
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    int-to-short p0, p0

    return p0
.end method

.method public hasNextRecord()Z
    .locals 3

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;-><init>(II)V

    throw v0

    :cond_1
    :goto_0
    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readNextSid()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    :cond_2
    iget p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    if-eq p0, v1, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isEncrypted()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    instance-of v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->isCurrentRecordEncrypted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mark(I)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget p1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iput p1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_markedDataOffset:I

    return-void
.end method

.method public nextRecord()V
    .locals 3

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    if-ne v2, v1, :cond_1

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->readDataSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/16 p0, 0x2020

    if-gt v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "The content of an excel record cannot exceed 8224 bytes"

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call nextRecord() without checking hasNextRecord() first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "EOF - next record not available"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([BII)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    return p3
.end method

.method public readAllContinuedRemainder()[B
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    new-instance v0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    const/16 v1, 0x4040

    invoke-virtual {v0, v1}, Lj4/d;->j(I)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/commons/io/output/j;->write([BII)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readByte()B
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p0

    return p0
.end method

.method public readCompressedUnicode(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BIIZ)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BIIZ)V

    return-void
.end method

.method public readInt()I
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p0

    return p0
.end method

.method public readLong()J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readPlain([BII)V
    .locals 1

    array-length p2, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BIIZ)V

    return-void
.end method

.method public readRemainder()[B
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/hssf/record/RecordInputStream;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_0
    int-to-long v0, v0

    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    return-object v0
.end method

.method public readShort()S
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p0

    return p0
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readUByte()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public readUShort()I
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p0

    return p0
.end method

.method public readUnicodeLEString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remaining()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_markedDataOffset:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    return-void
.end method
