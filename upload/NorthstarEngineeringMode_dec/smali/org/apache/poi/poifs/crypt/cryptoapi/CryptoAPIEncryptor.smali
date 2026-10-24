.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private chunkSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    .line 3
    iget p1, p1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    return p0
.end method


# virtual methods
.method public confirmPassword(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Lorg/apache/poi/util/RandomSingleton;->getInstance()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x10

    new-array v7, v1, [B

    new-array v6, v1, [B

    .line 2
    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3
    invoke-virtual {v0, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 4
    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    .line 6
    invoke-virtual {p2, p5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setSalt([B)V

    .line 7
    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 10
    array-length p1, p4

    new-array p1, p1, [B

    .line 11
    array-length p5, p4

    invoke-virtual {p0, p4, p3, p5, p1}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 12
    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 13
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 15
    invoke-virtual {p1, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 17
    invoke-virtual {p2, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "Password confirmation failed"

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)V

    return-object v0
.end method

.method public bridge synthetic getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 0

    .line 3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "not supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;
    .locals 0

    .line 4
    new-instance p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;Ljava/io/OutputStream;)V

    return-object p2
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, p0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public setChunkSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    return-void
.end method

.method public setSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 10

    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)V

    const/16 p0, 0x8

    new-array v1, p0, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v4, v2

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-interface {v5}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    invoke-direct {v7}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;-><init>()V

    iput v4, v7, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->size()I

    move-result v8

    iput v8, v7, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    invoke-interface {v5}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    sget-object v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flagStream:Lorg/apache/poi/util/BitField;

    invoke-virtual {v8, v2, v6}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v6

    iput v6, v7, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    iput v2, v7, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    invoke-virtual {v0, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setBlock(I)V

    invoke-virtual {p1, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v5

    :try_start_0
    invoke-static {v5, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->size()I

    move-result v5

    iget v6, v7, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    sub-int/2addr v5, v6

    iput v5, v7, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->size()I

    move-result p3

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setBlock(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v1, v2, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    iget v7, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    int-to-long v7, v7

    invoke-static {v1, v2, v7, v8}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    invoke-virtual {v0, v1, v2, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget v7, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    int-to-long v7, v7

    invoke-static {v1, v2, v7, v8}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    invoke-virtual {v0, v1, v2, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget v7, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-static {v1, v2, v7}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v7, 0x2

    invoke-virtual {v0, v1, v2, v7}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget-object v8, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-short v8, v8

    invoke-static {v1, v2, v8}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    invoke-virtual {v0, v1, v2, v6}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget v8, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    int-to-short v8, v8

    invoke-static {v1, v2, v8}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    invoke-virtual {v0, v1, v2, v6}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget v8, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    int-to-long v8, v8

    invoke-static {v1, v2, v8, v9}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    invoke-virtual {v0, v1, v2, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget-object v5, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v5

    array-length v8, v5

    invoke-virtual {v0, v5, v2, v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    invoke-static {v1, v2, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {v0, v1, v2, v7}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->size()I

    move-result v3

    sub-int v5, v3, p3

    int-to-long v6, p3

    invoke-static {v1, v2, v6, v7}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    int-to-long v5, v5

    invoke-static {v1, v4, v5, v6}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->reset()V

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setBlock(I)V

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setSize(I)V

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->toInputStream(J)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method
