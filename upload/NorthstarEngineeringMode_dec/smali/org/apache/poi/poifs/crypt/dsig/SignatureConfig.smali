.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACETS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Supplier<",
            "Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DigestMethod_SHA224:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#sha224"

.field private static final DigestMethod_SHA384:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#sha384"

.field private static final LOG:La5/d;

.field public static final SIGNATURE_TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final XMLSEC_JDK:Ljava/lang/String; = "org.jcp.xml.dsig.internal.dom.XMLDSigRI"

.field private static final XMLSEC_SANTUARIO:Ljava/lang/String; = "org.apache.jcp.xml.dsig.internal.dom.XMLDSigRI"


# instance fields
.field private allowCRLDownload:Z

.field private allowMultipleSignatures:Z

.field private canonicalizationMethod:Ljava/lang/String;

.field private commitmentType:Ljava/lang/String;

.field private final crlEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;",
            ">;"
        }
    .end annotation
.end field

.field private digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private executionTime:Ljava/util/Date;

.field private includeEntireCertificateChain:Z

.field private includeIssuerSerial:Z

.field private includeKeyValue:Z

.field private key:Ljava/security/PrivateKey;

.field private final keyStore:Ljava/security/KeyStore;

.field private final namespacePrefixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageSignatureId:Ljava/lang/String;

.field private proxyUrl:Ljava/lang/String;

.field private revocationDataService:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

.field private secureValidation:Z

.field private signatureDescription:Ljava/lang/String;

.field private signatureFacets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;",
            ">;"
        }
    .end annotation
.end field

.field private signatureImage:[B

.field private signatureImageInvalid:[B

.field private signatureImageSetupId:Lorg/apache/poi/hpsf/ClassID;

.field private signatureImageValid:[B

.field private signatureMarshalListener:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

.field private signaturePolicyService:Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

.field private signingCertificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private tspHttpClient:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;

.field private tspOldProtocol:Z

.field private tspPass:Ljava/lang/String;

.field private tspRequestPolicy:Ljava/lang/String;

.field private tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

.field private tspUrl:Ljava/lang/String;

.field private tspUser:Ljava/lang/String;

.field private tspValidator:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

.field private updateConfigOnValidate:Z

.field private uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

.field private userAgent:Ljava/lang/String;

.field private xadesCanonicalizationMethod:Ljava/lang/String;

.field private xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private xadesIssuerNameNoReverseOrder:Z

.field private xadesRole:Ljava/lang/String;

.field private xadesSignatureId:Ljava/lang/String;

.field private xadesSignaturePolicyImplied:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->LOG:La5/d;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/function/Supplier;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/h;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/i;

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/g;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/h;

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->DEFAULT_FACETS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->executionTime:Ljava/util/Date;

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    const-string v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->canonicalizationMethod:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeEntireCertificateChain:Z

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspHttpClient:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;

    const-string v1, "1.3.6.1.4.1.13762.3"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspRequestPolicy:Ljava/lang/String;

    const-string v1, "POI XmlSign Service TSP Client"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->userAgent:Ljava/lang/String;

    const-string v1, "idSignedProperties"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignatureId:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignaturePolicyImplied:Z

    const-string v1, "http://www.w3.org/2001/10/xml-exc-c14n#"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesCanonicalizationMethod:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesIssuerNameNoReverseOrder:Z

    const-string v1, "idPackageSignature"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->packageSignatureId:Ljava/lang/String;

    const-string v1, "Office OpenXML Document"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureDescription:Ljava/lang/String;

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->updateConfigOnValidate:Z

    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->allowMultipleSignatures:Z

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->secureValidation:Z

    const-string v0, "Created and approved this document"

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->commitmentType:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->allowCRLDownload:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->crlEntries:Ljava/util/List;

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->emptyKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyStore:Ljava/security/KeyStore;

    const-string p0, "http://schemas.openxmlformats.org/package/2006/digital-signature"

    const-string v0, "mdssi"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "http://uri.etsi.org/01903/v1.3.2#"

    const-string/jumbo v0, "xd"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->lambda$getCachedCertificateByPrinicipal$0(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0
.end method

.method private static emptyKeyStore()Ljava/security/KeyStore;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PKCS12"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->LOG:La5/d;

    invoke-interface {v2}, La5/d;->h()La5/b;

    move-result-object v2

    invoke-interface {v2, v1}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v1

    const-string/jumbo v2, "unable to create PKCS #12 keystore - XAdES certificate chain lookups disabled"

    invoke-interface {v1, v2}, La5/b;->f(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getDigestMethodAlgo(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 3

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "http://www.w3.org/2001/04/xmldsig-more#sha384"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "http://www.w3.org/2001/04/xmldsig-more#sha224"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "http://www.w3.org/2001/04/xmlenc#ripemd160"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "http://www.w3.org/2000/09/xmldsig#sha1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "http://www.w3.org/2001/04/xmlenc#sha512"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "http://www.w3.org/2001/04/xmlenc#sha256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Hash algorithm "

    const-string v2, " not supported for signing."

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha224:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd160:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3ba0cae8 -> :sswitch_5
        -0x3ba0c025 -> :sswitch_4
        0x3f2edfcd -> :sswitch_3
        0x4aafbe37 -> :sswitch_2
        0x78fa9bfe -> :sswitch_1
        0x78faa079 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDigestMethodUri(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/lang/String;
    .locals 3

    .line 2
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hash algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not supported for signing."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "http://www.w3.org/2001/04/xmlenc#ripemd160"

    return-object p0

    :pswitch_1
    const-string p0, "http://www.w3.org/2001/04/xmlenc#sha512"

    return-object p0

    :pswitch_2
    const-string p0, "http://www.w3.org/2001/04/xmldsig-more#sha384"

    return-object p0

    :pswitch_3
    const-string p0, "http://www.w3.org/2001/04/xmlenc#sha256"

    return-object p0

    :pswitch_4
    const-string p0, "http://www.w3.org/2001/04/xmldsig-more#sha224"

    return-object p0

    :pswitch_5
    const-string p0, "http://www.w3.org/2000/09/xmldsig#sha1"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getProviderNames()[Ljava/lang/String;
    .locals 4

    const-string v0, "jsr105Provider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "org.jcp.xml.dsig.internal.dom.XMLDSigRI"

    const-string/jumbo v2, "org.apache.jcp.xml.dsig.internal.dom.XMLDSigRI"

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private static synthetic lambda$getCachedCertificateByPrinicipal$0(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private static verifyCanonicalizationMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string p1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string p1, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string p1, "http://www.w3.org/2000/09/xmldsig#enveloped-signature"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string p1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "Unknown CanonicalizationMethod: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return-object p0

    :cond_6
    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77f2b7bb -> :sswitch_4
        -0x2ecf3309 -> :sswitch_3
        -0x20bd31cc -> :sswitch_2
        0xeac1478 -> :sswitch_1
        0x6a4e412e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addCRL(Ljava/lang/String;Ljava/lang/String;[B)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;
    .locals 1

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->crlEntries:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addCachedCertificate(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyStore:Ljava/security/KeyStore;

    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public addCachedCertificate(Ljava/lang/String;[B)V
    .locals 1

    const-string p1, "X.509"

    .line 5
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->addCachedCertificate(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public formatExecutionTime()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v1, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getExecutionTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCachedCertificateByPrinicipal(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    :cond_3
    invoke-static {v3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/poifs/crypt/dsig/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/poifs/crypt/dsig/b;

    invoke-direct {v3, p1}, Lorg/apache/poi/poifs/crypt/dsig/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_4
    return-object v1
.end method

.method public getCanonicalizationMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->canonicalizationMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getCommitmentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->commitmentType:Ljava/lang/String;

    return-object p0
.end method

.method public getCrlEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->crlEntries:Ljava/util/List;

    return-object p0
.end method

.method public getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0
.end method

.method public getDigestMethodUri()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExecutionTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->executionTime:Ljava/util/Date;

    return-object p0
.end method

.method public getKey()Ljava/security/PrivateKey;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->key:Ljava/security/PrivateKey;

    return-object p0
.end method

.method public getKeyStore()Ljava/security/KeyStore;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyStore:Ljava/security/KeyStore;

    return-object p0
.end method

.method public getNamespacePrefixes()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    return-object p0
.end method

.method public getPackageSignatureId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->packageSignatureId:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->proxyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getRevocationDataService()Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->revocationDataService:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    return-object p0
.end method

.method public getSignatureDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getSignatureFacets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->DEFAULT_FACETS:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    return-object p0
.end method

.method public getSignatureImage()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureImage:[B

    return-object p0
.end method

.method public getSignatureImageInvalid()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureImageInvalid:[B

    return-object p0
.end method

.method public getSignatureImageSetupId()Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureImageSetupId:Lorg/apache/poi/hpsf/ClassID;

    return-object p0
.end method

.method public getSignatureImageValid()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureImageValid:[B

    return-object p0
.end method

.method public getSignatureMarshalListener()Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    return-object p0
.end method

.method public getSignatureMethodUri()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hash algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not supported for signing."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "http://www.w3.org/2001/04/xmldsig-more#rsa-ripemd160"

    return-object p0

    :pswitch_1
    const-string p0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha512"

    return-object p0

    :pswitch_2
    const-string p0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha384"

    return-object p0

    :pswitch_3
    const-string p0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"

    return-object p0

    :pswitch_4
    const-string p0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha224"

    return-object p0

    :pswitch_5
    const-string p0, "http://www.w3.org/2000/09/xmldsig#rsa-sha1"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSignaturePolicyService()Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signaturePolicyService:Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

    return-object p0
.end method

.method public getSigningCertificateChain()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signingCertificateChain:Ljava/util/List;

    return-object p0
.end method

.method public getTspDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0
.end method

.method public getTspHttpClient()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspHttpClient:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;

    return-object p0
.end method

.method public getTspPass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspPass:Ljava/lang/String;

    return-object p0
.end method

.method public getTspRequestPolicy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspRequestPolicy:Ljava/lang/String;

    return-object p0
.end method

.method public getTspService()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    return-object p0
.end method

.method public getTspUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTspUser()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUser:Ljava/lang/String;

    return-object p0
.end method

.method public getTspValidator()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspValidator:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    return-object p0
.end method

.method public getUriDereferencer()Ljavax/xml/crypto/URIDereferencer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.0.0"
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    return-object p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public getXadesCanonicalizationMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesCanonicalizationMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getXadesDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0
.end method

.method public getXadesRole()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesRole:Ljava/lang/String;

    return-object p0
.end method

.method public getXadesSignatureId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignatureId:Ljava/lang/String;

    const-string v0, "idSignedProperties"

    invoke-static {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isAllowCRLDownload()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->allowCRLDownload:Z

    return p0
.end method

.method public isAllowMultipleSignatures()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->allowMultipleSignatures:Z

    return p0
.end method

.method public isIncludeEntireCertificateChain()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeEntireCertificateChain:Z

    return p0
.end method

.method public isIncludeIssuerSerial()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeIssuerSerial:Z

    return p0
.end method

.method public isIncludeKeyValue()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeKeyValue:Z

    return p0
.end method

.method public isSecureValidation()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->secureValidation:Z

    return p0
.end method

.method public isTspOldProtocol()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspOldProtocol:Z

    return p0
.end method

.method public isUpdateConfigOnValidate()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->updateConfigOnValidate:Z

    return p0
.end method

.method public isXadesIssuerNameNoReverseOrder()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesIssuerNameNoReverseOrder:Z

    return p0
.end method

.method public isXadesSignaturePolicyImplied()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignaturePolicyImplied:Z

    return p0
.end method

.method public setAllowCRLDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->allowCRLDownload:Z

    return-void
.end method

.method public setAllowMultipleSignatures(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->allowMultipleSignatures:Z

    return-void
.end method

.method public setCanonicalizationMethod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->verifyCanonicalizationMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->canonicalizationMethod:Ljava/lang/String;

    return-void
.end method

.method public setCommitmentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->commitmentType:Ljava/lang/String;

    return-void
.end method

.method public setDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setExecutionTime(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    sget-object v1, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->executionTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->LOG:La5/d;

    .line 6
    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string v0, "Illegal execution time: {}. Must be formatted as yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-interface {p0, p1, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setExecutionTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->executionTime:Ljava/util/Date;

    return-void
.end method

.method public setIncludeEntireCertificateChain(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeEntireCertificateChain:Z

    return-void
.end method

.method public setIncludeIssuerSerial(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeIssuerSerial:Z

    return-void
.end method

.method public setIncludeKeyValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeKeyValue:Z

    return-void
.end method

.method public setKey(Ljava/security/PrivateKey;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->key:Ljava/security/PrivateKey;

    return-void
.end method

.method public setNamespacePrefixes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setPackageSignatureId(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "xmldsig-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->packageSignatureId:Ljava/lang/String;

    return-void
.end method

.method public setProxyUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->proxyUrl:Ljava/lang/String;

    return-void
.end method

.method public setRevocationDataService(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->revocationDataService:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    return-void
.end method

.method public setSecureValidation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->secureValidation:Z

    return-void
.end method

.method public setSignatureDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureDescription:Ljava/lang/String;

    return-void
.end method

.method public setSignatureFacets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    return-void
.end method

.method public setSignatureImage([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureImage:[B

    return-void
.end method

.method public setSignatureImageInvalid([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureImageInvalid:[B

    return-void
.end method

.method public setSignatureImageSetupId(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureImageSetupId:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public setSignatureImageValid([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureImageValid:[B

    return-void
.end method

.method public setSignatureMarshalListener(Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    return-void
.end method

.method public setSignatureMethodFromUri(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "http://www.w3.org/2000/09/xmldsig#rsa-sha1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha512"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha384"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha224"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "http://www.w3.org/2001/04/xmldsig-more#rsa-ripemd160"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "Hash algorithm "

    const-string v1, " not supported."

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    goto :goto_1

    :pswitch_1
    sget-object p1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    goto :goto_1

    :pswitch_2
    sget-object p1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    goto :goto_1

    :pswitch_3
    sget-object p1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    goto :goto_1

    :pswitch_4
    sget-object p1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha224:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    goto :goto_1

    :pswitch_5
    sget-object p1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd160:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33f8f37b -> :sswitch_5
        -0x29b2c6d5 -> :sswitch_4
        -0x29b2c676 -> :sswitch_3
        -0x29b2c25a -> :sswitch_2
        -0x29b2bbb3 -> :sswitch_1
        0x27f10b3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSignaturePolicyService(Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signaturePolicyService:Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

    return-void
.end method

.method public setSigningCertificateChain(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signingCertificateChain:Ljava/util/List;

    return-void
.end method

.method public setTspDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setTspHttpClient(Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspHttpClient:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;

    return-void
.end method

.method public setTspOldProtocol(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspOldProtocol:Z

    return-void
.end method

.method public setTspPass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspPass:Ljava/lang/String;

    return-void
.end method

.method public setTspRequestPolicy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspRequestPolicy:Ljava/lang/String;

    return-void
.end method

.method public setTspService(Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    return-void
.end method

.method public setTspUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUrl:Ljava/lang/String;

    return-void
.end method

.method public setTspUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUser:Ljava/lang/String;

    return-void
.end method

.method public setTspValidator(Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspValidator:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    return-void
.end method

.method public setUpdateConfigOnValidate(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->updateConfigOnValidate:Z

    return-void
.end method

.method public setUriDereferencer(Ljavax/xml/crypto/URIDereferencer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.0.0"
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setXadesCanonicalizationMethod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->verifyCanonicalizationMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesCanonicalizationMethod:Ljava/lang/String;

    return-void
.end method

.method public setXadesDigestAlgo(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodAlgo(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setXadesDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setXadesIssuerNameNoReverseOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesIssuerNameNoReverseOrder:Z

    return-void
.end method

.method public setXadesRole(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesRole:Ljava/lang/String;

    return-void
.end method

.method public setXadesSignatureId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignatureId:Ljava/lang/String;

    return-void
.end method

.method public setXadesSignaturePolicyImplied(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignaturePolicyImplied:Z

    return-void
.end method
