.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;
    }
.end annotation


# instance fields
.field private chunkSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->chunkSize:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->chunkSize:I

    .line 3
    iget p1, p1, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->chunkSize:I

    iput p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->chunkSize:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->chunkSize:I

    return p0
.end method

.method public static synthetic b(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->lambda$createEncryptionInfoEntry$0(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    return-void
.end method

.method private static synthetic lambda$createEncryptionInfoEntry$0(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result p0

    invoke-virtual {p3, p0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    invoke-virtual {p1, p3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    invoke-virtual {p2, p3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    return-void
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
    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    .line 6
    invoke-virtual {p2, p5}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setSalt([B)V

    .line 7
    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    const/4 p3, 0x1

    const/4 p5, 0x0

    const/4 p6, 0x0

    invoke-static {p6, p5, p0, p1, p3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p0

    const/16 p1, 0x10

    new-array p3, p1, [B

    .line 10
    invoke-virtual {p0, p4, p5, p1, p3}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 11
    invoke-virtual {p2, p3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedVerifier([B)V

    .line 12
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 16
    invoke-virtual {p2, p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "Password confirmation failed"

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->copy()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;)V

    return-object v0
.end method

.method public createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 4

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    new-instance v2, Lc2/a;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3, v1}, Lc2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    const-string p0, "EncryptionInfo"

    invoke-static {p1, p0, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method

.method public bridge synthetic getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;
    .locals 0

    .line 3
    new-instance p2, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Ljava/io/OutputStream;)V

    return-object p2
.end method

.method public getKeySizeInBytes()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public setChunkSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->chunkSize:I

    return-void
.end method
