.class public abstract Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;
.implements Lorg/apache/poi/common/Duplicatable;


# instance fields
.field private blockSize:I

.field private chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field private cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field private cspName:Ljava/lang/String;

.field private flags:I

.field private hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private keyBits:I

.field private keySalt:[B

.field private providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

.field private sizeExtra:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->flags:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->flags:I

    .line 3
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->sizeExtra:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->sizeExtra:I

    .line 4
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 5
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 6
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keyBits:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keyBits:I

    .line 7
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->blockSize:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->blockSize:I

    .line 8
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    .line 9
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 10
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    .line 11
    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cspName:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cspName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.end method

.method public getBlockSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->blockSize:I

    return p0
.end method

.method public getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object p0
.end method

.method public getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object p0
.end method

.method public getCipherProvider()Lorg/apache/poi/poifs/crypt/CipherProvider;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    return-object p0
.end method

.method public getCspName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cspName:Ljava/lang/String;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->flags:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lorg/apache/poi/poifs/crypt/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/c;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V

    const-string v3, "flags"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/d;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/d;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V

    const-string/jumbo v3, "sizeExtra"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/e;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/e;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V

    const-string v2, "cipherAlgorithm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/c;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V

    const-string v3, "hashAlgorithm"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/d;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/d;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V

    const-string v3, "keyBits"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/e;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/e;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V

    const-string v2, "blockSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/c;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V

    const-string/jumbo v3, "providerType"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/d;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/d;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V

    const-string v3, "chainingMode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/e;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/e;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V

    const-string v2, "keySalt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/c;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/c;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V

    const-string p0, "cspName"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0
.end method

.method public getKeySalt()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    return-object p0
.end method

.method public getKeySize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keyBits:I

    return p0
.end method

.method public getSizeExtra()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->sizeExtra:I

    return p0
.end method

.method public setBlockSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->blockSize:I

    return-void
.end method

.method public setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-void
.end method

.method public setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    :cond_0
    return-void
.end method

.method public setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    return-void
.end method

.method public setCspName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cspName:Ljava/lang/String;

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->flags:I

    return-void
.end method

.method public setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setKeySalt([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    return-void
.end method

.method public setKeySize(I)V
    .locals 4

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keyBits:I

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

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

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSizeExtra(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->sizeExtra:I

    return-void
.end method
