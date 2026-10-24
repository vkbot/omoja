.class public abstract Lm5/b1;
.super Lm5/w1;
.source "SourceFile"

# interfaces
.implements Lm5/o0$a;
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/NodeList;


# direct methods
.method public constructor <init>(Lm5/z0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/w1;->a:Lm5/z0;

    shl-int/lit8 p1, p3, 0x4

    add-int/2addr p1, p2

    iput p1, p0, Lm5/w1;->e:I

    return-void
.end method


# virtual methods
.method public final appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm5/o0;->s(Lm5/o0$a;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public c0()Lm5/o0$a;
    .locals 0

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

.method public e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
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

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    return-object p0
.end method

.method public final getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lm5/o0;->k(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
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

.method public getLength()I
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

.method public getNextSibling()Lorg/w3c/dom/Node;
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

    invoke-virtual {p0}, Lm5/w1;->t()I

    move-result p0

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
    .locals 0

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

.method public final removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lm5/o0;->u(Lm5/o0$a;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lm5/o0;->v(Lm5/o0$a;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
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
