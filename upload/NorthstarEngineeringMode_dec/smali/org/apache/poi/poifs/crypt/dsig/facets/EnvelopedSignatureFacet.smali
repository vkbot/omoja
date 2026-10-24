.class public Lorg/apache/poi/poifs/crypt/dsig/facets/EnvelopedSignatureFacet;
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
.method public preSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "http://www.w3.org/2000/09/xmldsig#enveloped-signature"

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, ""

    const/4 p4, 0x0

    invoke-static {p1, p2, p0, p4}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
