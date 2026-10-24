.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;


# static fields
.field private static final DIRECT_NS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IGNORE_NS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OBJECT_TAG:Ljava/lang/String; = "Object"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "http://www.w3.org/2000/09/xmldsig#"

    const/4 v3, 0x0

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->IGNORE_NS:Ljava/util/Set;

    const-string v0, "http://schemas.openxmlformats.org/package/2006/digital-signature"

    const-string v1, "http://schemas.microsoft.com/office/2006/digsig"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->DIRECT_NS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;Lorg/w3c/dom/Element;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->lambda$handleElement$2(Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static synthetic b(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->lambda$null$0(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;Lorg/w3c/dom/Element;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->lambda$null$1(Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private static forEachElement(Lorg/w3c/dom/NodeList;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/util/function/Consumer<",
            "Lorg/w3c/dom/Element;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getAllNamespaces(Lorg/w3c/dom/traversal/DocumentTraversal;Lorg/w3c/dom/Element;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/traversal/DocumentTraversal;",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Lorg/w3c/dom/traversal/DocumentTraversal;->createNodeIterator(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p1

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    if-eqz p2, :cond_1

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->setPrefix(Lorg/w3c/dom/Node;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v3, p3, p4}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->setPrefix(Lorg/w3c/dom/Node;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->detach()V

    return-void

    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->detach()V

    throw p0
.end method

.method private synthetic lambda$handleElement$2(Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;Lorg/w3c/dom/Element;)V
    .locals 1

    invoke-interface {p4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p4

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/i;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {p4, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->forEachElement(Lorg/w3c/dom/NodeList;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$null$0(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->setXmlns(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$null$1(Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;Lorg/w3c/dom/Element;)V
    .locals 0

    invoke-direct {p0, p1, p4, p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->getAllNamespaces(Lorg/w3c/dom/traversal/DocumentTraversal;Lorg/w3c/dom/Element;Ljava/util/Map;Ljava/util/Map;)V

    new-instance p0, Lorg/apache/poi/poifs/crypt/dsig/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lorg/apache/poi/poifs/crypt/dsig/m;-><init>(ILjava/lang/Object;)V

    invoke-interface {p3, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private setPrefix(Lorg/w3c/dom/Node;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->IGNORE_NS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->DIRECT_NS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->setXmlns(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static setXmlns(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p0, Lorg/w3c/dom/Element;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "xmlns"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string v1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p0, v0, p1, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleElement(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Lorg/w3c/dom/events/EventTarget;Lorg/w3c/dom/events/EventListener;)V
    .locals 1

    move-object p3, p2

    check-cast p3, Lorg/w3c/dom/traversal/DocumentTraversal;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object p1

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Object"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/h;

    invoke-direct {v0, p0, p3, p1, p4}, Lorg/apache/poi/poifs/crypt/dsig/h;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/HashMap;)V

    invoke-static {p2, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->forEachElement(Lorg/w3c/dom/NodeList;Ljava/util/function/Consumer;)V

    return-void
.end method
