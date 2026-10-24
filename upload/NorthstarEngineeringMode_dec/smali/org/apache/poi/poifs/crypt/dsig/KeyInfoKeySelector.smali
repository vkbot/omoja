.class public Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;
.super Ljavax/xml/crypto/KeySelector;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/crypto/KeySelectorResult;


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final certChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/crypto/KeySelector;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCertChain()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    return-object p0
.end method

.method public getKey()Ljava/security/Key;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSigner()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    :goto_0
    return-object p0
.end method

.method public select(Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;Ljavax/xml/crypto/KeySelector$Purpose;Ljavax/xml/crypto/AlgorithmMethod;Ljavax/xml/crypto/XMLCryptoContext;)Ljavax/xml/crypto/KeySelectorResult;
    .locals 2

    sget-object p2, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->LOG:La5/d;

    invoke-interface {p2}, La5/d;->e()La5/b;

    move-result-object p2

    const-string/jumbo p3, "select key"

    invoke-interface {p2, p3}, La5/b;->f(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfo;->getContent()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/xml/crypto/XMLStructure;

    instance-of p3, p2, Ljavax/xml/crypto/dsig/keyinfo/X509Data;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p2, Ljavax/xml/crypto/dsig/keyinfo/X509Data;

    invoke-interface {p2}, Ljavax/xml/crypto/dsig/keyinfo/X509Data;->getContent()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    instance-of p4, p3, Ljava/security/cert/X509Certificate;

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    check-cast p3, Ljava/security/cert/X509Certificate;

    sget-object p4, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->LOG:La5/d;

    invoke-interface {p4}, La5/d;->e()La5/b;

    move-result-object p4

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    const-string v1, "certificate: {}"

    invoke-interface {p4, v0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/KeyInfoKeySelector;->certChain:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljavax/xml/crypto/KeySelectorException;

    const-string p1, "No key found!"

    invoke-direct {p0, p1}, Ljavax/xml/crypto/KeySelectorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljavax/xml/crypto/KeySelectorException;

    const-string p1, "no ds:KeyInfo present"

    invoke-direct {p0, p1}, Ljavax/xml/crypto/KeySelectorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
