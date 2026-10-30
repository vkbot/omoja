.class final Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/KeyManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "X509KeyManager"
.end annotation


# instance fields
.field private final keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getAlias()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getAlias()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getPrivateKey()Ljava/security/PrivateKey;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
