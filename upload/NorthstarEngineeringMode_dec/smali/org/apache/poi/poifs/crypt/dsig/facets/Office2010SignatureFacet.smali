.class public Lorg/apache/poi/poifs/crypt/dsig/facets/Office2010SignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;)V
    .locals 4

    const-string p0, "http://uri.etsi.org/01903/v1.3.2#"

    const-string p1, "QualifyingProperties"

    invoke-interface {p2, p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :try_start_0
    sget-object p1, Ly5/n;->S0:Lorg/apache/xmlbeans/impl/schema/b;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {p1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/b;->h(Lorg/w3c/dom/Node;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Ly5/n;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Ly5/n;->x()Ly5/u;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ly5/n;->d()Ly5/u;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ly5/u;->V0()Ly5/v;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ly5/u;->j()Ly5/v;

    :cond_1
    invoke-interface {p1}, Li5/j2;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/MarshalException;

    invoke-direct {p1, p0}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljavax/xml/crypto/MarshalException;

    const-string p1, "no XAdES-BES extension present"

    invoke-direct {p0, p1}, Ljavax/xml/crypto/MarshalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
