.class public Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private blockSize:Ljava/lang/Integer;

.field private cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field private cipherChaining:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field private encryptedKeyValue:[B

.field private encryptedVerifierHashInput:[B

.field private encryptedVerifierHashValue:[B

.field private hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private hashSize:Ljava/lang/Integer;

.field private keyBits:Ljava/lang/Integer;

.field private saltSize:Ljava/lang/Integer;

.field private saltValue:[B

.field private spinCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "saltSize"

    .line 3
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->saltSize:Ljava/lang/Integer;

    const-string v0, "blockSize"

    .line 4
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->blockSize:Ljava/lang/Integer;

    const-string v0, "keyBits"

    .line 5
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->keyBits:Ljava/lang/Integer;

    const-string v0, "hashSize"

    .line 6
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->hashSize:Ljava/lang/Integer;

    const-string v0, "cipherAlgorithm"

    .line 7
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->keyBits:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->fromXmlId(Ljava/lang/String;I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v0, "cipherChaining"

    .line 8
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/ChainingMode;->fromXmlId(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->cipherChaining:Lorg/apache/poi/poifs/crypt/ChainingMode;

    const-string v0, "hashAlgorithm"

    .line 9
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->fromEcmaId(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string/jumbo v0, "saltValue"

    .line 10
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->saltValue:[B

    const-string/jumbo v0, "spinCount"

    .line 11
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->spinCount:Ljava/lang/Integer;

    const-string v0, "encryptedVerifierHashInput"

    .line 12
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedVerifierHashInput:[B

    const-string v0, "encryptedVerifierHashValue"

    .line 13
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedVerifierHashValue:[B

    const-string v0, "encryptedKeyValue"

    .line 14
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedKeyValue:[B

    return-void

    .line 15
    :cond_1
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Unable to parse encryption descriptor"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBlockSize()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->blockSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object p0
.end method

.method public getCipherChaining()Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->cipherChaining:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object p0
.end method

.method public getEncryptedKeyValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedKeyValue:[B

    return-object p0
.end method

.method public getEncryptedVerifierHashInput()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedVerifierHashInput:[B

    return-object p0
.end method

.method public getEncryptedVerifierHashValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedVerifierHashValue:[B

    return-object p0
.end method

.method public getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0
.end method

.method public getHashSize()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->hashSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public getKeyBits()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->keyBits:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSaltSize()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->saltSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSaltValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->saltValue:[B

    return-object p0
.end method

.method public getSpinCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->spinCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setBlockSize(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->blockSize:Ljava/lang/Integer;

    return-void
.end method

.method public setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-void
.end method

.method public setCipherChaining(Lorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->cipherChaining:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-void
.end method

.method public setEncryptedKeyValue([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedKeyValue:[B

    return-void
.end method

.method public setEncryptedVerifierHashInput([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedVerifierHashInput:[B

    return-void
.end method

.method public setEncryptedVerifierHashValue([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedVerifierHashValue:[B

    return-void
.end method

.method public setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setHashSize(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->hashSize:Ljava/lang/Integer;

    return-void
.end method

.method public setKeyBits(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->keyBits:Ljava/lang/Integer;

    return-void
.end method

.method public setSaltSize(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->saltSize:Ljava/lang/Integer;

    return-void
.end method

.method public setSaltValue([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->saltValue:[B

    return-void
.end method

.method public setSpinCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->spinCount:Ljava/lang/Integer;

    return-void
.end method

.method public write(Lorg/w3c/dom/Element;)V
    .locals 3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "http://schemas.microsoft.com/office/2006/encryption"

    const-string v2, "keyEncryptor"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string/jumbo v1, "uri"

    const-string v2, "http://schemas.microsoft.com/office/2006/keyEncryptor/password"

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "p:encryptedKey"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string/jumbo v0, "saltSize"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->saltSize:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "blockSize"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->blockSize:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "keyBits"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->keyBits:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "hashSize"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->hashSize:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    :goto_0
    const-string v2, "cipherAlgorithm"

    invoke-static {p1, v2, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->cipherChaining:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->xmlId:Ljava/lang/String;

    :goto_1
    const-string v2, "cipherChaining"

    invoke-static {p1, v2, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    :goto_2
    const-string v0, "hashAlgorithm"

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "saltValue"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->saltValue:[B

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;[B)V

    const-string/jumbo v0, "spinCount"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->spinCount:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "encryptedVerifierHashInput"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedVerifierHashInput:[B

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;[B)V

    const-string v0, "encryptedVerifierHashValue"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedVerifierHashValue:[B

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;[B)V

    const-string v0, "encryptedKeyValue"

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->encryptedKeyValue:[B

    invoke-static {p1, v0, p0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;[B)V

    return-void
.end method
