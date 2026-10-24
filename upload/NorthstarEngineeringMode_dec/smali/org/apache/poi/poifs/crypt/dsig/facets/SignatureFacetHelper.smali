.class final Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Transform;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljavax/xml/crypto/dsig/Reference;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v1

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v1, v0, p0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newDigestMethod(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/DigestMethodParameterSpec;)Ljavax/xml/crypto/dsig/DigestMethod;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newReference(Ljava/lang/String;Ljavax/xml/crypto/dsig/DigestMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    const-string/jumbo p2, "unknown digest method uri: "

    invoke-static {p2, v0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object p0

    return-object p0
.end method

.method public static newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;
    .locals 1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newTransform(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance p2, Ljavax/xml/crypto/dsig/XMLSignatureException;

    const-string/jumbo v0, "unknown canonicalization method: "

    .line 4
    invoke-static {v0, p1}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
