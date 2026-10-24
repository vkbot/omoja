.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/f;->a:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/f;->a:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;->b(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p0

    return-object p0
.end method
