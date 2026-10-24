.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 6

    if-nez p2, :cond_0

    .line 9
    sget-object p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 10
    :cond_0
    sget-object p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, p0, :cond_2

    sget-object p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, p0, :cond_2

    sget-object p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne p2, p0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Standard encryption only supports AES128/192/256."

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    .line 12
    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 13
    :cond_3
    sget-object p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    if-ne p3, p0, :cond_b

    if-nez p6, :cond_4

    .line 14
    sget-object p6, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 15
    :cond_4
    sget-object p0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-ne p6, p0, :cond_a

    const/4 p0, -0x1

    if-ne p4, p0, :cond_5

    .line 16
    iget p4, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    :cond_5
    if-ne p5, p0, :cond_6

    .line 17
    iget p5, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    .line 18
    :cond_6
    iget-object p0, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_8

    aget v4, p0, v2

    if-ne v4, p4, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    .line 19
    new-instance p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 20
    new-instance p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 21
    new-instance p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 23
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 24
    new-instance p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 26
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void

    .line 27
    :cond_9
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "KeySize "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " not allowed for Cipher "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_a
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Standard encryption only supports ECB chaining."

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_b
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Standard encryption only supports SHA-1."

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 2
    new-instance p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    invoke-direct {p0, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 3
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 4
    new-instance v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    invoke-direct {v0, p2, p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result p0

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result p0

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result p0

    const/4 p2, 0x4

    if-ne p0, p2, :cond_1

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 8
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    :cond_1
    return-void
.end method
