.class public Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final ocsps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final x509chain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->x509chain:Ljava/util/List;

    return-void
.end method

.method public static synthetic a([B[B)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->lambda$addCRL$0([B[B)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$addCRL$0([B[B)Z
    .locals 0

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addCRL(Ljava/security/cert/X509CRL;)V
    .locals 2

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->addCRL([B)V
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CRL coding error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addCRL([B)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    .line 1
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lf/f;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lf/f;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->x509chain:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOCSP([B)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCRLs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    return-object p0
.end method

.method public getOCSPs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    return-object p0
.end method

.method public getX509chain()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->x509chain:Ljava/util/List;

    return-object p0
.end method

.method public hasCRLs()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->crls:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasOCSPs()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->ocsps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasRevocationDataEntries()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasOCSPs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->hasCRLs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
