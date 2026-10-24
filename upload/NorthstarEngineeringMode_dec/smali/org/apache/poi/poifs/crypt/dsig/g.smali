.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/g;->a:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/g;->a:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;->a(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method
