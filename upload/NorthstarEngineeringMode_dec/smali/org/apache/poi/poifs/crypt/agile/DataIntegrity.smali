.class public Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private encryptedHmacKey:[B

.field private encryptedHmacValue:[B


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

    const-string v0, "http://schemas.microsoft.com/office/2006/encryption"

    const-string v1, "dataIntegrity"

    .line 3
    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getTag(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "encryptedHmacKey"

    .line 4
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->encryptedHmacKey:[B

    const-string v0, "encryptedHmacValue"

    .line 5
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->encryptedHmacValue:[B

    return-void

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Unable to parse encryption descriptor"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getEncryptedHmacKey()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->encryptedHmacKey:[B

    return-object p0
.end method

.method public getEncryptedHmacValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->encryptedHmacValue:[B

    return-object p0
.end method

.method public setEncryptedHmacKey([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->encryptedHmacKey:[B

    return-void
.end method

.method public setEncryptedHmacValue([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->encryptedHmacValue:[B

    return-void
.end method

.method public write(Lorg/w3c/dom/Element;)V
    .locals 3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "http://schemas.microsoft.com/office/2006/encryption"

    const-string v2, "dataIntegrity"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string v0, "encryptedHmacKey"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->encryptedHmacKey:[B

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;[B)V

    const-string v0, "encryptedHmacValue"

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->encryptedHmacValue:[B

    invoke-static {p1, v0, p0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;[B)V

    return-void
.end method
