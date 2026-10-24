.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;,
        Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private keyInfoFactory:Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

.field private opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private provider:Ljava/security/Provider;

.field private signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

.field private signatureFactory:Ljavax/xml/crypto/dsig/XMLSignatureFactory;

.field private uriDereferencer:Ljavax/xml/crypto/URIDereferencer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljavax/xml/crypto/dsig/dom/DOMSignContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/xml/crypto/dom/DOMCryptoContext;->putNamespacePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object p0
.end method

.method public static synthetic access$100()La5/d;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:La5/d;

    return-object v0
.end method

.method public static synthetic b(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->lambda$getSignatureParts$0()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->lambda$writeDocument$2(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getDigestStream(Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/security/PrivateKey;)Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;
    .locals 2

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/security/PrivateKey;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/security/PrivateKey;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getDsigElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    const-string p0, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {p1, p0, p2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_0
    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "not found"

    goto :goto_0

    :cond_1
    const-string p0, "multiple times"

    :goto_0
    const-string v0, "Signature element \'{}\' was {}"

    invoke-interface {p1, p2, v0, p0}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getSignatureParts$0()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePartIterator;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;)V

    return-object v0
.end method

.method private synthetic lambda$registerEventListener$1(Lorg/w3c/dom/events/EventTarget;[Lorg/w3c/dom/events/EventListener;Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;Lorg/w3c/dom/Document;Lorg/w3c/dom/events/Event;)V
    .locals 2

    instance-of v0, p5, Lorg/w3c/dom/events/MutationEvent;

    if-eqz v0, :cond_0

    invoke-interface {p5}, Lorg/w3c/dom/events/Event;->getTarget()Lorg/w3c/dom/events/EventTarget;

    move-result-object p5

    instance-of p5, p5, Lorg/w3c/dom/Document;

    if-eqz p5, :cond_0

    const/4 p5, 0x0

    aget-object v0, p2, p5

    const-string v1, "DOMSubtreeModified"

    invoke-interface {p1, v1, v0, p5}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    aget-object v0, p2, p5

    invoke-interface {p3, p0, p4, p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->handleElement(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Lorg/w3c/dom/events/EventTarget;Lorg/w3c/dom/events/EventListener;)V

    aget-object p0, p2, p5

    invoke-interface {p1, v1, p0, p5}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$writeDocument$2(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public confirmSignature()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->initXmlProvider()V

    invoke-static {}, Lorg/apache/poi/ooxml/util/DocumentHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->createXMLSignContext(Lorg/w3c/dom/Document;)Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->preSign(Ljavax/xml/crypto/dsig/dom/DOMSignContext;)Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signDigest(Ljavax/xml/crypto/dsig/dom/DOMSignContext;Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->postSign(Ljavax/xml/crypto/dsig/dom/DOMSignContext;Ljava/lang/String;)V

    return-void
.end method

.method public createXMLSignContext(Lorg/w3c/dom/Document;)Ljavax/xml/crypto/dsig/dom/DOMSignContext;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->initXmlProvider()V

    new-instance v0, Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getKey()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;-><init>(Ljava/security/Key;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getKeyInfoFactory()Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->keyInfoFactory:Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    return-object p0
.end method

.method public getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object p0
.end method

.method public getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-object p0
.end method

.method public getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureFactory:Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    return-object p0
.end method

.method public getSignatureParts()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->initXmlProvider()V

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/c;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/c;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V

    return-object v0
.end method

.method public getUriDereferencer()Ljavax/xml/crypto/URIDereferencer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    return-object p0
.end method

.method public initXmlProvider()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->provider:Ljava/security/Provider;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;->getInstance()Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;->findProvider()Ljava/security/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->provider:Ljava/security/Provider;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureFactory:Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    const-string v1, "DOM"

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->provider:Ljava/security/Provider;

    invoke-static {v1, v0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureFactory:Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->keyInfoFactory:Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->provider:Ljava/security/Provider;

    invoke-static {v1, v0}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->keyInfoFactory:Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    instance-of v1, v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;->setSignatureInfo(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V

    :cond_4
    return-void
.end method

.method public postSign(Ljavax/xml/crypto/dsig/dom/DOMSignContext;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string/jumbo v1, "postSign"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;->getParent()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Document;

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "Id"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "SignatureValue"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getDsigElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFacets()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->postSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->writeDocument(Lorg/w3c/dom/Document;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "preSign has to be called before postSign"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ds:Signature not found for @Id: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public preSign(Ljavax/xml/crypto/dsig/dom/DOMSignContext;)Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;
    .locals 9

    invoke-virtual {p1}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;->getParent()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->registerEventListener(Lorg/w3c/dom/Document;)V

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;->setURIDereferencer(Ljavax/xml/crypto/URIDereferencer;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/poifs/crypt/dsig/d;

    invoke-direct {v2, p1}, Lorg/apache/poi/poifs/crypt/dsig/d;-><init>(Ljavax/xml/crypto/dsig/dom/DOMSignContext;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;->setDefaultNamespacePrefix(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureFacets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    sget-object v4, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:La5/d;

    invoke-interface {v4}, La5/d;->e()La5/b;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "invoking signature facet: {}"

    invoke-interface {v4, v5, v6}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p0, v0, v1, v8}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->preSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureFactory:Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureMethodUri()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureMethod(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/SignatureMethodParameterSpec;)Ljavax/xml/crypto/dsig/SignatureMethod;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureFactory:Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getCanonicalizationMethod()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljavax/xml/crypto/dsig/spec/C14NMethodParameterSpec;

    invoke-virtual {v2, v4, v3}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newCanonicalizationMethod(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/C14NMethodParameterSpec;)Ljavax/xml/crypto/dsig/CanonicalizationMethod;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureFactory:Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    invoke-virtual {v3, v2, v0, v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignedInfo(Ljavax/xml/crypto/dsig/CanonicalizationMethod;Ljavax/xml/crypto/dsig/SignatureMethod;Ljava/util/List;)Ljavax/xml/crypto/dsig/SignedInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-signature-value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureFactory:Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    const/4 v4, 0x0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v6

    move-object v3, v0

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLSignature(Ljavax/xml/crypto/dsig/SignedInfo;Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLSignature;

    move-result-object p0

    invoke-interface {p0, p1}, Ljavax/xml/crypto/dsig/XMLSignature;->sign(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/crypto/dsig/XMLObject;

    sget-object v2, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:La5/d;

    invoke-interface {v2}, La5/d;->e()La5/b;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "object java type: {}"

    invoke-interface {v2, v3, v4}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljavax/xml/crypto/dsig/XMLObject;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/crypto/XMLStructure;

    sget-object v3, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:La5/d;

    invoke-interface {v3}, La5/d;->e()La5/b;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "object content java type: {}"

    invoke-interface {v3, v4, v5}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v2, Ljavax/xml/crypto/dsig/Manifest;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    check-cast v2, Ljavax/xml/crypto/dsig/Manifest;

    invoke-interface {v2}, Ljavax/xml/crypto/dsig/Manifest;->getReferences()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/crypto/dsig/Reference;

    invoke-interface {v3}, Ljavax/xml/crypto/dsig/Reference;->getDigestValue()[B

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    check-cast v3, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;

    invoke-virtual {v3, p1}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;->digest(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljavax/xml/crypto/dsig/SignedInfo;->getReferences()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/crypto/dsig/Reference;

    check-cast v1, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;

    invoke-virtual {v1}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;->getDigestValue()[B

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1, p1}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;->digest(Ljavax/xml/crypto/dsig/XMLSignContext;)V

    goto :goto_3

    :cond_8
    check-cast v0, Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    invoke-direct {p1, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public registerEventListener(Lorg/w3c/dom/Document;)V
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureMarshalListener()Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/w3c/dom/events/EventListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    check-cast p1, Lorg/w3c/dom/events/EventTarget;

    new-instance v2, Lorg/apache/poi/poifs/crypt/dsig/e;

    invoke-direct {v2, p0}, Lorg/apache/poi/poifs/crypt/dsig/e;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;)V

    aput-object v2, v0, v1

    const-string p0, "DOMSubtreeModified"

    aget-object v0, v0, v1

    invoke-interface {p1, p0, v0, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public setKeyInfoFactory(Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->keyInfoFactory:Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    return-void
.end method

.method public setOpcPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-void
.end method

.method public setProvider(Ljava/security/Provider;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->provider:Ljava/security/Provider;

    return-void
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method

.method public setSignatureFactory(Ljavax/xml/crypto/dsig/XMLSignatureFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureFactory:Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    return-void
.end method

.method public setUriDereferencer(Ljavax/xml/crypto/URIDereferencer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    return-void
.end method

.method public signDigest(Ljavax/xml/crypto/dsig/dom/DOMSignContext;Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->initXmlProvider()V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getKey()Ljava/security/PrivateKey;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    iget v2, v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    const/16 v3, 0x4c

    if-le v2, v3, :cond_1

    invoke-static {}, Lorg/apache/xml/security/utils/XMLUtils;->ignoreLineBreaks()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The hash size of the chosen hash algorithm ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    const-string v0, " bytes), will motivate XmlSec to add linebreaks to the generated digest, which results in an invalid signature (... at least for Office) - please persuade it otherwise by adding \'-Dorg.apache.xml.security.ignoreLineBreaks=true\' to the JVM system properties."

    invoke-static {p1, p2, v0}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v1, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getDigestStream(Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/security/PrivateKey;)Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/crypto/dsig/TransformException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->init()V

    invoke-virtual {p1}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;->getParent()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    const-string v2, "SignedInfo"

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getDsigElement(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    new-instance v1, Lorg/apache/jcp/xml/dsig/internal/dom/DOMSubTreeData;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMSubTreeData;-><init>(Lorg/w3c/dom/Node;Z)V

    invoke-virtual {p2}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMSignedInfo;->getCanonicalizationMethod()Ljavax/xml/crypto/dsig/CanonicalizationMethod;

    move-result-object p0

    invoke-interface {p0, v1, p1, v0}, Ljavax/xml/crypto/dsig/CanonicalizationMethod;->transform(Ljavax/xml/crypto/Data;Ljavax/xml/crypto/XMLCryptoContext;Ljava/io/OutputStream;)Ljavax/xml/crypto/Data;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->sign()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/crypto/dsig/TransformException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/crypto/dsig/TransformException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public verifySignature()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->initXmlProvider()V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureParts()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->validate()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeDocument(Lorg/w3c/dom/Document;)V
    .locals 11

    new-instance v0, Li5/z1;

    invoke-direct {v0}, Li5/z1;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/poifs/crypt/dsig/m;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lorg/apache/poi/poifs/crypt/dsig/m;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    sget-object v2, Li5/z1$a;->e1:Li5/z1$a;

    iget-object v3, v0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Li5/z1$a;->c1:Li5/z1$a;

    invoke-virtual {v0, v1, v4}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->e()La5/b;

    move-result-object v1

    const-string/jumbo v2, "output signed Office OpenXML document"

    invoke-interface {v1, v2}, La5/b;->f(Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;->ORIGIN_SIGS:Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v3, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v6, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v6, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;->SIG:Lorg/apache/poi/poifs/crypt/dsig/DSigRelation;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getUnusedPartIndex(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isAllowMultipleSignatures()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v5

    const/4 v6, 0x2

    :goto_1
    if-ge v6, v2, :cond_4

    invoke-virtual {v1, v6}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v3, v9}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->removeRelationship(Ljava/lang/String;)V

    :cond_2
    iget-object v8, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v8, v7}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v4, v2

    :cond_4
    invoke-virtual {v1, v4}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v4, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->opcPackage:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    sget-object p0, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, p0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clear()V

    :goto_2
    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Li6/c;->u0:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, p1, v2}, Lorg/apache/xmlbeans/impl/schema/b;->h(Lorg/w3c/dom/Node;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Li6/c;

    invoke-interface {p1, p0, v0}, Li5/j2;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_6

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_7

    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    new-instance p1, Ljavax/xml/crypto/MarshalException;

    const-string v0, "Unable to write signature document"

    invoke-direct {p1, v0, p0}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
