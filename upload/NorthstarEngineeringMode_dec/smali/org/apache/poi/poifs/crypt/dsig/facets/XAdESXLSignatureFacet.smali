.class public Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final certificateFactory:Ljava/security/cert/CertificateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->certificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X509 JCA error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private addCertificateValues(Ly5/v;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 1

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ly5/v;->J1()Ly5/e;

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    invoke-interface {p0, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "certificate encoding error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private addRevocationCRL(Ly5/g;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V
    .locals 0

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasCRLs()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ly5/g;->g1()Ly5/a;

    invoke-interface {p1}, Ly5/g;->D1()V

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getCRLs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private addRevocationOCSP(Ly5/g;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V
    .locals 0

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasOCSPs()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ly5/g;->H0()Ly5/k;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getOCSPs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "OCSP decoding error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private completeCertificateRefs(Ly5/v;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)Ly5/f;
    .locals 0

    invoke-interface {p1}, Ly5/v;->B()Ly5/f;

    const/4 p0, 0x0

    throw p0
.end method

.method private createRevocationValues(Ly5/o;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V
    .locals 2

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasCRLs()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ly5/o;->L()Ly5/b;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getCRLs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasOCSPs()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1}, Ly5/o;->d0()Ly5/l;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getOCSPs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private createValidationData(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lz5/a;
    .locals 1

    sget-object p0, Lz5/a;->Z0:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lz5/a;

    invoke-interface {p0}, Lz5/a;->c0()Lz5/b;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getX509chain()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-le p0, p1, :cond_0

    throw v0

    :cond_0
    throw v0
.end method

.method private varargs createXAdESTimeStamp(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;[Lorg/w3c/dom/Node;)Ly5/w;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesCanonicalizationMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->getC14nValue(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspService()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    move-result-object v0

    invoke-interface {v0, p1, p3, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;->timeStamp(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;[BLorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Ly5/w;->U0:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Ly5/w;

    invoke-interface {p1}, Ly5/j;->F0()Li6/a;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesCanonicalizationMethod()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error while creating a time-stamp: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getC14nValue(Ljava/util/List;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    :try_start_0
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    new-instance v0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-static {p1}, Lorg/apache/xml/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lorg/apache/xml/security/c14n/Canonicalizer;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/xml/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c14n error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_4
    throw p0
.end method

.method private getCrlNumber(Ljava/security/cert/X509CRL;)Ljava/math/BigInteger;
    .locals 2

    sget-object p0, Lorg/bouncycastle/asn1/x509/Extension;->cRLNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :goto_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "I/O error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getQualProps(Lorg/w3c/dom/NodeList;)Ly5/n;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :try_start_0
    invoke-interface {p1, p0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    sget-object p1, Ly5/m;->Q0:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {p1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/b;->h(Lorg/w3c/dom/Node;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Ly5/m;

    invoke-interface {p0}, Ly5/m;->A()Ly5/n;

    move-result-object p0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/MarshalException;

    invoke-direct {p1, p0}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljavax/xml/crypto/MarshalException;

    const-string p1, "no XAdES-BES extension present"

    invoke-direct {p0, p1}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$completeCertificateRefs$0(Ly5/c;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/security/cert/X509Certificate;)V
    .locals 1

    invoke-interface {p0}, Ly5/c;->p1()Ly5/d;

    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->setCertID(Ly5/d;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;ZLjava/security/cert/X509Certificate;)V

    return-void
.end method


# virtual methods
.method public postSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;)V
    .locals 11

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v1

    const-string v2, "XAdES-X-L post sign phase"

    invoke-interface {v1, v2}, La5/b;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v1

    const-string v2, "http://uri.etsi.org/01903/v1.3.2#"

    const-string v3, "QualifyingProperties"

    invoke-interface {p2, v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->getQualProps(Lorg/w3c/dom/NodeList;)Ly5/n;

    move-result-object v3

    invoke-interface {v3}, Ly5/n;->x()Ly5/u;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/ddf/b;

    const/16 v6, 0x15

    invoke-direct {v5, v6, v3}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly5/u;

    invoke-interface {v4}, Ly5/u;->V0()Ly5/v;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lorg/apache/poi/ddf/c;

    const/16 v7, 0x17

    invoke-direct {v6, v7, v4}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly5/v;

    const-string v5, "http://www.w3.org/2000/09/xmldsig#"

    const-string v6, "SignatureValue"

    invoke-interface {p2, v5, v6}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getRevocationDataService()Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-direct {p0, v4, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->addCertificateValues(Ly5/v;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    :cond_0
    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v9

    const-string v10, "creating XAdES-T time-stamp"

    invoke-interface {v9, v10}, La5/b;->f(Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    invoke-direct {v9}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;-><init>()V

    new-array v10, v7, [Lorg/w3c/dom/Node;

    aput-object v5, v10, v6

    invoke-direct {p0, p1, v9, v10}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createXAdESTimeStamp(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;[Lorg/w3c/dom/Node;)Ly5/w;

    move-result-object p1

    invoke-interface {v4}, Ly5/v;->t1()Ly5/w;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasRevocationDataEntries()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v9}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createValidationData(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)Lz5/a;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    if-nez v8, :cond_3

    invoke-interface {v3}, Li5/j2;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p2, p0, v7}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string p1, "TimeStampValidationData"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    move p2, v6

    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v1, "xmlns"

    const-string v3, "http://uri.etsi.org/01903/v1.4.1#"

    const-string v4, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0, v4, v1, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :cond_3
    invoke-direct {p0, v4, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->completeCertificateRefs(Ly5/v;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)Ly5/f;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object p2

    invoke-interface {v8, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;->getRevocationData(Ljava/util/List;)Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    move-result-object p2

    invoke-interface {v4}, Ly5/v;->e()Ly5/g;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->addRevocationCRL(Ly5/g;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    invoke-direct {p0, v2, v1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->addRevocationOCSP(Ly5/g;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    invoke-interface {v4}, Ly5/v;->q()Ly5/o;

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->createRevocationValues(Ly5/o;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object p0

    const-string p2, "creating XAdES-X time-stamp"

    invoke-interface {p0, p2}, La5/b;->f(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;-><init>()V

    invoke-interface {p1}, Li5/j2;->getDomNode()Lorg/w3c/dom/Node;

    throw v2

    :goto_2
    new-instance p1, Ljavax/xml/crypto/MarshalException;

    const-string/jumbo p2, "unable to create XAdES signature"

    invoke-direct {p1, p2, p0}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SignatureValue is not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
