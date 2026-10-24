.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;
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

.method public static parseDescriptor(Ljava/io/InputStream;)Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;
    .locals 1

    .line 2
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Lorg/xml/sax/InputSource;)Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;

    move-result-object p0

    return-object p0
.end method

.method public static parseDescriptor(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;
    .locals 1

    .line 1
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Lorg/xml/sax/InputSource;)Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;

    move-result-object p0

    return-object p0
.end method

.method private static parseDescriptor(Lorg/xml/sax/InputSource;)Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;
    .locals 2

    .line 3
    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 4
    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;->parse(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Unable to parse encryption descriptor"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 6

    if-nez p2, :cond_0

    .line 14
    sget-object p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 15
    :cond_0
    sget-object p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, p0, :cond_a

    if-nez p3, :cond_1

    .line 16
    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    :cond_1
    if-nez p6, :cond_2

    .line 17
    sget-object p6, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 18
    :cond_2
    sget-object p0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-eq p6, p0, :cond_4

    sget-object p0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-ne p6, p0, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Agile encryption only supports CBC/CFB chaining."

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    const/4 p0, -0x1

    if-ne p4, p0, :cond_5

    .line 20
    iget p4, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    :cond_5
    if-ne p5, p0, :cond_6

    .line 21
    iget p5, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    .line 22
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

    .line 23
    new-instance p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 24
    new-instance p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 25
    new-instance p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 27
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 28
    new-instance p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 30
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void

    .line 31
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

    .line 32
    :cond_a
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "RC4 must not be used with agile encryption."

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 1
    instance-of p0, p2, Ljava/io/InputStream;

    if-nez p0, :cond_1

    .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Had unexpected type of input: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    check-cast p2, Ljava/io/InputStream;

    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Ljava/io/InputStream;)Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;

    move-result-object p0

    .line 4
    new-instance p2, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-direct {p2, p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 5
    new-instance p2, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    invoke-direct {p2, p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/agile/EncryptionDocument;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result p0

    sget-object p2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v0, p2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne p0, v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result p0

    iget p2, p2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne p0, p2, :cond_2

    .line 8
    new-instance p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 10
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 11
    new-instance p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 13
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    :cond_2
    return-void
.end method
