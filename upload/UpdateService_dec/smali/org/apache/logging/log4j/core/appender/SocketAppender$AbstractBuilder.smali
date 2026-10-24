.class public abstract Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
.source "SocketAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/SocketAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private advertise:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private connectTimeoutMillis:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;
    .end annotation
.end field

.field private immediateFail:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private port:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;
    .end annotation
.end field

.field private protocol:Lorg/apache/logging/log4j/core/net/Protocol;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private reconnectDelayMillis:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
        value = {
            "reconnectDelay",
            "reconnectionDelay",
            "delayMillis",
            "reconnectionDelayMillis"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "SocketOptions"
    .end annotation
.end field

.field private sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
        value = {
            "SslConfig"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "SslConfiguration"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;-><init>()V

    .line 80
    const-string v0, "localhost"

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->host:Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->immediateFail:Z

    .line 91
    sget-object v0, Lorg/apache/logging/log4j/core/net/Protocol;->TCP:Lorg/apache/logging/log4j/core/net/Protocol;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->protocol:Lorg/apache/logging/log4j/core/net/Protocol;

    return-void
.end method


# virtual methods
.method public getAdvertise()Z
    .locals 1

    .line 106
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->advertise:Z

    return v0
.end method

.method public getConnectTimeoutMillis()I
    .locals 1

    .line 110
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->connectTimeoutMillis:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 114
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateFail()Z
    .locals 1

    .line 130
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->immediateFail:Z

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 118
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->port:I

    return v0
.end method

.method public getProtocol()Lorg/apache/logging/log4j/core/net/Protocol;
    .locals 1

    .line 122
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->protocol:Lorg/apache/logging/log4j/core/net/Protocol;

    return-object v0
.end method

.method public getReconnectDelayMillis()I
    .locals 1

    .line 233
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->reconnectDelayMillis:I

    return v0
.end method

.method public getSocketOptions()Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1

    .line 237
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    return-object v0
.end method

.method public getSslConfiguration()Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .locals 1

    .line 126
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    return-object v0
.end method

.method public setAdvertise(Z)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "advertise"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "advertise"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->advertise:Z

    .line 135
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public setConnectTimeoutMillis(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
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

    .line 139
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->connectTimeoutMillis:I

    .line 140
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "host"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->host:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public setImmediateFail(Z)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "immediateFail"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "immediateFail"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->immediateFail:Z

    .line 150
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public setPort(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "port"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->port:I

    .line 155
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public setProtocol(Lorg/apache/logging/log4j/core/net/Protocol;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "protocol"    # Lorg/apache/logging/log4j/core/net/Protocol;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "protocol"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/net/Protocol;",
            ")TB;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->protocol:Lorg/apache/logging/log4j/core/net/Protocol;

    .line 160
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public setReconnectDelayMillis(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "reconnectDelayMillis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reconnectDelayMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->reconnectDelayMillis:I

    .line 165
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public setSocketOptions(Lorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "socketOptions"    # Lorg/apache/logging/log4j/core/net/SocketOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "socketOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/net/SocketOptions;",
            ")TB;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    .line 170
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public setSslConfiguration(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
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

    .line 174
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 175
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public withAdvertise(Z)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "advertise"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "advertise"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->advertise:Z

    .line 181
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public withConnectTimeoutMillis(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->connectTimeoutMillis:I

    .line 187
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public withHost(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "host"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->host:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public withImmediateFail(Z)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "immediateFail"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "immediateFail"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->immediateFail:Z

    .line 199
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public withPort(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "port"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->port:I

    .line 205
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public withProtocol(Lorg/apache/logging/log4j/core/net/Protocol;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "protocol"    # Lorg/apache/logging/log4j/core/net/Protocol;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "protocol"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/net/Protocol;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->protocol:Lorg/apache/logging/log4j/core/net/Protocol;

    .line 211
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public withReconnectDelayMillis(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "reconnectDelayMillis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reconnectDelayMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->reconnectDelayMillis:I

    .line 217
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public withSocketOptions(Lorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    .locals 1
    .param p1, "socketOptions"    # Lorg/apache/logging/log4j/core/net/SocketOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "socketOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/net/SocketOptions;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    .line 223
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method

.method public withSslConfiguration(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;, "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 229
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    return-object v0
.end method
