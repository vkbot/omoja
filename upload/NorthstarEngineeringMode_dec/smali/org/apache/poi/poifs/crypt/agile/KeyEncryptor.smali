.class public Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CERT_NS:Ljava/lang/String; = "http://schemas.microsoft.com/office/2006/keyEncryptor/certificate"

.field static final PASS_NS:Ljava/lang/String; = "http://schemas.microsoft.com/office/2006/keyEncryptor/password"


# instance fields
.field private certificateKeyEncryptor:Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;

.field private passwordKeyEncryptor:Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "*"

    const-string v1, "encryptedKey"

    .line 3
    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 6
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://schemas.microsoft.com/office/2006/keyEncryptor/password"

    .line 7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v2, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->passwordKeyEncryptor:Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;

    goto :goto_1

    :cond_0
    const-string v3, "http://schemas.microsoft.com/office/2006/keyEncryptor/certificate"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->certificateKeyEncryptor:Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 11
    :cond_3
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Unable to parse encryption descriptor"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCertificateKeyEncryptor()Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->certificateKeyEncryptor:Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;

    return-object p0
.end method

.method public getPasswordKeyEncryptor()Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->passwordKeyEncryptor:Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;

    return-object p0
.end method

.method public setCertificateKeyEncryptor(Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->certificateKeyEncryptor:Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;

    return-void
.end method

.method public setPasswordKeyEncryptor(Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->passwordKeyEncryptor:Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;

    return-void
.end method

.method public write(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->passwordKeyEncryptor:Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/PasswordKeyEncryptor;->write(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/KeyEncryptor;->certificateKeyEncryptor:Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/CertificateKeyEncryptor;->write(Lorg/w3c/dom/Element;)V

    :cond_1
    :goto_0
    return-void
.end method
