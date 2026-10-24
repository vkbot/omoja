.class Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XPathNSContext"
.end annotation


# instance fields
.field final nsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;)V
    .locals 3

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;->nsMap:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;->access$100(Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;)Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/m;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/poifs/crypt/dsig/m;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const-string p0, "dsss"

    const-string p1, "http://schemas.microsoft.com/office/2006/digsig"

    .line 4
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ds"

    const-string p1, "http://www.w3.org/2000/09/xmldsig#"

    .line 5
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignaturePart;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;->nsMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignaturePart$XPathNSContext;->nsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
