.class public Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;


# static fields
.field private static final LOG:La5/d;

.field private static final XADES_TYPE:Ljava/lang/String; = "http://uri.etsi.org/01903#SignedProperties"


# instance fields
.field private final dataObjectFormatMimeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    return-void
.end method

.method private static importNode(Lorg/w3c/dom/Document;Lorg/apache/xmlbeans/XmlObject;)Lorg/w3c/dom/Element;
    .locals 6

    const-string v0, "Id"

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Li5/p0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Li5/p0;->U()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Li5/p0;->C()Li5/p0$a;

    move-result-object v2

    iget v2, v2, Li5/p0$a;->b:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Li5/p0;->A0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-interface {p1}, Li5/p0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    const-string v3, "http://www.w3.org/2000/xmlns/"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v4, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Li5/p0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Li5/p0;->A0()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p1}, Li5/p0;->A0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :pswitch_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_0

    :pswitch_5
    invoke-interface {p1}, Li5/p0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_1
    invoke-interface {p1}, Li5/p0;->close()V

    return-object v1

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static insertXChild(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 2

    invoke-interface {p0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/p0;->P0()Li5/p0$a;

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Li5/p0;->C()Li5/p0$a;

    invoke-interface {p1, p0}, Li5/p0;->I1(Li5/p0;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz p1, :cond_0

    :try_start_4
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_7
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
.end method

.method private static synthetic lambda$addMimeTypes$0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Ly5/h;->O0:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Ly5/h;

    invoke-interface {p1}, Ly5/h;->z1()V

    invoke-interface {p1}, Ly5/h;->z()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setCertID(Ly5/d;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;ZLjava/security/cert/X509Certificate;)V
    .locals 0

    invoke-interface {p0}, Ly5/d;->o1()Li6/f;

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    const-string p2, ", "

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    :goto_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static setDigestAlgAndValue(Ly5/i;[BLorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    invoke-interface {p0}, Ly5/i;->K1()Li6/b;

    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public addCertificate(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ly5/s;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ly5/s;->T0()Ly5/c;

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no signing certificate chain available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addCommitmentType(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ly5/r;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getCommitmentType()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ly5/r;->H()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Ly5/r;->J0()Ly5/q;

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ly5/r;->w1()Ly5/q;

    :goto_0
    const/4 p0, 0x0

    throw p0
.end method

.method public addMimeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMimeTypes(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ly5/r;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->dataObjectFormatMimeTypes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ly5/r;->w1()Ly5/q;

    const/4 p0, 0x0

    throw p0
.end method

.method public addPolicy(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ly5/s;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignaturePolicyService()Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isXadesSignaturePolicyImplied()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ly5/s;->y()Ly5/p;

    throw v0

    :cond_1
    invoke-interface {p2}, Ly5/s;->y()Ly5/p;

    throw v0
.end method

.method public addSigningTime(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ly5/s;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    const-string p1, "Z"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getExecutionTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xe

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->clear(I)V

    invoke-interface {p2}, Ly5/s;->M()V

    return-void
.end method

.method public addXadesObject(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ly5/n;)Ljavax/xml/crypto/dsig/XMLObject;
    .locals 0

    invoke-static {p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->importNode(Lorg/w3c/dom/Document;Lorg/apache/xmlbeans/XmlObject;)Lorg/w3c/dom/Element;

    move-result-object p0

    new-instance p2, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {p2, p0}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2, p2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object p0

    return-object p0
.end method

.method public addXadesReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Ljavax/xml/crypto/dsig/Reference;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    const-string v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesSignatureId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "http://uri.etsi.org/01903#SignedProperties"

    invoke-static {p1, p0, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    return-object p0
.end method

.method public addXadesRole(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ly5/s;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesRole()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ly5/s;->N()Ly5/t;

    invoke-interface {p2}, Ly5/s;->G()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public createSignedProperties(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ly5/n;)Ly5/r;
    .locals 0

    invoke-interface {p2}, Ly5/n;->v1()Ly5/r;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getXadesSignatureId()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method public preSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string/jumbo v1, "preSign"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v0

    sget-object v1, Ly5/m;->Q0:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Ly5/m;

    invoke-interface {v1}, Ly5/m;->L1()Ly5/n;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    invoke-interface {v1}, Ly5/n;->N1()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->createSignedProperties(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ly5/n;)Ly5/r;

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->addXadesObject(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ly5/n;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;->addXadesReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
