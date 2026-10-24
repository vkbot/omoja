.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.source "SourceFile"


# instance fields
.field private encryptedHmacKey:[B

.field private encryptedHmacValue:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 74
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 75
    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    .line 76
    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setBlockSize(I)V

    .line 77
    invoke-virtual {p0, p5}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 3
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    .line 4
    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getKeyData()Lorg/apache/poi/poifs/crypt/agile/KeyData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getKeyBits()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    .line 9
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 10
    iget-object v2, v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V

    .line 11
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setFlags(I)V

    .line 13
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setSizeExtra(I)V

    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCspName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getBlockSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getBlockSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setBlockSize(I)V

    .line 16
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getCipherChaining()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 17
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported chaining mode - "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getCipherChaining()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getHashSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 21
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    .line 22
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 23
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    iget v2, v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    if-ne v2, v1, :cond_5

    .line 24
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getSaltSize()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid salt length: "

    if-eqz v1, :cond_4

    .line 25
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getSaltSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 26
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getSaltValue()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setKeySalt([B)V

    .line 27
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_3

    .line 28
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getDataIntegrity()Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->getEncryptedHmacKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setEncryptedHmacKey([B)V

    .line 30
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->getEncryptedHmacValue()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setEncryptedHmacValue([B)V

    return-void

    .line 31
    :cond_3
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object p0

    array-length p0, p0

    const-string v2, " and "

    .line 32
    invoke-static {v0, p0, v2, v1}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_4
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getSaltSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_5
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported hash algorithm: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " @ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_6
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid hash size: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_7
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "keyData not set"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :catch_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Unable to parse keyData"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;)V

    return-object v0
.end method

.method public getEncryptedHmacKey()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    return-object p0
.end method

.method public getEncryptedHmacValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "base"

    new-instance v1, Lorg/apache/poi/poifs/crypt/agile/a;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/agile/a;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;)V

    const-string v2, "encryptedHmacKey"

    new-instance v3, Lorg/apache/poi/ddf/c;

    const/16 v4, 0x16

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    const-string v4, "encryptedHmacValue"

    new-instance v5, Lorg/apache/poi/hssf/record/chart/f1;

    const/4 v6, 0x6

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/hssf/record/chart/f1;-><init>(ILjava/lang/Object;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public setEncryptedHmacKey([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    return-void
.end method

.method public setEncryptedHmacValue([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    return-void
.end method

.method public setKeySalt([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySalt([B)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "invalid verifier salt"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
