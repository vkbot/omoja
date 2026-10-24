.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/services/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->a:I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->d:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->a:I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->d:Ljava/io/Serializable;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->a:I

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->d:Ljava/io/Serializable;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v1, p0, v2, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->d(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    check-cast v2, Ljava/security/cert/X509Certificate;

    check-cast p1, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;

    invoke-static {p0, v2, v1, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->a(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
