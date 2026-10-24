.class public final Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/BiffHeaderInput;
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field public static final RC4_REKEYING_INTERVAL:I = 0x400


# instance fields
.field private final buffer:[B

.field private final ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

.field private shouldSkipEncryptionOnCurrentRecord:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/poi/poifs/crypt/EncryptionInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    int-to-long v0, p2

    :try_start_0
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1, p2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    move-object p1, v1

    :goto_0
    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p3

    const/16 v1, 0x400

    invoke-virtual {p3, v1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setChunkSize(I)V

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {p3, p1, v1, v2}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    if-lez p2, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :goto_2
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {p1, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static isNeverEncryptedRecord(I)Z
    .locals 1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x809

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public available()I
    .locals 0
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "just delegating"
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result p0

    return p0
.end method

.method public getPosition()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getPos()J

    move-result-wide v0

    return-wide v0
.end method

.method public isCurrentRecordEncrypted()Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public readByte()B
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    aget-byte p0, p0, v2

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result p0

    return p0
.end method

.method public readDataSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->setNextRecordSize(I)V

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not expect to read NaN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    .line 2
    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([BII)V

    :goto_0
    return-void
.end method

.method public readInt()I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    return p0
.end method

.method public readLong()J
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getLong([B)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readPlain([BII)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->readPlain([BII)V

    return-void
.end method

.method public readRecordSID()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->isNeverEncryptedRecord(I)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    return v0
.end method

.method public readShort()S
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getShort([B)S

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p0

    return p0
.end method

.method public readUByte()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public readUShort()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readShort()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method
