.class public interface abstract Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final MS_DIGSIG_NS:Ljava/lang/String; = "http://schemas.microsoft.com/office/2006/digsig"

.field public static final OO_DIGSIG_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/package/2006/digital-signature"

.field public static final XADES_132_NS:Ljava/lang/String; = "http://uri.etsi.org/01903/v1.3.2#"

.field public static final XADES_141_NS:Ljava/lang/String; = "http://uri.etsi.org/01903/v1.4.1#"

.field public static final XML_DIGSIG_NS:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#"

.field public static final XML_NS:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"


# virtual methods
.method public postSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;)V
    .locals 0

    return-void
.end method

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

    return-void
.end method
