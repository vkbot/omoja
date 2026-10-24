.class public abstract Lm5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/o0$a;
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/CharacterData;


# instance fields
.field public a:Lm5/z0;

.field public b:Lm5/e;

.field public c:Lm5/e;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I


# direct methods
.method public static a(Lm5/e;Lm5/e;Lm5/e;)Lm5/e;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, p2, :cond_1

    iput-object p1, p0, Lm5/e;->c:Lm5/e;

    iput-object p0, p1, Lm5/e;->b:Lm5/e;

    :goto_0
    move-object p0, p1

    goto :goto_2

    :cond_1
    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lm5/e;->b:Lm5/e;

    if-eq v1, p2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    iput-object v1, p1, Lm5/e;->b:Lm5/e;

    if-eqz v1, :cond_3

    iget-object p2, v0, Lm5/e;->b:Lm5/e;

    iput-object p1, p2, Lm5/e;->c:Lm5/e;

    :cond_3
    iput-object v0, p1, Lm5/e;->c:Lm5/e;

    iput-object p1, v0, Lm5/e;->b:Lm5/e;

    :goto_2
    return-object p0
.end method

.method public static c(Lm5/e;Lm5/e;)Lm5/e;
    .locals 2

    if-ne p0, p1, :cond_0

    iget-object p0, p1, Lm5/e;->b:Lm5/e;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lm5/e;->c:Lm5/e;

    iget-object v1, p1, Lm5/e;->b:Lm5/e;

    iput-object v1, v0, Lm5/e;->b:Lm5/e;

    :goto_0
    iget-object v0, p1, Lm5/e;->b:Lm5/e;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lm5/e;->c:Lm5/e;

    iput-object v1, v0, Lm5/e;->c:Lm5/e;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lm5/e;->b:Lm5/e;

    iput-object v0, p1, Lm5/e;->c:Lm5/e;

    return-object p0
.end method


# virtual methods
.method public final D()Lm5/z0;
    .locals 1

    iget-object v0, p0, Lm5/e;->a:Lm5/z0;

    if-nez v0, :cond_0

    iget-object p0, p0, Lm5/e;->d:Ljava/lang/Object;

    check-cast p0, Lm5/o0$a;

    invoke-interface {p0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm5/o0;->s(Lm5/o0$a;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final appendData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lm5/o0;->c(Ljava/lang/String;Lm5/o0$a;)V

    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lm5/e;->d:Ljava/lang/Object;

    check-cast v0, Lm5/w1;

    iget-object v1, v0, Lm5/w1;->q:Lm5/e;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lm5/w1;->r:Lm5/e;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lm5/e;->b:Lm5/e;

    goto :goto_0

    :goto_1
    return v2
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

.method public final d(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lm5/e;->a:Lm5/z0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lm5/e;->d:Ljava/lang/Object;

    check-cast v0, Lm5/o0$a;

    invoke-interface {v0}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v0

    iput-object v0, p0, Lm5/e;->a:Lm5/z0;

    :cond_0
    iput-object p3, p0, Lm5/e;->d:Ljava/lang/Object;

    iput p1, p0, Lm5/e;->e:I

    iput p2, p0, Lm5/e;->f:I

    return-void
.end method

.method public final deleteData(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lm5/o0;->d(Lm5/o0$a;II)V

    return-void
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

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

    sget-object p0, Lm5/o0;->a:Lm5/o0$f;

    return-object p0
.end method

.method public final getData()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLastChild()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLength()I
    .locals 0

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

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

    invoke-interface {p0}, Lm5/o0$a;->t()I

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
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hasChildNodes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lm5/o0;->s(Lm5/o0$a;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final insertData(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lm5/o0;->e(Lm5/o0$a;ILjava/lang/String;)V

    return-void
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

    invoke-virtual {p0}, Lm5/e;->D()Lm5/z0;

    invoke-static {p1, p2}, Lm5/o0;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final k()Lm5/h;
    .locals 1

    iget-object v0, p0, Lm5/e;->d:Ljava/lang/Object;

    instance-of v0, v0, Lm5/o0$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm5/e;->D()Lm5/z0;

    move-result-object v0

    invoke-virtual {v0}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm5/h;->V(Lm5/e;)V

    return-object v0
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

.method public final replaceData(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lm5/o0;->f(Lm5/o0$a;IILjava/lang/String;)V

    return-void
.end method

.method public final setData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lm5/o0;->w(Ljava/lang/String;Lm5/o0$a;)V

    return-void
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

.method public final substringData(II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lm5/o0;->g(Lm5/o0$a;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x()Ljavax/xml/namespace/QName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
