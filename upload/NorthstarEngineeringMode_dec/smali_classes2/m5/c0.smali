.class public Lm5/c0;
.super Lm5/b1;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Document;


# instance fields
.field public t:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lm5/o0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm5/z0;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, v1}, Lm5/b1;-><init>(Lm5/z0;II)V

    return-void
.end method


# virtual methods
.method public C0(Lm5/z0;)Lm5/w1;
    .locals 0

    new-instance p0, Lm5/c0;

    invoke-direct {p0, p1}, Lm5/c0;-><init>(Lm5/z0;)V

    return-object p0
.end method

.method public final adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
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
    .locals 4

    iget-object v0, p0, Lm5/c0;->t:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/w1;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lm5/w1;->a:Lm5/z0;

    iget-object v2, v0, Lm5/w1;->a:Lm5/z0;

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, p0

    :goto_0
    if-ne v1, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, v1, Lm5/w1;->f:Lm5/w1;

    if-nez v2, :cond_7

    move-object v2, v0

    :goto_1
    if-ne v2, p0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, v2, Lm5/w1;->f:Lm5/w1;

    if-nez v3, :cond_6

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p0, p0, Lm5/c0;->t:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0

    :cond_6
    move-object v2, v3

    goto :goto_1

    :cond_7
    move-object v1, v2

    goto :goto_0
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

.method public final getInputEncoding()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getStrictErrorChecking()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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

.method public final importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lm5/n0;

    invoke-direct {v0, p1, p2}, Lm5/n0;-><init>(Lorg/w3c/dom/Node;Z)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final normalizeDocument()V
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setDocumentURI(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setStrictErrorChecking(Z)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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
