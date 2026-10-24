.class public Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/crypto/URIDereferencer;


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

.field private signatureInfo:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findPart(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 4

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v1

    const-string v2, "dereference: {}"

    invoke-interface {v1, p1, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->signatureInfo:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string v0, "illegal part name (not expected) in {}"

    invoke-interface {p0, p1, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object p0

    const-string v0, "illegal part name (expected): {}"

    invoke-interface {p0, p1, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public dereference(Ljavax/xml/crypto/URIReference;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/Data;
    .locals 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface {p1}, Ljavax/xml/crypto/URIReference;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->findPart(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->e()La5/b;

    move-result-object v1

    const-string v2, "cannot resolve {}, delegating to base DOM URI dereferencer"

    invoke-interface {v1, v0, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    invoke-interface {p0, p1, p2}, Ljavax/xml/crypto/URIDereferencer;->dereference(Ljavax/xml/crypto/URIReference;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/Data;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, ".rels"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget p2, Lorg/apache/commons/io/output/j;->c:I

    new-instance p2, Lorg/apache/commons/io/output/j$a;

    invoke-direct {p2}, Lorg/apache/commons/io/output/j$a;-><init>()V

    invoke-virtual {p2}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/apache/commons/io/output/j;->toInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p2}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p2}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_7
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_4
    :goto_2
    new-instance p2, Ljavax/xml/crypto/OctetStreamData;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0, p0}, Ljavax/xml/crypto/OctetStreamData;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :catch_1
    move-exception p1

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    :goto_3
    invoke-static {p1}, Li4/c;->a(Ljava/io/Closeable;)V

    new-instance p1, Ljavax/xml/crypto/URIReferenceException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "I/O error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/crypto/URIReferenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p2, Ljavax/xml/crypto/URIReferenceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "could not URL decode the uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/crypto/URIReference;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljavax/xml/crypto/URIReferenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "XMLCryptoContext cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "URIReference cannot be null - call setSignatureInfo(...) before"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSignatureInfo(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->signatureInfo:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->getURIDereferencer()Ljavax/xml/crypto/URIDereferencer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->baseUriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    return-void
.end method
