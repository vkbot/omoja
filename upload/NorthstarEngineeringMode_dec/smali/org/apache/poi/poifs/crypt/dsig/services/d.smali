.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/services/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lorg/bouncycastle/asn1/x500/X500Name;

.field public final synthetic b:Ljava/math/BigInteger;


# direct methods
.method public synthetic constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/d;->a:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/d;->b:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/d;->b:Ljava/math/BigInteger;

    check-cast p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/d;->a:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->h(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/cert/X509CertificateHolder;)Z

    move-result p0

    return p0
.end method
