.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-result-object p0

    return-object p0
.end method

.method public setKeySize(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    if-ne v3, p1, :cond_1

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    const/16 v0, 0x28

    if-le p1, v0, :cond_0

    const-string p1, "Microsoft Enhanced Cryptographic Provider v1.0"

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCspName(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/CipherProvider;->cipherProviderName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCspName(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "invalid keysize "

    const-string v2, " for cipher algorithm "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
