.class public Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;
    }
.end annotation


# static fields
.field private static final LOG:La5/d;

.field private static final XMLSEC_VALIDATE_MANIFEST:Ljava/lang/String; = "org.jcp.xml.dsig.validateManifests"

.field private static final XMLSEC_VALIDATE_SECURE:Ljava/lang/String; = "org.apache.jcp.xml.dsig.secureValidation"


# instance fields
.field private certChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final signatureInfo:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

.field private final signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private signer:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signatureInfo:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;)Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signatureInfo:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    return-object p0
.end method

.method private extractConfig(Lorg/w3c/dom/Document;Ljavax/xml/crypto/dsig/XMLSignature;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signatureInfo:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isUpdateConfigOnValidate()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->certChain:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setSigningCertificateChain(Ljava/util/List;)V

    invoke-interface {p2}, Ljavax/xml/crypto/dsig/XMLSignature;->getSignedInfo()Ljavax/xml/crypto/dsig/SignedInfo;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/crypto/dsig/SignedInfo;->getSignatureMethod()Ljavax/xml/crypto/dsig/SignatureMethod;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/crypto/dsig/SignatureMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setSignatureMethodFromUri(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/poi/ooxml/util/XPathHelper;->getFactory()Ljavax/xml/xpath/XPathFactory;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object p2

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$1;)V

    invoke-interface {p2, v1}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/j;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/poifs/crypt/dsig/j;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;I)V

    const-string v3, "//mdssi:SignatureTime/mdssi:Value"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/k;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/poifs/crypt/dsig/k;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;I)V

    const-string v3, "//xd:ClaimedRole"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/l;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/poifs/crypt/dsig/l;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;I)V

    const-string v2, "//dsss:SignatureComments"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/j;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/poifs/crypt/dsig/j;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;I)V

    const-string v3, "//xd:QualifyingProperties//xd:SignedSignatureProperties//ds:DigestMethod/@Algorithm"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/k;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/poifs/crypt/dsig/k;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;I)V

    const-string v3, "//ds:CanonicalizationMethod"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/l;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/poifs/crypt/dsig/l;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;I)V

    const-string v0, "//xd:CommitmentTypeId/xd:Description"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v1

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {v1, p1, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCertChain()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->certChain:Ljava/util/List;

    return-object p0
.end method

.method public getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object p0
.end method

.method public getSignatureDocument()Li6/c;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    sget-object v0, Li6/c;->u0:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p0, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Li6/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getSigner()Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signer:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public validate()Z
    .locals 8

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;-><init>()V

    invoke-static {}, Lorg/apache/poi/ooxml/util/XPathHelper;->getFactory()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$1;)V

    invoke-interface {v1, v2}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signaturePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/crypto/MarshalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/crypto/dsig/XMLSignatureException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v2}, Lorg/apache/poi/ooxml/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :catch_2
    move-exception p0

    goto/16 :goto_5

    :catch_3
    move-exception p0

    goto/16 :goto_6

    :catch_4
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    const-string v2, "//*[@Id]"

    invoke-interface {v1, v2}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v1

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v3, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/NodeList;

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v6, "Id"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;

    invoke-direct {v1, v0, v3}, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;-><init>(Ljavax/xml/crypto/KeySelector;Lorg/w3c/dom/Node;)V

    const-string/jumbo v2, "org.jcp.xml.dsig.validateManifests"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4}, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "org.apache.jcp.xml.dsig.secureValidation"

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signatureInfo:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isSecureValidation()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signatureInfo:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getUriDereferencer()Ljavax/xml/crypto/URIDereferencer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/crypto/dsig/dom/DOMValidateContext;->setURIDereferencer(Ljavax/xml/crypto/URIDereferencer;)V

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signatureInfo:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->unmarshalXMLSignature(Ljavax/xml/crypto/dsig/XMLValidateContext;)Ljavax/xml/crypto/dsig/XMLSignature;

    move-result-object v2

    invoke-interface {v2, v1}, Ljavax/xml/crypto/dsig/XMLSignature;->validate(Ljavax/xml/crypto/dsig/XMLValidateContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->getSigner()Ljava/security/cert/X509Certificate;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->signer:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->getCertChain()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->certChain:Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->extractConfig(Lorg/w3c/dom/Document;Ljavax/xml/crypto/dsig/XMLSignature;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/crypto/MarshalException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/crypto/dsig/XMLSignatureException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/crypto/MarshalException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/crypto/dsig/XMLSignatureException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->h()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "error in validating the signature"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->h()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "error in unmarshalling the signature"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_5
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->h()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "error in searching document with xpath expression"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_6
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->h()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "error in parsing document"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_7
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->h()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "error in reading document"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
