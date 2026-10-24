.class public final Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;
.super Ljava/lang/Object;
.source "AliasKeyManager.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# instance fields
.field private final delegate:Ljavax/net/ssl/X509KeyManager;

.field private final serverKeyAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "mgr"    # Ljavax/net/ssl/KeyManager;
    .param p2, "keyAlias"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    .line 58
    iput-object p2, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 82
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 103
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 104
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v1, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 105
    .local v0, "key":Ljava/security/PrivateKey;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    return-object v1

    .line 109
    :cond_0
    return-object v1

    .line 112
    :cond_1
    return-object v1

    .line 115
    .end local v0    # "key":Ljava/security/PrivateKey;
    :cond_2
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 148
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 166
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
