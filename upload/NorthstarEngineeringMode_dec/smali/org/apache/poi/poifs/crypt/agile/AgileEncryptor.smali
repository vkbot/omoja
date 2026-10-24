.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;
    }
.end annotation


# instance fields
.field private integritySalt:[B

.field private pwHash:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    .line 3
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    .line 4
    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    return-void
.end method


# virtual methods
.method public confirmPassword(Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    .line 5
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMaxRecordLength()I

    move-result v3

    int-to-long v4, v1

    .line 6
    invoke-static {v4, v5, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v10

    .line 7
    invoke-static {v4, v5, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v11

    .line 8
    invoke-static {v4, v5, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v9

    int-to-long v1, v2

    .line 9
    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v8

    int-to-long v0, v0

    .line 10
    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v12

    .line 11
    invoke-static {}, Lorg/apache/poi/util/RandomSingleton;->getInstance()Ljava/security/SecureRandom;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 13
    invoke-virtual {v0, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 14
    invoke-virtual {v0, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 15
    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 16
    invoke-virtual {v0, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object v6, p0

    move-object v7, p1

    .line 17
    invoke-virtual/range {v6 .. v12}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 4

    .line 18
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    .line 19
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    .line 20
    invoke-virtual {v0, p5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setSalt([B)V

    .line 21
    invoke-virtual {v1, p3}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setKeySalt([B)V

    .line 22
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result p3

    .line 23
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSpinCount()I

    move-result v3

    invoke-static {p1, v2, p5, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    .line 24
    sget-object p5, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kVerifierInputBlock:[B

    const/4 v2, 0x1

    invoke-static {v0, p1, p5, p4, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 26
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    iget-object p4, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    .line 28
    sget-object p5, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kHashedVerifierBlock:[B

    invoke-static {v0, p4, p5, p1, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedVerifierHash([B)V

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    .line 30
    sget-object p4, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kCryptoKeyBlock:[B

    invoke-static {v0, p1, p4, p2, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedKey([B)V

    .line 32
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p4

    iget-object p4, p4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {p1, p2, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 34
    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    .line 35
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p2

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object p4

    sget-object p5, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityKeyBlock:[B

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result p6

    invoke-static {p2, p4, p5, p6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object p2

    .line 36
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p4

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object p5

    invoke-static {p1, p4, p5, p2, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    .line 37
    array-length p2, p0

    invoke-static {p2, p3}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result p2

    invoke-static {p0, p2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 39
    invoke-virtual {v1, p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setEncryptedHmacKey([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->copy()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;)V

    return-object v0
.end method

.method public createEncryptionDocument()Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    new-instance v1, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;-><init>()V

    new-instance v2, Lorg/apache/poi/poifs/crypt/agile/KeyData;

    invoke-direct {v2}, Lorg/apache/poi/poifs/crypt/agile/KeyData;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setKeyData(Lorg/apache/poi/poifs/crypt/agile/KeyData;)V

    new-instance v3, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;

    invoke-direct {v3}, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;-><init>()V

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getKeyEncryptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;

    invoke-direct {v4}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->setPasswordKeyEncryptor(Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSpinCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setSpinCount(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->setSaltSize(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getBlockSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setSaltSize(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->setBlockSize(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getBlockSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setBlockSize(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->setKeyBits(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getKeySize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setKeyBits(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    iget v3, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->setHashSize(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    iget v3, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setHashSize(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v5

    iget-object v5, v5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->setCipherChaining(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setCipherChaining(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->setSaltValue([B)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setSaltValue([B)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setEncryptedVerifierHashInput([B)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setEncryptedVerifierHashValue([B)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedKey()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->setEncryptedKeyValue([B)V

    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setDataIntegrity(Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacKey()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->setEncryptedHmacKey([B)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacValue()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->setEncryptedHmacValue([B)V

    return-object v1

    :cond_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "Cipher algorithm of header and verifier have to match"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method

.method public marshallEncryptionDocument(Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 2

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->write(Lorg/w3c/dom/Document;)V

    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    const-string v0, "method"

    const-string/jumbo v1, "xml"

    invoke-virtual {p1, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "encoding"

    const-string v1, "UTF-8"

    invoke-virtual {p1, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "indent"

    const-string v1, "no"

    invoke-virtual {p1, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "standalone"

    const-string/jumbo v1, "yes"

    invoke-virtual {p1, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "error marshalling encryption info document"

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public updateIntegrityHMAC(Ljava/io/File;I)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMac(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljavax/crypto/Mac;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    array-length v5, v4

    invoke-static {v5, v1}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result v5

    invoke-static {v4, v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    invoke-direct {v5, v4, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    int-to-long v4, p2

    const/4 p2, 0x0

    invoke-static {v2, p2, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    const/16 v4, 0x8

    invoke-virtual {v3, v2, p2, v4}, Ljavax/crypto/Mac;->update([BII)V

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array v4, p2, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v2, p2, v4}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    array-length p2, p1

    invoke-static {p2, v1}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v2

    sget-object v3, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityValueBlock:[B

    invoke-static {p2, v2, v3, v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, p2, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setEncryptedHmacValue([B)V

    return-void

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p2
.end method
