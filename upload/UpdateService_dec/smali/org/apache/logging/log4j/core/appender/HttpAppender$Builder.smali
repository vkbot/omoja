.class public Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
.source "HttpAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/HttpAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/HttpAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private connectTimeoutMillis:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private headers:[Lorg/apache/logging/log4j/core/config/Property;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Headers"
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private readTimeoutMillis:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "SslConfiguration"
    .end annotation
.end field

.field private url:Ljava/net/URL;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "No URL provided for HttpAppender"
    .end annotation
.end field

.field private verifyHostname:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;-><init>()V

    .line 55
    const-string v0, "POST"

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->method:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->connectTimeoutMillis:I

    .line 61
    iput v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->readTimeoutMillis:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->verifyHostname:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 48
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/HttpAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/HttpAppender;
    .locals 12

    .line 75
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    new-instance v11, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->url:Ljava/net/URL;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->method:Ljava/lang/String;

    iget v6, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->connectTimeoutMillis:I

    iget v7, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->readTimeoutMillis:I

    iget-object v8, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->headers:[Lorg/apache/logging/log4j/core/config/Property;

    iget-object v9, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    iget-boolean v10, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->verifyHostname:Z

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/apache/logging/log4j/core/appender/HttpURLConnectionManager;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;II[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Z)V

    move-object v5, v11

    .line 78
    .local v5, "httpManager":Lorg/apache/logging/log4j/core/appender/HttpManager;
    new-instance v8, Lorg/apache/logging/log4j/core/appender/HttpAppender;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->isIgnoreExceptions()Z

    move-result v4

    .line 79
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/HttpAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/HttpManager;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/HttpAppender$1;)V

    .line 78
    return-object v8
.end method

.method public getConnectTimeoutMillis()I
    .locals 1

    .line 91
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->connectTimeoutMillis:I

    return v0
.end method

.method public getHeaders()[Lorg/apache/logging/log4j/core/config/Property;
    .locals 1

    .line 99
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->headers:[Lorg/apache/logging/log4j/core/config/Property;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 87
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTimeoutMillis()I
    .locals 1

    .line 95
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->readTimeoutMillis:I

    return v0
.end method

.method public getSslConfiguration()Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .locals 1

    .line 103
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 83
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->url:Ljava/net/URL;

    return-object v0
.end method

.method public isVerifyHostname()Z
    .locals 1

    .line 107
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->verifyHostname:Z

    return v0
.end method

.method public setConnectTimeoutMillis(I)Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;
    .locals 1
    .param p1, "connectTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "connectTimeoutMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->connectTimeoutMillis:I

    .line 122
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;

    return-object v0
.end method

.method public setHeaders([Lorg/apache/logging/log4j/core/config/Property;)Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;
    .locals 1
    .param p1, "headers"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")TB;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->headers:[Lorg/apache/logging/log4j/core/config/Property;

    .line 132
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "method"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->method:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;

    return-object v0
.end method

.method public setReadTimeoutMillis(I)Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;
    .locals 1
    .param p1, "readTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "readTimeoutMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->readTimeoutMillis:I

    .line 127
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;

    return-object v0
.end method

.method public setSslConfiguration(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;
    .locals 1
    .param p1, "sslConfiguration"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sslConfiguration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;",
            ")TB;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 137
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;

    return-object v0
.end method

.method public setUrl(Ljava/net/URL;)Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")TB;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->url:Ljava/net/URL;

    .line 112
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;

    return-object v0
.end method

.method public setVerifyHostname(Z)Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;
    .locals 1
    .param p1, "verifyHostname"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "verifyHostname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->verifyHostname:Z

    .line 142
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/HttpAppender$Builder;

    return-object v0
.end method
