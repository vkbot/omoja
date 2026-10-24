.class public final Ls5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr5/a;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls5/a;->a:Ljava/util/HashMap;

    iput-object p2, p0, Ls5/a;->b:Ljava/lang/String;

    iput-object p3, p0, Ls5/a;->c:Ljava/lang/String;

    const-string p2, "$xmlbeans!default_uri"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Ls5/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lnet/sf/saxon/tree/wrapper/VirtualNode;)Lorg/w3c/dom/Node;
    .locals 1

    :goto_0
    instance-of v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getUnderlyingNode()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method


# virtual methods
.method public final a(Lm5/h;Li5/z1;)Lr5/d;
    .locals 0

    new-instance p2, Ls5/b;

    invoke-direct {p2, p0, p1}, Ls5/b;-><init>(Ls5/a;Lm5/h;)V

    return-object p2
.end method

.method public final c(Lm5/o0$a;)Ljava/util/ArrayList;
    .locals 5

    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    new-instance v1, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v1, v0}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v2, p0, Ls5/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lnet/sf/saxon/om/NamespaceUri;->of(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceUri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/sxpath/IndependentContext;->setDefaultElementNamespace(Lnet/sf/saxon/om/NamespaceUri;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v2, p0, Ls5/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lnet/sf/saxon/om/NamespaceUri;->of(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceUri;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Lnet/sf/saxon/om/NamespaceUri;)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Configuration;->unravel(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    new-instance v2, Lnet/sf/saxon/sxpath/XPathEvaluator;

    invoke-direct {v2, v0}, Lnet/sf/saxon/sxpath/XPathEvaluator;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/sxpath/XPathEvaluator;->setStaticContext(Lnet/sf/saxon/sxpath/XPathStaticContext;)V

    const-string v0, ""

    invoke-static {v0}, Lnet/sf/saxon/om/NamespaceUri;->of(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceUri;

    move-result-object v0

    iget-object v3, p0, Ls5/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Lnet/sf/saxon/om/NamespaceUri;Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object v0

    iget-object p0, p0, Ls5/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lnet/sf/saxon/sxpath/XPathEvaluator;->createExpression(Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathExpression;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/sxpath/XPathExpression;->createDynamicContext(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/sxpath/XPathDynamicContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setContextItem(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {v1, v0, p1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setVariable(Lnet/sf/saxon/sxpath/XPathVariable;Lnet/sf/saxon/om/Sequence;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/sxpath/XPathExpression;->evaluate(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Item;

    instance-of v1, v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    if-eqz v1, :cond_2

    check-cast v0, Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-static {v0}, Ls5/a;->b(Lnet/sf/saxon/tree/wrapper/VirtualNode;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lnet/sf/saxon/value/GDateValue;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    instance-of v1, v0, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->convertToJava(Lnet/sf/saxon/om/Item;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_6
    return-object p1

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
