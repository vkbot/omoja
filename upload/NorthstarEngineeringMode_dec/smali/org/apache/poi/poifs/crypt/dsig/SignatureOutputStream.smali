.class Lorg/apache/poi/poifs/crypt/dsig/SignatureOutputStream;
.super Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;
.source "SourceFile"


# instance fields
.field signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/security/PrivateKey;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->key:Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->isMSCapi(Ljava/security/PrivateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SunMSCAPI"

    goto :goto_0

    :cond_0
    const-string v0, "SunRsaSign"

    :goto_0
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    const-string/jumbo v2, "withRSA"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->algo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget-object v3, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureOutputStream;->signature:Ljava/security/Signature;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->algo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget-object v1, v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureOutputStream;->signature:Ljava/security/Signature;

    :goto_1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureOutputStream;->signature:Ljava/security/Signature;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->key:Ljava/security/PrivateKey;

    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public sign()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureOutputStream;->signature:Ljava/security/Signature;

    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0
.end method

.method public write(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureOutputStream;->signature:Ljava/security/Signature;

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/Signature;->update(B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public write([BII)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureOutputStream;->signature:Ljava/security/Signature;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
