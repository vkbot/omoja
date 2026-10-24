.class public Lorg/apache/ftpserver/usermanager/impl/UserMetadata;
.super Ljava/lang/Object;
.source "UserMetadata.java"


# instance fields
.field private certificateChain:[Ljava/security/cert/Certificate;

.field private inetAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->certificateChain:[Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->inetAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public setCertificateChain([Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "certificateChain"    # [Ljava/security/cert/Certificate;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->certificateChain:[Ljava/security/cert/Certificate;

    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->certificateChain:[Ljava/security/cert/Certificate;

    .line 64
    :goto_0
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 82
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->inetAddress:Ljava/net/InetAddress;

    .line 83
    return-void
.end method
