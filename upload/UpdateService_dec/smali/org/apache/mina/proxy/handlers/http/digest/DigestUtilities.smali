.class public Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;
.super Ljava/lang/Object;
.source "DigestUtilities.java"


# static fields
.field public static final SESSION_HA1:Ljava/lang/String;

.field public static final SUPPORTED_QOPS:[Ljava/lang/String;

.field private static md5:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".SessionHA1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    .line 49
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .line 58
    const-string v0, "auth"

    const-string v1, "auth-int"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SUPPORTED_QOPS:[Ljava/lang/String;

    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static computeResponseValue(Lorg/apache/mina/core/session/IoSession;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "charsetName"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/AuthenticationException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 82
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "algorithm"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "md5-sess"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 84
    .local v0, "isMD5Sess":Z
    const/4 v2, 0x1

    const/16 v3, 0x3a

    if-eqz v0, :cond_1

    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    invoke-interface {p0, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    invoke-interface {p0, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    move-object v7, v4

    .local v4, "hA1":[B
    goto/16 :goto_2

    .line 86
    .end local v4    # "hA1":[B
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "username"

    invoke-static {p1, v5, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    const-string v5, "realm"

    invoke-static {p1, v5, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "realm":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    if-eqz v0, :cond_3

    .line 101
    sget-object v6, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v6

    .line 102
    :try_start_0
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 103
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 104
    .local v7, "prehA1":[B
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v6

    .line 107
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-static {v7}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    const-string v4, "nonce"

    invoke-static {p1, v4, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    const-string v4, "cnonce"

    invoke-static {p1, v4, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    sget-object v9, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v9

    .line 114
    :try_start_1
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 115
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 116
    .local v4, "hA1":[B
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    sget-object v6, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SESSION_HA1:Ljava/lang/String;

    invoke-interface {p0, v6, v4}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v7    # "prehA1":[B
    move-object v7, v4

    move-object v4, v8

    goto :goto_1

    .line 116
    .end local v4    # "hA1":[B
    .restart local v7    # "prehA1":[B
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 104
    .end local v7    # "prehA1":[B
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 120
    :cond_3
    sget-object v6, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v6

    .line 121
    :try_start_4
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 122
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 123
    .local v7, "hA1":[B
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 125
    .end local v5    # "realm":Ljava/lang/String;
    :goto_1
    nop

    .line 129
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v4

    .line 130
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    const-string v4, "uri"

    invoke-static {p1, v4, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v4, "qop"

    invoke-static {p1, v4, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "qop":Ljava/lang/String;
    const-string v4, "auth-int"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 136
    sget-object v4, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p0, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 139
    .local v4, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    sget-object v5, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v5

    .line 140
    :try_start_5
    sget-object v6, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 141
    sget-object v6, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 142
    .local v6, "hEntity":[B
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 144
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 142
    .end local v6    # "hEntity":[B
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 148
    .end local v4    # "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    :cond_4
    :goto_3
    sget-object v9, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v9

    .line 149
    :try_start_7
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 150
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 151
    .local v4, "hA2":[B
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {v7}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "nonce"

    invoke-static {p1, v6, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v6, ":00000001:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v6, "cnonce"

    invoke-static {p1, v6, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getDirectiveValue(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {v4}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    monitor-enter v2

    .line 165
    :try_start_8
    sget-object v3, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 166
    sget-object v3, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 167
    .local v3, "hFinal":[B
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 169
    invoke-static {v3}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 167
    .end local v3    # "hFinal":[B
    :catchall_3
    move-exception v3

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v3

    .line 151
    .end local v4    # "hA2":[B
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v2

    .line 123
    .end local v1    # "qop":Ljava/lang/String;
    .end local v7    # "hA1":[B
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    .local v5, "realm":Ljava/lang/String;
    :catchall_5
    move-exception v1

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v1
.end method
