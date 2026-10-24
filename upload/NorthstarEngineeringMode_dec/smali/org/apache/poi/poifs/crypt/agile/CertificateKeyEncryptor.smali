.class public Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private certVerifier:[B

.field private encryptedKeyValue:[B

.field private x509Certificate:[B


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "encryptedKeyValue"

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->encryptedKeyValue:[B

    const-string v0, "X509Certificate"

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->x509Certificate:[B

    const-string v0, "certVerifier"

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->getBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->certVerifier:[B

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Unable to parse encryption descriptor"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCertVerifier()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->certVerifier:[B

    return-object p0
.end method

.method public getEncryptedKeyValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->encryptedKeyValue:[B

    return-object p0
.end method

.method public getX509Certificate()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->x509Certificate:[B

    return-object p0
.end method

.method public setCertVerifier([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->certVerifier:[B

    return-void
.end method

.method public setEncryptedKeyValue([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->encryptedKeyValue:[B

    return-void
.end method

.method public setX509Certificate([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->x509Certificate:[B

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

    const-string v2, "http://schemas.microsoft.com/office/2006/keyEncryptor/certificate"

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "c:encryptedKey"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string v0, "encryptedKeyValue"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->encryptedKeyValue:[B

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;[B)V

    const-string/jumbo v0, "x509Certificate"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->x509Certificate:[B

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;[B)V

    const-string v0, "certVerifier"

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->certVerifier:[B

    invoke-static {p1, v0, p0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->setBinAttr(Lorg/w3c/dom/Element;Ljava/lang/String;[B)V

    return-void
.end method
