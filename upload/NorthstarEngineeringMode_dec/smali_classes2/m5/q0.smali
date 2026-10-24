.class public final Lm5/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# instance fields
.field public a:Lm5/r0;


# virtual methods
.method public final getLength()I
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    iget-object p0, p0, Lm5/q0;->a:Lm5/r0;

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object p0, p0, Lm5/q0;->a:Lm5/r0;

    new-instance v0, Lm5/k0;

    invoke-direct {v0, p1, p0}, Lm5/k0;-><init>(Ljava/lang/String;Lm5/o0$a;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    iget-object p0, p0, Lm5/q0;->a:Lm5/r0;

    new-instance v0, Lm5/j0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lm5/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final item(I)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/poi/util/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/util/a;-><init>(II)V

    iget-object p0, p0, Lm5/q0;->a:Lm5/r0;

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    iget-object p0, p0, Lm5/q0;->a:Lm5/r0;

    new-instance v0, Lm5/l0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lm5/l0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    iget-object p0, p0, Lm5/q0;->a:Lm5/r0;

    new-instance v0, Lm5/j0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lm5/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lm5/q0;->a:Lm5/r0;

    invoke-static {p0, p1}, Lm5/o0;->a(Lm5/o0$a;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lm5/q0;->a:Lm5/r0;

    invoke-static {p0, p1}, Lm5/o0;->b(Lm5/o0$a;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
