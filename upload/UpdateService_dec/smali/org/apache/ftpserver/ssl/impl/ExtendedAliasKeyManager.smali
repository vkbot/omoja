.class public final Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "ExtendedAliasKeyManager.java"


# instance fields
.field private final delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

.field private final serverKeyAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "mgr"    # Ljavax/net/ssl/KeyManager;
    .param p2, "keyAlias"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 55
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 56
    iput-object p2, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 80
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 197
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 218
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 219
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 220
    .local v0, "key":Ljava/security/PrivateKey;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 221
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    return-object v1

    .line 224
    :cond_0
    return-object v1

    .line 227
    :cond_1
    return-object v1

    .line 230
    .end local v0    # "key":Ljava/security/PrivateKey;
    :cond_2
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 101
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 102
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 103
    .local v0, "key":Ljava/security/PrivateKey;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    return-object v1

    .line 107
    :cond_0
    return-object v1

    .line 110
    :cond_1
    return-object v1

    .line 113
    .end local v0    # "key":Ljava/security/PrivateKey;
    :cond_2
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 146
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 164
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
