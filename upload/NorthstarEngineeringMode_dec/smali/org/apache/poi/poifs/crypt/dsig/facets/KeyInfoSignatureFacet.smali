.class public Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->LOG:La5/d;

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


# virtual methods
.method public postSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;)V
    .locals 9

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string/jumbo v1, "postSign"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    const-string v0, "Object"

    const-string v1, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getKeyInfoFactory()Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isIncludeKeyValue()Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newKeyValue(Ljava/security/PublicKey;)Ljavax/xml/crypto/dsig/keyinfo/KeyValue;

    move-result-object v7
    :try_end_0
    .catch Ljava/security/KeyException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "key exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isIncludeIssuerSerial()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newX509IssuerSerial(Ljava/lang/String;Ljava/math/BigInteger;)Ljavax/xml/crypto/dsig/keyinfo/X509IssuerSerial;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isIncludeEntireCertificateChain()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSigningCertificateChain()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2, v4}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newX509Data(Ljava/util/List;)Ljavax/xml/crypto/dsig/keyinfo/X509Data;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v2, v6}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->newKeyInfo(Ljava/util/List;)Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;

    move-result-object v2

    check-cast v2, Lorg/apache/jcp/xml/dsig/internal/dom/DOMKeyInfo;

    new-instance v4, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet$1;

    invoke-direct {v4, p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet$1;-><init>(Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;)V

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    new-instance v5, Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    if-nez v0, :cond_5

    invoke-direct {v5, v4, p0}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;-><init>(Ljava/security/Key;Lorg/w3c/dom/Node;)V

    goto :goto_3

    :cond_5
    invoke-direct {v5, v4, p0, v0}, Ljavax/xml/crypto/dsig/dom/DOMSignContext;-><init>(Ljava/security/Key;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    :goto_3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object p1

    new-instance v4, Lorg/apache/poi/poifs/crypt/dsig/facets/a;

    invoke-direct {v4, v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/a;-><init>(Ljavax/xml/crypto/dsig/dom/DOMSignContext;)V

    invoke-interface {p1, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p1, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {p1, p0}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v2, p1, v5}, Lorg/apache/jcp/xml/dsig/internal/dom/DOMKeyInfo;->marshal(Ljavax/xml/crypto/XMLStructure;Ljavax/xml/crypto/XMLCryptoContext;)V

    if-eqz v0, :cond_7

    const-string p0, "KeyInfo"

    invoke-interface {p2, v1, p0}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KeyInfo wasn\'t set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    return-void
.end method
