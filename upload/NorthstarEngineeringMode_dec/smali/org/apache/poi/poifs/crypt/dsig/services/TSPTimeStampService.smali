.class public Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->lambda$null$7(Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/bouncycastle/asn1/x509/DistributionPointName;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->lambda$retrieveCRL$4(Lorg/bouncycastle/asn1/x509/DistributionPointName;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/util/List;Ljava/security/cert/X509Certificate;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->lambda$retrieveCRL$9(Ljava/util/List;Ljava/security/cert/X509Certificate;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->lambda$null$8(Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->lambda$timeStamp$0(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/bouncycastle/asn1/x509/GeneralName;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->lambda$retrieveCRL$5(Lorg/bouncycastle/asn1/x509/GeneralName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lorg/bouncycastle/asn1/x509/DistributionPoint;)Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/cert/X509CertificateHolder;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->lambda$timeStamp$1(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/cert/X509CertificateHolder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lorg/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->lambda$retrieveCRL$6(Lorg/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/bouncycastle/asn1/x509/DistributionPointName;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->lambda$retrieveCRL$3(Lorg/bouncycastle/asn1/x509/DistributionPointName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k()Ljava/lang/IllegalStateException;
    .locals 1

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->lambda$timeStamp$2()Ljava/lang/IllegalStateException;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$null$7(Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;)Z
    .locals 0

    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->matchCRLbyUrl(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$null$8(Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;)Z
    .locals 0

    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->matchCRLbyCN(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$retrieveCRL$3(Lorg/bouncycastle/asn1/x509/DistributionPointName;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$retrieveCRL$4(Lorg/bouncycastle/asn1/x509/DistributionPointName;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$retrieveCRL$5(Lorg/bouncycastle/asn1/x509/GeneralName;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$retrieveCRL$6(Lorg/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$retrieveCRL$9(Ljava/util/List;Ljava/security/cert/X509Certificate;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/services/a;

    invoke-direct {v1, p0, p2, p4}, Lorg/apache/poi/poifs/crypt/dsig/services/a;-><init>(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/services/b;

    invoke-direct {v1, p0, p2, p4}, Lorg/apache/poi/poifs/crypt/dsig/services/b;-><init>(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3, p4}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->downloadCRL(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$timeStamp$0(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$timeStamp$1(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/cert/X509CertificateHolder;)Z
    .locals 1

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$timeStamp$2()Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TSP response token has no signer certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public downloadCRL(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isAllowCRLDownload()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspHttpClient()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;->init(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    invoke-interface {p0, v0, v0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;->get(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;->isOK()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_1
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;->getResponseBytes()[B

    move-result-object p0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->addCRL(Ljava/lang/String;Ljava/lang/String;[B)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "CRL download failed from {}"

    invoke-interface {p0, p2, p1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :catch_1
    return-object v0
.end method

.method public mapDigestAlgoToOID(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unsupported digest algo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    :cond_2
    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    :cond_3
    sget-object p0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public matchCRLbyCN(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;->getCertCN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public matchCRLbyUrl(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;->getCrlURL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public retrieveCRL(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getCrlEntries()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/cert/jcajce/JcaX509ExtensionUtils;->parseExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg5/l;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lg5/l;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lo1/c;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lo1/c;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lh4/g;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lh4/g;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg5/l;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lg5/l;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lo1/c;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lo1/c;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/poifs/crypt/dsig/services/c;

    invoke-direct {v2, p0, v0, p2, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/c;-><init>(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/util/List;Ljava/security/cert/X509Certificate;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lo1/c;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lo1/c;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public timeStamp(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;[BLorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)[B
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    new-instance v1, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setCertReq(Z)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspRequestPolicy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setReqPolicy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->mapDigestAlgoToOID(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspHttpClient()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;->init(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isTspOldProtocol()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "application/timestamp-request"

    goto :goto_0

    :cond_1
    const-string v1, "application/timestamp-query"

    :goto_0
    invoke-interface {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;->setContentTypeIn(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/TimeStampRequest;->getEncoded()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;->post(Ljava/lang/String;[B)Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;->isOK()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;->getResponseBytes()[B

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_9

    new-instance v1, Lorg/bouncycastle/tsp/TimeStampResponse;

    invoke-direct {v1, v0}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>([B)V

    invoke-virtual {v1, p2}, Lorg/bouncycastle/tsp/TimeStampResponse;->validate(Lorg/bouncycastle/tsp/TimeStampRequest;)V

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result p2

    if-eqz p2, :cond_3

    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p1

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result p2

    invoke-static {p2}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo p3, "status: {}"

    invoke-interface {p1, p2, p3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p1

    const-string/jumbo p2, "status string: {}"

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getFailInfo()Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    move-result p3

    invoke-static {p3}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "fail info int value: {}"

    invoke-interface {p2, p3, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x100

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_2

    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p0

    const-string/jumbo p1, "unaccepted policy"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "timestamp response status != 0: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/TimeStampToken;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerId;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:La5/d;

    invoke-interface {v2}, La5/d;->e()La5/b;

    move-result-object v3

    const-string/jumbo v4, "signer cert serial number: {}"

    invoke-interface {v3, v1, v4}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, La5/d;->e()La5/b;

    move-result-object v2

    const-string/jumbo v3, "signer cert issuer: {}"

    invoke-interface {v2, v0, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/TimeStampToken;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/poifs/crypt/dsig/services/d;

    invoke-direct {v4, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/services/d;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/g;

    const/16 v3, 0x16

    invoke-direct {v1, v3}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    const-string v3, "BC"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    :cond_4
    invoke-virtual {p3, v3}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->addCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cert/X509CertificateHolder;

    if-eqz v3, :cond_6

    invoke-virtual {v1, v3}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getCachedCertificateByPrinicipal(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {p0, p1, v3}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->retrieveCRL(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lx1/c;

    const/4 v6, 0x4

    invoke-direct {v5, v6, p3}, Lx1/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_7
    if-nez v3, :cond_4

    :goto_2
    new-instance p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;

    new-instance v1, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;-><init>()V

    new-instance v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    new-instance v3, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v3}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    new-instance v4, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;

    invoke-direct {v4}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;-><init>()V

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;-><init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/bouncycastle/tsp/TimeStampToken;->validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspValidator()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspValidator()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    move-result-object p0

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->getX509chain()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;->validate(Ljava/util/List;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    :cond_8
    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p0

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object p1

    const-string/jumbo p3, "time-stamp token time: {}"

    invoke-interface {p0, p1, p3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Content-Length is zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Requesting timestamp data failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
