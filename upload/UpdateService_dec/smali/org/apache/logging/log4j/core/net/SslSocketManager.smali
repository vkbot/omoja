.class public Lorg/apache/logging/log4j/core/net/SslSocketManager;
.super Lorg/apache/logging/log4j/core/net/TcpSocketManager;
.source "SslSocketManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;,
        Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;
    }
.end annotation


# static fields
.field public static final DEFAULT_PORT:I = 0x1972

.field private static final FACTORY:Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;


# instance fields
.field private final sslConfig:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;-><init>(Lorg/apache/logging/log4j/core/net/SslSocketManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/SslSocketManager;->FACTORY:Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Ljava/net/InetAddress;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;I)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "sock"    # Ljava/net/Socket;
    .param p4, "sslConfig"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p5, "inetAddress"    # Ljava/net/InetAddress;
    .param p6, "host"    # Ljava/lang/String;
    .param p7, "port"    # I
    .param p8, "connectTimeoutMillis"    # I
    .param p9, "reconnectionDelayMillis"    # I
    .param p10, "immediateFail"    # Z
    .param p12, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "os",
            "sock",
            "sslConfig",
            "inetAddress",
            "host",
            "port",
            "connectTimeoutMillis",
            "reconnectionDelayMillis",
            "immediateFail",
            "layout",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/net/Socket;",
            "Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            "IIIZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    .local p11, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v12}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)V

    .line 64
    move-object/from16 v1, p4

    iput-object v1, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager;->sslConfig:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Ljava/net/InetAddress;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "sock"    # Ljava/net/Socket;
    .param p4, "sslConfig"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p5, "inetAddress"    # Ljava/net/InetAddress;
    .param p6, "host"    # Ljava/lang/String;
    .param p7, "port"    # I
    .param p8, "connectTimeoutMillis"    # I
    .param p9, "reconnectionDelayMillis"    # I
    .param p10, "immediateFail"    # Z
    .param p12, "bufferSize"    # I
    .param p13, "socketOptions"    # Lorg/apache/logging/log4j/core/net/SocketOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "os",
            "sock",
            "sslConfig",
            "inetAddress",
            "host",
            "port",
            "connectTimeoutMillis",
            "reconnectionDelayMillis",
            "immediateFail",
            "layout",
            "bufferSize",
            "socketOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/net/Socket;",
            "Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            "IIIZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I",
            "Lorg/apache/logging/log4j/core/net/SocketOptions;",
            ")V"
        }
    .end annotation

    .line 86
    .local p11, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)V

    .line 87
    move-object/from16 v1, p4

    iput-object v1, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager;->sslConfig:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 88
    return-void
.end method

.method static createSocket(Ljava/net/InetSocketAddress;ILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Lorg/apache/logging/log4j/core/net/SocketOptions;)Ljava/net/Socket;
    .locals 2
    .param p0, "socketAddress"    # Ljava/net/InetSocketAddress;
    .param p1, "connectTimeoutMillis"    # I
    .param p2, "sslConfiguration"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p3, "socketOptions"    # Lorg/apache/logging/log4j/core/net/SocketOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "socketAddress",
            "connectTimeoutMillis",
            "sslConfiguration",
            "socketOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/SslSocketManager;->createSslSocketFactory(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 187
    .local v0, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 188
    .local v1, "socket":Ljavax/net/ssl/SSLSocket;
    if-eqz p3, :cond_0

    .line 190
    invoke-virtual {p3, v1}, Lorg/apache/logging/log4j/core/net/SocketOptions;->apply(Ljava/net/Socket;)V

    .line 192
    :cond_0
    invoke-virtual {v1, p0, p1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 193
    if-eqz p3, :cond_1

    .line 195
    invoke-virtual {p3, v1}, Lorg/apache/logging/log4j/core/net/SocketOptions;->apply(Ljava/net/Socket;)V

    .line 197
    :cond_1
    return-object v1
.end method

.method private static createSslSocketFactory(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .param p0, "sslConf"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sslConf"
        }
    .end annotation

    .line 148
    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .local v0, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_0

    .line 151
    .end local v0    # "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 154
    .restart local v0    # "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :goto_0
    return-object v0
.end method

.method public static getSocketManager(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;I)Lorg/apache/logging/log4j/core/net/SslSocketManager;
    .locals 9
    .param p0, "sslConfig"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectTimeoutMillis"    # I
    .param p4, "reconnectDelayMillis"    # I
    .param p5, "immediateFail"    # Z
    .param p7, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sslConfig",
            "host",
            "port",
            "connectTimeoutMillis",
            "reconnectDelayMillis",
            "immediateFail",
            "layout",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;",
            "Ljava/lang/String;",
            "IIIZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I)",
            "Lorg/apache/logging/log4j/core/net/SslSocketManager;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    .local p6, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lorg/apache/logging/log4j/core/net/SslSocketManager;->getSocketManager(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/net/SslSocketManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSocketManager(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/net/SslSocketManager;
    .locals 15
    .param p0, "sslConfig"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectTimeoutMillis"    # I
    .param p4, "reconnectDelayMillis"    # I
    .param p5, "immediateFail"    # Z
    .param p7, "bufferSize"    # I
    .param p8, "socketOptions"    # Lorg/apache/logging/log4j/core/net/SocketOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10,
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sslConfig",
            "host",
            "port",
            "connectTimeoutMillis",
            "reconnectDelayMillis",
            "immediateFail",
            "layout",
            "bufferSize",
            "socketOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;",
            "Ljava/lang/String;",
            "IIIZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I",
            "Lorg/apache/logging/log4j/core/net/SocketOptions;",
            ")",
            "Lorg/apache/logging/log4j/core/net/SslSocketManager;"
        }
    .end annotation

    .line 123
    .local p6, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    if-gtz p2, :cond_0

    .line 127
    const/16 v0, 0x1972

    .end local p2    # "port":I
    .local v0, "port":I
    goto :goto_0

    .line 126
    .end local v0    # "port":I
    .restart local p2    # "port":I
    :cond_0
    move/from16 v0, p2

    .line 129
    .end local p2    # "port":I
    .restart local v0    # "port":I
    :goto_0
    if-nez p4, :cond_1

    .line 130
    const/16 v1, 0x7530

    move v11, v1

    .end local p4    # "reconnectDelayMillis":I
    .local v1, "reconnectDelayMillis":I
    goto :goto_1

    .line 129
    .end local v1    # "reconnectDelayMillis":I
    .restart local p4    # "reconnectDelayMillis":I
    :cond_1
    move/from16 v11, p4

    .line 132
    .end local p4    # "reconnectDelayMillis":I
    .local v11, "reconnectDelayMillis":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TLS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 133
    .local v13, "name":Ljava/lang/String;
    new-instance v14, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move v4, v0

    move/from16 v5, p3

    move v6, v11

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;-><init>(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)V

    sget-object v1, Lorg/apache/logging/log4j/core/net/SslSocketManager;->FACTORY:Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;

    invoke-static {v13, v14, v1}, Lorg/apache/logging/log4j/core/net/SslSocketManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/net/SslSocketManager;

    return-object v1

    .line 124
    .end local v0    # "port":I
    .end local v11    # "reconnectDelayMillis":I
    .end local v13    # "name":Ljava/lang/String;
    .restart local p2    # "port":I
    .restart local p4    # "reconnectDelayMillis":I
    :cond_2
    move-object/from16 v12, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A host name is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createSocket(Ljava/net/InetSocketAddress;)Ljava/net/Socket;
    .locals 3
    .param p1, "socketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "socketAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SslSocketManager;->sslConfig:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/net/SslSocketManager;->createSslSocketFactory(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 140
    .local v0, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 141
    .local v1, "newSocket":Ljava/net/Socket;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/SslSocketManager;->getConnectTimeoutMillis()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 142
    return-object v1
.end method
