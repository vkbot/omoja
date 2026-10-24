.class public Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ENC_NS:Ljava/lang/String; = "http://schemas.microsoft.com/office/2006/encryption"


# instance fields
.field private dataIntegrity:Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;

.field private keyData:Lorg/apache/poi/poifs/crypt/agile/KeyData;

.field private final keyEncryptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->keyEncryptors:Ljava/util/List;

    return-void
.end method

.method public static getBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)[B
    .locals 0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTag(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    :cond_1
    return-object v0
.end method

.method public static setAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;[B)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setIntAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDataIntegrity()Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->dataIntegrity:Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;

    return-object p0
.end method

.method public getKeyData()Lorg/apache/poi/poifs/crypt/agile/KeyData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->keyData:Lorg/apache/poi/poifs/crypt/agile/KeyData;

    return-object p0
.end method

.method public getKeyEncryptors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->keyEncryptors:Ljava/util/List;

    return-object p0
.end method

.method public parse(Lorg/w3c/dom/Document;)V
    .locals 4

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://schemas.microsoft.com/office/2006/encryption"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Unable to parse encryption descriptor"

    if-eqz v0, :cond_2

    const-string v0, "encryption"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/KeyData;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/KeyData;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->keyData:Lorg/apache/poi/poifs/crypt/agile/KeyData;

    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->dataIntegrity:Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;

    const-string v0, "keyEncryptors"

    invoke-static {p1, v1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getTag(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "keyEncryptor"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->keyEncryptors:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-direct {v2, v3}, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p0, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p0, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataIntegrity(Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->dataIntegrity:Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;

    return-void
.end method

.method public setKeyData(Lorg/apache/poi/poifs/crypt/agile/KeyData;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->keyData:Lorg/apache/poi/poifs/crypt/agile/KeyData;

    return-void
.end method

.method public write(Lorg/w3c/dom/Document;)V
    .locals 7

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    const-string v1, "encryption"

    const-string v2, "http://schemas.microsoft.com/office/2006/encryption"

    invoke-interface {p1, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->keyData:Lorg/apache/poi/poifs/crypt/agile/KeyData;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/agile/KeyData;->write(Lorg/w3c/dom/Element;)V

    :cond_0
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->dataIntegrity:Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/agile/DataIntegrity;->write(Lorg/w3c/dom/Element;)V

    :cond_1
    const-string v3, "keyEncryptors"

    invoke-interface {p1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->keyEncryptors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;

    invoke-virtual {v5, p1}, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->write(Lorg/w3c/dom/Element;)V

    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->getPasswordKeyEncryptor()Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;

    move-result-object v6

    if-eqz v6, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    or-int/2addr v3, v6

    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->getCertificateKeyEncryptor()Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;

    move-result-object v5

    if-eqz v5, :cond_3

    move v5, v0

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    or-int/2addr v4, v5

    goto :goto_0

    :cond_4
    const-string p0, "http://www.w3.org/2000/xmlns/"

    if-eqz v3, :cond_5

    const-string/jumbo p1, "xmlns:p"

    const-string v0, "http://schemas.microsoft.com/office/2006/keyEncryptor/password"

    invoke-interface {v1, p0, p1, v0}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v4, :cond_6

    const-string/jumbo p1, "xmlns:c"

    const-string v0, "http://schemas.microsoft.com/office/2006/keyEncryptor/certificate"

    invoke-interface {v1, p0, p1, v0}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
