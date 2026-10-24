.class public Lm5/r0;
.super Lm5/a1;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Element;


# instance fields
.field public u:Lm5/q0;


# direct methods
.method public constructor <init>(Lm5/z0;Ljavax/xml/namespace/QName;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lm5/a1;-><init>(Lm5/z0;II)V

    iput-object p2, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public C0(Lm5/z0;)Lm5/w1;
    .locals 1

    new-instance v0, Lm5/r0;

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p0}, Lm5/r0;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lm5/k0;

    invoke-direct {v0, p1, p0}, Lm5/k0;-><init>(Ljava/lang/String;Lm5/o0$a;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lm5/j0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lm5/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1

    new-instance v0, Lm5/k0;

    invoke-direct {v0, p1, p0}, Lm5/k0;-><init>(Ljava/lang/String;Lm5/o0$a;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public final getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2

    new-instance v0, Lm5/j0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lm5/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public final getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    iget-object v0, p0, Lm5/r0;->u:Lm5/q0;

    if-nez v0, :cond_0

    new-instance v0, Lm5/q0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lm5/q0;->a:Lm5/r0;

    iput-object v0, p0, Lm5/r0;->u:Lm5/q0;

    :cond_0
    iget-object p0, p0, Lm5/r0;->u:Lm5/q0;

    return-object p0
.end method

.method public final getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    new-instance v0, Lm5/h0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lm5/h0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public final getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    new-instance v0, Lm5/m0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lm5/m0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public final getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getTagName()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->o(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasAttribute(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lm5/k0;

    invoke-direct {v0, p1, p0}, Lm5/k0;-><init>(Ljava/lang/String;Lm5/o0$a;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lm5/j0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lm5/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lm5/l0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lm5/l0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lm5/o0$m; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lm5/j0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lm5/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lm5/o0$m; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lm5/l0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lm5/l0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0

    :cond_0
    new-instance p0, Lm5/o0$m;

    const-string p1, "Attribute to remove does not belong to this element"

    invoke-direct {p0, p1}, Lm5/o0$m;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lm5/o0$m;

    const-string p1, "Attribute to remove is null"

    invoke-direct {p0, p1}, Lm5/o0$m;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lt0/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2}, Lt0/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->Y(Ljava/util/function/Consumer;Lm5/o0$a;)V

    return-void
.end method

.method public final setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1, p3}, Lorg/apache/poi/hssf/usermodel/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->Y(Ljava/util/function/Consumer;Lm5/o0$a;)V

    return-void
.end method

.method public final setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lm5/o0;->a(Lm5/o0$a;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public final setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-static {p0, p1}, Lm5/o0;->b(Lm5/o0$a;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public final setIdAttribute(Ljava/lang/String;Z)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
