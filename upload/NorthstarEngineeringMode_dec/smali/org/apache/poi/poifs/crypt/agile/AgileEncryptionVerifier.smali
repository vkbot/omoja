.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.source "SourceFile"


# instance fields
.field private blockSize:I

.field private keyBits:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 33
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 34
    invoke-virtual {p0, p5}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 35
    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setKeySize(I)V

    .line 36
    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setBlockSize(I)V

    const p1, 0x186a0

    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSpinCount(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    .line 39
    iget v0, p1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    .line 40
    iget p1, p1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    iput p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getKeyEncryptors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->getPasswordKeyEncryptor()Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getHashSize()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getKeyBits()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setKeySize(I)V

    .line 8
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getBlockSize()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setBlockSize(I)V

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getHashSize()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 11
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 13
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    iget v1, v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 14
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getSpinCount()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSpinCount(I)V

    .line 16
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getEncryptedVerifierHashInput()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 17
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getSaltValue()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setSalt([B)V

    .line 18
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getEncryptedKeyValue()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedKey([B)V

    .line 19
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getEncryptedVerifierHashValue()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedVerifierHash([B)V

    .line 20
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getSaltSize()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v1

    array-length v1, v1

    if-ne p1, v1, :cond_5

    .line 22
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getCipherChaining()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 23
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getCipherChaining()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-eq p0, p1, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getCipherChaining()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-ne p0, p1, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported chaining mode - "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getCipherChaining()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void

    .line 25
    :cond_5
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Invalid salt size"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_6
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported hash algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " @ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hashSize not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "blockSize not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encryptedKey not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->copy()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->copy()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;)V

    return-object v0
.end method

.method public getBlockSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    return p0
.end method

.method public getKeySize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    return p0
.end method

.method public setBlockSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    return-void
.end method

.method public final setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setKeySize(I)V

    :cond_0
    return-void
.end method

.method public setEncryptedKey([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedKey([B)V

    return-void
.end method

.method public setEncryptedVerifier([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifier([B)V

    return-void
.end method

.method public setEncryptedVerifierHash([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifierHash([B)V

    return-void
.end method

.method public setKeySize(I)V
    .locals 4

    iput p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    if-ne v3, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "KeySize "

    const-string v2, " not allowed for cipher "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSalt([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    iget v1, v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSalt([B)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "invalid verifier salt"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
