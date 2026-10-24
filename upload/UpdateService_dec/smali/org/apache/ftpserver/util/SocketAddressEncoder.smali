.class public Lorg/apache/ftpserver/util/SocketAddressEncoder;
.super Ljava/lang/Object;
.source "SocketAddressEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertAndValidateNumber(Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 41
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 46
    return v0

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Token can not be larger than 255"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Token can not be less than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decode(Ljava/lang/String;)Ljava/net/InetSocketAddress;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v1, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ftpserver/util/SocketAddressEncoder;->convertAndValidateNumber(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ftpserver/util/SocketAddressEncoder;->convertAndValidateNumber(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ftpserver/util/SocketAddressEncoder;->convertAndValidateNumber(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ftpserver/util/SocketAddressEncoder;->convertAndValidateNumber(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    nop

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 72
    .local v2, "dataAddr":Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 74
    .local v3, "dataPort":I
    :try_start_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ftpserver/util/SocketAddressEncoder;->convertAndValidateNumber(Ljava/lang/String;)I

    move-result v4

    .line 75
    .local v4, "hi":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ftpserver/util/SocketAddressEncoder;->convertAndValidateNumber(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .local v5, "lo":I
    shl-int/lit8 v6, v4, 0x8

    or-int v3, v6, v5

    .line 79
    .end local v4    # "hi":I
    .end local v5    # "lo":I
    nop

    .line 81
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v4

    .line 77
    :catch_0
    move-exception v4

    .line 78
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/apache/ftpserver/util/IllegalPortException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid data port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ftpserver/util/IllegalPortException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 65
    .end local v2    # "dataAddr":Ljava/net/InetAddress;
    .end local v3    # "dataPort":I
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/apache/ftpserver/util/IllegalInetAddressException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ftpserver/util/IllegalInetAddressException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v1, Lorg/apache/ftpserver/util/IllegalInetAddressException;

    const-string v2, "Illegal amount of tokens"

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/util/IllegalInetAddressException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 6
    .param p0, "address"    # Ljava/net/InetSocketAddress;

    .line 85
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 86
    .local v0, "servAddr":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 87
    .local v1, "servPort":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2c

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, v1, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v1, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
