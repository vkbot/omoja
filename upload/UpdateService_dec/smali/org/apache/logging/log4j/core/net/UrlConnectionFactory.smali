.class public Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;
.super Ljava/lang/Object;
.source "UrlConnectionFactory.java"


# static fields
.field public static final ALLOWED_PROTOCOLS:Ljava/lang/String; = "log4j2.Configuration.allowedProtocols"

.field private static DEFAULT_TIMEOUT:I = 0x0

.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final JSON:Ljava/lang/String; = "application/json"

.field private static final NO_PROTOCOLS:Ljava/lang/String; = "_none"

.field private static final PROPERTIES:Ljava/lang/String; = "text/x-java-properties"

.field private static final TEXT:Ljava/lang/String; = "text/plain"

.field private static final XML:Ljava/lang/String; = "application/xml"

.field private static connectTimeoutMillis:I

.field private static readTimeoutMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const v0, 0xea60

    sput v0, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->DEFAULT_TIMEOUT:I

    .line 46
    sput v0, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->connectTimeoutMillis:I

    .line 47
    sput v0, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->readTimeoutMillis:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConnection(Ljava/net/URL;JLorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Ljava/net/HttpURLConnection;
    .locals 11
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "lastModifiedMillis"    # J
    .param p3, "sslConfiguration"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "lastModifiedMillis",
            "sslConfiguration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 60
    .local v0, "props":Lorg/apache/logging/log4j/util/PropertiesUtil;
    nop

    .line 61
    const-string v1, "log4j2.Configuration.allowedProtocols"

    const-string v2, "https"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->splitList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, "allowed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "_none"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "No external protocols have been enabled"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "protocol":Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 69
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 72
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 74
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->authorizationProvider(Lorg/apache/logging/log4j/util/PropertiesUtil;)Lorg/apache/logging/log4j/core/util/AuthorizationProvider;

    move-result-object v7

    .line 75
    .local v7, "provider":Lorg/apache/logging/log4j/core/util/AuthorizationProvider;
    if-eqz v7, :cond_2

    .line 76
    invoke-interface {v7, v6}, Lorg/apache/logging/log4j/core/util/AuthorizationProvider;->addAuthorization(Ljava/net/URLConnection;)V

    .line 78
    :cond_2
    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 79
    invoke-virtual {v6, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 80
    invoke-virtual {v6, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 81
    const-string v4, "GET"

    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    sget v4, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->connectTimeoutMillis:I

    if-lez v4, :cond_3

    .line 83
    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 85
    :cond_3
    sget v4, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->readTimeoutMillis:I

    if-lez v4, :cond_4

    .line 86
    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 88
    :cond_4
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    const-string v8, "\\."

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "fileParts":[Ljava/lang/String;
    array-length v8, v4

    sub-int/2addr v8, v5

    aget-object v5, v4, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "type":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->isXml(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "application/xml"

    goto :goto_1

    :cond_5
    invoke-static {v5}, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->isJson(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "application/json"

    goto :goto_1

    :cond_6
    invoke-static {v5}, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->isProperties(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "text/x-java-properties"

    goto :goto_1

    :cond_7
    const-string v8, "text/plain"

    .line 91
    .local v8, "contentType":Ljava/lang/String;
    :goto_1
    const-string v9, "Content-Type"

    invoke-virtual {v6, v9, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-wide/16 v9, 0x0

    cmp-long v9, p1, v9

    if-lez v9, :cond_8

    .line 93
    invoke-virtual {v6, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 95
    :cond_8
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p3, :cond_9

    .line 96
    move-object v2, v6

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 97
    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;->isVerifyHostName()Z

    move-result v2

    if-nez v2, :cond_9

    .line 98
    move-object v2, v6

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v9, Lorg/apache/logging/log4j/core/net/ssl/LaxHostnameVerifier;->INSTANCE:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v9}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 101
    :cond_9
    return-object v6

    .line 70
    .end local v4    # "fileParts":[Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v7    # "provider":Lorg/apache/logging/log4j/core/util/AuthorizationProvider;
    .end local v8    # "contentType":Ljava/lang/String;
    :cond_a
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Protocol "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has not been enabled as an allowed protocol"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_b
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No protocol was specified on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    invoke-static {}, Lorg/apache/logging/log4j/core/net/ssl/SslConfigurationFactory;->getSslConfiguration()Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lorg/apache/logging/log4j/core/net/UrlConnectionFactory;->createConnection(Ljava/net/URL;JLorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 111
    :goto_1
    return-object v0
.end method

.method private static isJson(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 120
    const-string v0, "json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jsn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isProperties(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 124
    const-string v0, "properties"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isXml(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 116
    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
