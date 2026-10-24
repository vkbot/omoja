.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/services/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/security/cert/X509Certificate;

.field public final synthetic d:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/util/List;Ljava/security/cert/X509Certificate;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/c;->a:Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/c;->b:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/dsig/services/c;->c:Ljava/security/cert/X509Certificate;

    iput-object p4, p0, Lorg/apache/poi/poifs/crypt/dsig/services/c;->d:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/c;->d:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/c;->a:Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/c;->b:Ljava/util/List;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/c;->c:Ljava/security/cert/X509Certificate;

    invoke-static {v1, v2, p0, v0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->c(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/util/List;Ljava/security/cert/X509Certificate;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
