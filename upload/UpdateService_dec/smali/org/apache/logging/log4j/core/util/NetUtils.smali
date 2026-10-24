.class public final Lorg/apache/logging/log4j/core/util/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final UNKNOWN_LOCALHOST:Ljava/lang/String; = "UNKNOWN_LOCALHOST"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/NetUtils;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getLocalHostname()Ljava/lang/String;
    .locals 7

    .line 54
    const-string v0, "UNKNOWN_LOCALHOST"

    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 55
    .local v1, "addr":Ljava/net/InetAddress;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 56
    .end local v1    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "uhe":Ljava/net/UnknownHostException;
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 59
    .local v2, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v2, :cond_3

    .line 60
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 62
    .local v3, "nic":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 63
    .local v4, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 65
    .local v5, "address":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    .line 66
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .local v6, "hostname":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 68
    return-object v6

    .line 71
    .end local v5    # "address":Ljava/net/InetAddress;
    .end local v6    # "hostname":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 72
    .end local v3    # "nic":Ljava/net/NetworkInterface;
    .end local v4    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    goto :goto_1

    .line 76
    .end local v2    # "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_3
    goto :goto_3

    .line 74
    :catch_1
    move-exception v2

    .line 77
    :goto_3
    sget-object v2, Lorg/apache/logging/log4j/core/util/NetUtils;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Could not determine local host name"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return-object v0
.end method

.method public static getMacAddress()[B
    .locals 6

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "mac":[B
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .local v1, "localHost":Ljava/net/InetAddress;
    :try_start_1
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 94
    .local v2, "localInterface":Ljava/net/NetworkInterface;
    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/NetUtils;->isUpAndNotLoopback(Ljava/net/NetworkInterface;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    move-object v0, v3

    .line 97
    :cond_0
    if-nez v0, :cond_2

    .line 98
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 99
    .local v3, "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v3, :cond_2

    .line 100
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 101
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 102
    .local v4, "nic":Ljava/net/NetworkInterface;
    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/NetUtils;->isUpAndNotLoopback(Ljava/net/NetworkInterface;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v5
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v5

    .line 105
    .end local v4    # "nic":Ljava/net/NetworkInterface;
    :cond_1
    goto :goto_0

    .line 110
    .end local v2    # "localInterface":Ljava/net/NetworkInterface;
    .end local v3    # "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    goto :goto_1

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/net/SocketException;
    :try_start_2
    sget-object v3, Lorg/apache/logging/log4j/core/util/NetUtils;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3, v2}, Lorg/apache/logging/log4j/Logger;->catching(Ljava/lang/Throwable;)V

    .line 111
    .end local v2    # "e":Ljava/net/SocketException;
    :goto_1
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/ArrayUtils;->isEmpty([B)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 115
    .local v2, "address":[B
    const/4 v3, 0x6

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v3

    .line 119
    .end local v1    # "localHost":Ljava/net/InetAddress;
    .end local v2    # "address":[B
    :cond_3
    goto :goto_2

    .line 117
    :catch_1
    move-exception v1

    .line 120
    :goto_2
    return-object v0
.end method

.method public static getMacAddressString()Ljava/lang/String;
    .locals 8

    .line 128
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NetUtils;->getMacAddress()[B

    move-result-object v0

    .line 129
    .local v0, "macAddr":[B
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, v0, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "%02x"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 132
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    aget-byte v7, v0, v3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 137
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isUpAndNotLoopback(Ljava/net/NetworkInterface;)Z
    .locals 1
    .param p0, "ni"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ni"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 141
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .line 153
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "url":Ljava/net/URL;
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 160
    .end local v1    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 161
    .local v1, "nestedEx":Ljava/lang/Exception;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    return-object v2
.end method
