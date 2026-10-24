.class public Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;
.super Lorg/apache/logging/log4j/core/appender/HttpManager;
.source "HttpURLConnectionManager.java"


# static fields
.field private static final CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private final connectTimeoutMillis:I

.field private final headers:[Lorg/apache/logging/log4j/core/config/Property;

.field private final isHttps:Z

.field private final method:Ljava/lang/String;

.field private final readTimeoutMillis:I

.field private final sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

.field private final url:Ljava/net/URL;

.field private final verifyHostname:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;II[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Z)V
    .locals 2
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/net/URL;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "connectTimeoutMillis"    # I
    .param p7, "readTimeoutMillis"    # I
    .param p8, "headers"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p9, "sslConfiguration"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p10, "verifyHostname"    # Z
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
            0x10
        }
        names = {
            "configuration",
            "loggerContext",
            "name",
            "url",
            "method",
            "connectTimeoutMillis",
            "readTimeoutMillis",
            "headers",
            "sslConfiguration",
            "verifyHostname"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/HttpManager;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 60
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->url:Ljava/net/URL;

    .line 61
    invoke-virtual {p4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "https"

    if-nez v0, :cond_1

    invoke-virtual {p4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    const-string v1, "URL must have scheme http or https"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->isHttps:Z

    .line 65
    const-string v0, "method"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->method:Ljava/lang/String;

    .line 66
    iput p6, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->connectTimeoutMillis:I

    .line 67
    iput p7, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->readTimeoutMillis:I

    .line 68
    if-eqz p8, :cond_2

    move-object v0, p8

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    :goto_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->headers:[Lorg/apache/logging/log4j/core/config/Property;

    .line 69
    iput-object p9, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 70
    if-eqz p9, :cond_4

    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->isHttps:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 71
    :cond_3
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    const-string v1, "SSL configuration can only be specified with URL scheme https"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_4
    :goto_2
    iput-boolean p10, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->verifyHostname:Z

    .line 74
    return-void
.end method


# virtual methods
.method public send(Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 11
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "layout",
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    .local p1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 79
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 81
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 82
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->method:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 83
    iget v2, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->connectTimeoutMillis:I

    if-lez v2, :cond_0

    .line 84
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 86
    :cond_0
    iget v2, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->readTimeoutMillis:I

    if-lez v2, :cond_1

    .line 87
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 89
    :cond_1
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 90
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->headers:[Lorg/apache/logging/log4j/core/config/Property;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 93
    .local v5, "header":Lorg/apache/logging/log4j/core/config/Property;
    nop

    .line 94
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/logging/log4j/core/config/Property;->evaluate(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v5    # "header":Lorg/apache/logging/log4j/core/config/Property;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_3
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    if-eqz v2, :cond_4

    .line 98
    move-object v3, v0

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 100
    :cond_4
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->isHttps:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->verifyHostname:Z

    if-nez v2, :cond_5

    .line 101
    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v3, Lorg/apache/logging/log4j/core/net/ssl/LaxHostnameVerifier;->INSTANCE:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 104
    :cond_5
    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/core/Layout;->toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B

    move-result-object v2

    .line 105
    .local v2, "msg":[B
    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 106
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 108
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 109
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 111
    .end local v3    # "os":Ljava/io/OutputStream;
    :cond_6
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 112
    .local v3, "buffer":[B
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    .local v5, "is":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v4, v6, :cond_7

    goto :goto_1

    .line 116
    :cond_7
    if-eqz v5, :cond_8

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_8
    nop

    .line 137
    return-void

    .line 112
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    .end local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "msg":[B
    .end local v3    # "buffer":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;
    .end local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .end local p2    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    .restart local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v2    # "msg":[B
    .restart local v3    # "buffer":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;
    .restart local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .restart local p2    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catchall_1
    move-exception v7

    if-eqz v5, :cond_9

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v8

    :try_start_6
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "msg":[B
    .end local v3    # "buffer":[B
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;
    .end local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .end local p2    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :cond_9
    :goto_2
    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v2    # "msg":[B
    .restart local v3    # "buffer":[B
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;
    .restart local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .restart local p2    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catch_0
    move-exception v5

    .line 117
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v6, "errorMessage":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    .line 119
    .local v7, "es":Ljava/io/InputStream;
    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 121
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_a
    if-eqz v7, :cond_b

    .line 124
    const-string v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :goto_3
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "n":I
    if-eq v4, v8, :cond_b

    .line 127
    new-instance v8, Ljava/lang/String;

    sget-object v10, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    .line 130
    .end local v9    # "n":I
    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 131
    .end local v7    # "es":Ljava/io/InputStream;
    :cond_c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-le v1, v4, :cond_d

    .line 132
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_d
    throw v5

    .line 118
    .restart local v7    # "es":Ljava/io/InputStream;
    :catchall_3
    move-exception v1

    .end local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "msg":[B
    .end local v3    # "buffer":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "errorMessage":Ljava/lang/StringBuilder;
    .end local v7    # "es":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;
    .end local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .end local p2    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 130
    .restart local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v2    # "msg":[B
    .restart local v3    # "buffer":[B
    .restart local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "errorMessage":Ljava/lang/StringBuilder;
    .restart local v7    # "es":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;
    .restart local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .restart local p2    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catchall_4
    move-exception v4

    if-eqz v7, :cond_e

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v8

    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_4
    throw v4

    .line 107
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "errorMessage":Ljava/lang/StringBuilder;
    .end local v7    # "es":Ljava/io/InputStream;
    .local v3, "os":Ljava/io/OutputStream;
    :catchall_6
    move-exception v1

    .end local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "msg":[B
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;
    .end local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .end local p2    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 109
    .restart local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v2    # "msg":[B
    .restart local v3    # "os":Ljava/io/OutputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;
    .restart local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .restart local p2    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catchall_7
    move-exception v4

    if-eqz v3, :cond_f

    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_5

    :catchall_8
    move-exception v5

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_5
    throw v4
.end method
