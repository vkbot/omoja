.class final Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlProviderInitSingleton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton$SingletonHelper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    :try_start_0
    invoke-static {}, Lorg/apache/xml/security/Init;->init()V

    .line 4
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->registerDsigProvider()V

    .line 5
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Xml & BouncyCastle-Provider initialization failed"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;)Ljava/lang/RuntimeException;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;->providerNotFound()Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;Ljava/lang/String;)Ljava/security/Provider;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;
    .locals 1

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton$SingletonHelper;->access$300()Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;

    move-result-object v0

    return-object v0
.end method

.method private getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$100()La5/d;

    move-result-object p0

    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p0

    const-string v0, "XMLDsig-Provider \'{}\' can\'t be found - trying next."

    invoke-interface {p0, p1, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private providerNotFound()Ljava/lang/RuntimeException;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JRE doesn\'t support default xml signature provider - set jsr105Provider system property!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public findProvider()Ljava/security/Provider;
    .locals 3

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getProviderNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/f;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/dsig/f;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lh4/g;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lh4/g;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/g;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/dsig/g;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$XmlProviderInitSingleton;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Provider;

    return-object p0
.end method
