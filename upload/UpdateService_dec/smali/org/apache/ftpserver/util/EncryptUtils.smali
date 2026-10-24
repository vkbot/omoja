.class public Lorg/apache/ftpserver/util/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ftpserver/util/EncryptUtils;->encrypt([BLjava/lang/String;)[B

    move-result-object v0

    .line 51
    .local v0, "resByteArray":[B
    invoke-static {v0}, Lorg/apache/ftpserver/util/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final encrypt([BLjava/lang/String;)[B
    .locals 2
    .param p0, "source"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 39
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 40
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 41
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method public static final encryptMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const-string p0, ""

    .line 62
    :cond_0
    const-string v0, ""

    .line 64
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {p0, v1}, Lorg/apache/ftpserver/util/EncryptUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 68
    nop

    .line 69
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    .line 67
    .local v1, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final encryptSHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .line 76
    if-nez p0, :cond_0

    .line 77
    const-string p0, ""

    .line 80
    :cond_0
    const-string v0, ""

    .line 82
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v1, "SHA"

    invoke-static {p0, v1}, Lorg/apache/ftpserver/util/EncryptUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 86
    nop

    .line 87
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
