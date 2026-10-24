.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;,
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private chunkSize:I

.field private length:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->length:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->length:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    .line 3
    iget-wide v0, p1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->length:J

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->length:J

    .line 4
    iget p1, p1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    return p0
.end method

.method public static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Did not receive a password"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 5

    .line 4
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    int-to-long v3, p1

    .line 6
    invoke-static {v1, v2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 7
    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 8
    invoke-interface {p3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 9
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v0

    .line 12
    div-int/lit8 v1, v0, 0x8

    invoke-static {p1, v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p1

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    .line 13
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p1

    .line 14
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    if-nez p0, :cond_1

    .line 15
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, p1, p4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0, p4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;)V

    return-object v0
.end method

.method public bridge synthetic getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getDataStream(Ljava/io/InputStream;II)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    move-result-object p0

    return-object p0
.end method

.method public getDataStream(Ljava/io/InputStream;II)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .locals 7

    .line 4
    new-instance v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;

    int-to-long v3, p2

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;Ljava/io/InputStream;JI)V

    return-object v6
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .locals 0

    .line 3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "not supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLength()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->length:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Decryptor.getDataStream() was not called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    :try_start_2
    new-instance p0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {p0, p2}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    int-to-long v1, v1

    const-wide/16 v3, 0x8

    sub-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-ltz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->setBlock(I)V

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v2, [Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    new-instance v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    invoke-direct {v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;-><init>()V

    aput-object v5, v3, v4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v6

    iput v6, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v6

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v7

    iput v7, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v7

    iput v7, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    invoke-static {p0, v6}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :cond_0
    new-instance v4, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-ge v1, v2, :cond_1

    :try_start_4
    aget-object v0, v3, v1

    iget v5, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    invoke-virtual {p2, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->seek(I)V

    iget v5, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-virtual {p2, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->setBlock(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget v5, Ln4/a;->Z:I

    new-instance v5, Ln4/a$b;

    invoke-direct {v5}, Ln4/a$b;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    new-instance v6, Lj4/a$c;

    invoke-direct {v6, p2}, Lj4/a;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Lj4/b;->c:Lj4/a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    iget v6, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    int-to-long v6, v6

    const-wide/16 v8, -0x1

    :try_start_8
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v5, Ln4/a$a;->f1:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-virtual {v5}, Ln4/a$b;->k()Ln4/a;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v5}, Ln4/a;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v1

    :goto_2
    move-object v0, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_d
    invoke-virtual {v5}, Ln4/a;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v2

    :try_start_e
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_4
    move-object v1, v0

    goto :goto_2

    :catchall_5
    move-exception v0

    goto :goto_4

    :catchall_6
    move-exception v0

    goto :goto_4

    :catchall_7
    move-exception v0

    goto :goto_4

    :cond_1
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :try_start_10
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-eqz p1, :cond_2

    :try_start_11
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v0, v4

    goto :goto_c

    :cond_2
    :goto_5
    return-object v4

    :catchall_8
    move-exception p0

    move-object v0, v4

    goto :goto_a

    :catchall_9
    move-exception p0

    move-object v0, v4

    goto :goto_8

    :cond_3
    :try_start_12
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "buffer underrun"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :goto_6
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :catchall_a
    move-exception v2

    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_7

    :catchall_b
    move-exception p0

    :try_start_15
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    :catchall_c
    move-exception p0

    :goto_8
    :try_start_16
    throw p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    :catchall_d
    move-exception v1

    :try_start_17
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    goto :goto_9

    :catchall_e
    move-exception p2

    :try_start_18
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    :catchall_f
    move-exception p0

    :goto_a
    :try_start_19
    throw p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    :catchall_10
    move-exception p2

    if-eqz p1, :cond_4

    :try_start_1a
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    goto :goto_b

    :catchall_11
    move-exception p1

    :try_start_1b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_1
    move-exception p0

    goto :goto_c

    :cond_4
    :goto_b
    throw p2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    :goto_c
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    instance-of p1, p0, Ljava/security/GeneralSecurityException;

    if-nez p1, :cond_6

    instance-of p1, p0, Ljava/io/IOException;

    if-eqz p1, :cond_5

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "summary entries can\'t be read"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    check-cast p0, Ljava/security/GeneralSecurityException;

    throw p0
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, p2, v0, p0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public setChunkSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v3, v1, p1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v2

    array-length v4, v2

    new-array v4, v4, [B

    array-length v5, v2

    invoke-virtual {v1, v2, v3, v5, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/Decryptor;->setVerifier([B)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return v3

    :goto_0
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
