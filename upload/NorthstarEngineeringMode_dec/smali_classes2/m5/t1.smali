.class public final Lm5/t1;
.super Ll5/k;
.source "SourceFile"

# interfaces
.implements Lm5/o0$a;
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field public a:Lm5/s1;


# virtual methods
.method public final D()Lm5/z0;
    .locals 0

    iget-object p0, p0, Lm5/t1;->a:Lm5/s1;

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    return-object p0
.end method

.method public final adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm5/o0;->s(Lm5/o0$a;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lm5/e0;

    invoke-direct {v0, p1}, Lm5/e0;-><init>(Z)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 0

    invoke-static {p0, p1}, Lm5/o0;->j(Lm5/o0$a;Lorg/w3c/dom/Node;)S

    move-result p0

    return p0
.end method

.method public final createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2

    new-instance v0, Lm5/h0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lm5/h0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public final createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2

    new-instance v0, Lm5/j0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lm5/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public final createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 0

    invoke-static {p1, p0}, Lm5/o0;->E(Ljava/lang/String;Lm5/o0$a;)Lm5/d;

    move-result-object p0

    return-object p0
.end method

.method public final createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 2

    new-instance v0, Lm5/l0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lm5/l0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Comment;

    return-object p0
.end method

.method public final createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/c0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/c0;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/DocumentFragment;

    return-object p0
.end method

.method public final createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    new-instance v0, Lorg/apache/poi/openxml4j/opc/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/openxml4j/opc/f;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public final createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    new-instance v0, Lm5/m0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lm5/m0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public final createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 2

    new-instance v0, Lm5/m0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lm5/m0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    return-object p0
.end method

.method public final createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 0

    invoke-static {p1, p0}, Lm5/o0;->H(Ljava/lang/String;Lm5/o0$a;)Lm5/u1;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBaseURI()Ljava/lang/String;
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    return-object p0
.end method

.method public final getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/DocumentType;

    return-object p0
.end method

.method public final getDocumentElement()Lorg/w3c/dom/Element;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/c0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/c0;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public final getDocumentURI()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    new-instance v0, Lm5/h0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lm5/h0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public final getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    new-instance v0, Lm5/j0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lm5/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public final getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final getFirstChild()Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lm5/o0;->k(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-virtual {p0}, Lm5/t1;->D()Lm5/z0;

    move-result-object p0

    return-object p0
.end method

.method public final getInputEncoding()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final getLength()I
    .locals 0

    invoke-static {p0}, Lm5/o0;->h(Lm5/o0$a;)I

    move-result p0

    return p0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->l(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->m(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lm5/o0;->n(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeName()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->o(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeType()S
    .locals 0

    const/16 p0, 0x9

    int-to-short p0, p0

    return p0
.end method

.method public final getNodeValue()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/c0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/c0;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public final getParentNode()Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lm5/o0;->q(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->r(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->X(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final getStrictErrorChecking()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getTextContent()Ljava/lang/String;
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final getXmlEncoding()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getXmlStandalone()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getXmlVersion()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasAttributes()Z
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/x;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final hasChildNodes()Z
    .locals 1

    instance-of v0, p0, Lm5/w1;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lm5/o0;->k(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lm5/n0;

    invoke-direct {v0, p1, p2}, Lm5/n0;-><init>(Lorg/w3c/dom/Node;Z)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lm5/o0;->s(Lm5/o0$a;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final isDefaultNamespace(Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    invoke-static {p0, p1}, Lm5/o0;->t(Lm5/o0$a;Lorg/w3c/dom/Node;)Z

    move-result p0

    return p0
.end method

.method public final isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lm5/t1;->a:Lm5/s1;

    iget-object p0, p0, Lm5/w1;->a:Lm5/z0;

    invoke-static {p1, p2}, Lm5/o0;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final item(I)Lorg/w3c/dom/Node;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lm5/o0;->k(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lm5/i0;

    invoke-direct {v0, p1}, Lm5/i0;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->X(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    :goto_0
    return-object p0
.end method

.method public final k()Lm5/h;
    .locals 0

    iget-object p0, p0, Lm5/t1;->a:Lm5/s1;

    invoke-virtual {p0}, Lm5/w1;->k()Lm5/h;

    move-result-object p0

    return-object p0
.end method

.method public final lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final normalize()V
    .locals 2

    new-instance v0, Lx1/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lx1/b;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->Y(Ljava/util/function/Consumer;Lm5/o0$a;)V

    return-void
.end method

.method public final normalizeDocument()V
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lm5/o0;->u(Lm5/o0$a;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lm5/o0;->v(Lm5/o0$a;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final setDocumentURI(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setNodeValue(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lm5/o0;->w(Ljava/lang/String;Lm5/o0$a;)V

    return-void
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lx1/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lx1/c;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->Y(Ljava/util/function/Consumer;Lm5/o0$a;)V

    return-void
.end method

.method public final setStrictErrorChecking(Z)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setTextContent(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final setXmlStandalone(Z)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setXmlVersion(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final x()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lm5/t1;->a:Lm5/s1;

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    return-object p0
.end method
