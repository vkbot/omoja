.class public Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;
.super Ljava/lang/Object;
.source "WifiConfigurationProvider.java"


# static fields
.field static final EAP:Ljava/lang/String; = "EAP"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static EAP_METHODS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final NONE:Ljava/lang/String; = "NONE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PASSWORD:[C
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static PHASE2_AUTH:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final WEP:Ljava/lang/String; = "WEP"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final WPA:Ljava/lang/String; = "WPA"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    .line 67
    sput-object v0, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->PASSWORD:[C

    .line 69
    invoke-static {}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->buildEapMethodsMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->EAP_METHODS:Ljava/util/Map;

    .line 70
    invoke-static {}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->buildPhase2AuthMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->PHASE2_AUTH:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildCACertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "X.509"

    .line 309
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 310
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 311
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 313
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 310
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private static buildEapMethodsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PEAP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TLS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TTLS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PWD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SIM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AKA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AKA_PRIME"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static buildPhase2AuthMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ""

    .line 87
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NONE"

    .line 88
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PAP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSCHAP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSCHAPV2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GTC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SIM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AKA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AKA_PRIME"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static castX509Certificates([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 298
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$nMfglshWMOO6xzPcs03y2NP1U2I;->INSTANCE:Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$nMfglshWMOO6xzPcs03y2NP1U2I;

    .line 299
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$lKzBVSvdImewbaPKbHU2_2UyKpk;->INSTANCE:Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$lKzBVSvdImewbaPKbHU2_2UyKpk;

    .line 300
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private static findAliasFromKeystore(Ljava/security/KeyStore;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    .line 272
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 275
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 279
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 276
    :cond_1
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "Configuration must contain only one certificate"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getEAPMethodFromString(Ljava/lang/String;)I
    .locals 2

    .line 335
    sget-object p0, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->EAP_METHODS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 336
    sget-object p0, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->EAP_METHODS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 338
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown EAP method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getPhase2AuthFromString(Ljava/lang/String;)I
    .locals 2

    .line 342
    sget-object p0, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->PHASE2_AUTH:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 343
    sget-object p0, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->PHASE2_AUTH:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 345
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Phase 2 authentication method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isCertificateChainValidType([Ljava/security/cert/Certificate;)Z
    .locals 0

    .line 219
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$-5DwPei8d_FK_khElsm0hB-L2-g;->INSTANCE:Lcom/android/managedprovisioning/task/wifi/-$$Lambda$WifiConfigurationProvider$-5DwPei8d_FK_khElsm0hB-L2-g;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isEAPWifiInfoValid(Ljava/lang/String;)Z
    .locals 0

    .line 231
    sget-object p0, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->EAP_METHODS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isKeyValidType(Ljava/security/Key;)Z
    .locals 0

    .line 223
    instance-of p0, p1, Ljava/security/PrivateKey;

    return p0
.end method

.method private isPhase2AuthWifiInfoValid(Ljava/lang/String;)Z
    .locals 0

    .line 227
    sget-object p0, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->PHASE2_AUTH:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$castX509Certificates$1(Ljava/security/cert/Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    .line 299
    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method static synthetic lambda$castX509Certificates$2(I)[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 300
    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method static synthetic lambda$isCertificateChainValidType$0(Ljava/security/cert/Certificate;)Z
    .locals 0

    .line 219
    instance-of p0, p0, Ljava/security/cert/X509Certificate;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static loadKeystoreFromCertificate(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "PKCS12"

    .line 284
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 286
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 287
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 286
    invoke-virtual {v2, p0}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 288
    :try_start_0
    sget-object p0, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->PASSWORD:[C

    invoke-virtual {v0, v1, p0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    .line 285
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private maybeUpdateClientKeyForEAPConfiguration(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 187
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-static {p2}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->loadKeystoreFromCertificate(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    .line 191
    invoke-static {p2}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->findAliasFromKeystore(Ljava/security/KeyStore;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    sget-object v1, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->PASSWORD:[C

    invoke-virtual {p2, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 199
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->isKeyValidType(Ljava/security/Key;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p0, "Key in user certificate must be non-null and PrivateKey type"

    .line 200
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return-void

    .line 204
    :cond_3
    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    .line 208
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->isCertificateChainValidType([Ljava/security/cert/Certificate;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "All certificates in chain in user certificate must be non-null X509Certificate type"

    .line 209
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return-void

    .line 214
    :cond_5
    check-cast v1, Ljava/security/PrivateKey;

    .line 215
    invoke-static {p2}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->castX509Certificates([Ljava/security/cert/Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    .line 214
    invoke-virtual {p1, v1, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientKeyEntryWithCertificateChain(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private maybeUpdateForEAPConfiguration(Landroid/net/wifi/WifiConfiguration;Lcom/android/managedprovisioning/model/WifiInfo;)V
    .locals 0

    .line 136
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->maybeUpdateForEAPConfigurationOrThrow(Landroid/net/wifi/WifiConfiguration;Lcom/android/managedprovisioning/model/WifiInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error while reading certificate"

    .line 139
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private maybeUpdateForEAPConfigurationOrThrow(Landroid/net/wifi/WifiConfiguration;Lcom/android/managedprovisioning/model/WifiInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p2, Lcom/android/managedprovisioning/model/WifiInfo;->eapMethod:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->isEAPWifiInfoValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown EAP method: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/managedprovisioning/model/WifiInfo;->eapMethod:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    iget-object v0, p2, Lcom/android/managedprovisioning/model/WifiInfo;->phase2Auth:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->isPhase2AuthWifiInfoValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown phase 2 authentication method: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/managedprovisioning/model/WifiInfo;->phase2Auth:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 157
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 158
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 159
    invoke-direct {p0, v0, p2}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->updateWifiEnterpriseConfigFromWifiInfo(Landroid/net/wifi/WifiEnterpriseConfig;Lcom/android/managedprovisioning/model/WifiInfo;)V

    .line 160
    iget-object p2, p2, Lcom/android/managedprovisioning/model/WifiInfo;->userCertificate:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->maybeUpdateClientKeyForEAPConfiguration(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V

    .line 161
    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    return-void
.end method

.method private updateForProxy(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 320
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object p0

    .line 324
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    sget-object p5, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p0, p5}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 326
    new-instance p5, Landroid/net/ProxyInfo;

    invoke-direct {p5, p2, p3, p4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, p5}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_0

    .line 328
    :cond_1
    sget-object p2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p0, p2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 329
    new-instance p2, Landroid/net/ProxyInfo;

    invoke-direct {p2, p5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 331
    :goto_0
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-void
.end method

.method private updateForWEPConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 3

    .line 249
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 250
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 251
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 252
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 253
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 254
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 255
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 256
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3a

    if-ne p0, v1, :cond_1

    :cond_0
    const-string p0, "[0-9A-Fa-f]*"

    .line 257
    invoke-virtual {p2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 258
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p2, p0, v0

    goto :goto_0

    .line 260
    :cond_1
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v0

    .line 262
    :goto_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    return-void
.end method

.method private updateForWPAConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 2

    .line 235
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 236
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 237
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 238
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 239
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 240
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 241
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 242
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 243
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private updateWifiEnterpriseConfigFromWifiInfo(Landroid/net/wifi/WifiEnterpriseConfig;Lcom/android/managedprovisioning/model/WifiInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p2, Lcom/android/managedprovisioning/model/WifiInfo;->eapMethod:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->getEAPMethodFromString(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 168
    iget-object v0, p2, Lcom/android/managedprovisioning/model/WifiInfo;->phase2Auth:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->getPhase2AuthFromString(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 169
    iget-object v0, p2, Lcom/android/managedprovisioning/model/WifiInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 170
    iget-object v0, p2, Lcom/android/managedprovisioning/model/WifiInfo;->identity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 171
    iget-object v0, p2, Lcom/android/managedprovisioning/model/WifiInfo;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 172
    iget-object v0, p2, Lcom/android/managedprovisioning/model/WifiInfo;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 173
    iget-object v0, p2, Lcom/android/managedprovisioning/model/WifiInfo;->caCertificate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object p2, p2, Lcom/android/managedprovisioning/model/WifiInfo;->caCertificate:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->buildCACertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public generateWifiConfiguration(Lcom/android/managedprovisioning/model/WifiInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .line 104
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 105
    iget-object v0, p1, Lcom/android/managedprovisioning/model/WifiInfo;->ssid:Ljava/lang/String;

    iput-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v0, 0x2

    .line 106
    iput v0, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 107
    iget-boolean v1, p1, Lcom/android/managedprovisioning/model/WifiInfo;->hidden:Z

    iput-boolean v1, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 108
    iget-object v1, p1, Lcom/android/managedprovisioning/model/WifiInfo;->securityType:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "NONE"

    :goto_0
    const/4 v2, -0x1

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x10b34

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_3

    const v4, 0x14f42

    if-eq v3, v4, :cond_2

    const v4, 0x15088

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "WPA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v7

    goto :goto_1

    :cond_2
    const-string v3, "WEP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v5

    goto :goto_1

    :cond_3
    const-string v3, "EAP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v0

    :cond_4
    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v0, :cond_5

    .line 120
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 121
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 117
    :cond_5
    invoke-direct {p0, v6, p1}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->maybeUpdateForEAPConfiguration(Landroid/net/wifi/WifiConfiguration;Lcom/android/managedprovisioning/model/WifiInfo;)V

    goto :goto_2

    .line 114
    :cond_6
    iget-object v0, p1, Lcom/android/managedprovisioning/model/WifiInfo;->password:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->updateForWEPConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :cond_7
    iget-object v0, p1, Lcom/android/managedprovisioning/model/WifiInfo;->password:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->updateForWPAConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 125
    :goto_2
    iget-object v2, p1, Lcom/android/managedprovisioning/model/WifiInfo;->proxyHost:Ljava/lang/String;

    iget v3, p1, Lcom/android/managedprovisioning/model/WifiInfo;->proxyPort:I

    iget-object v4, p1, Lcom/android/managedprovisioning/model/WifiInfo;->proxyBypassHosts:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/managedprovisioning/model/WifiInfo;->pacUrl:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->updateForProxy(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
