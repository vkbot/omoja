.class public Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
.source "JmsAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_RECONNECT_INTERVAL_MILLIS:I = 0x1388


# instance fields
.field private destinationBindingName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
        value = {
            "queueBindingName",
            "topicBindingName"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "A javax.jms.Destination JNDI name must be specified"
    .end annotation
.end field

.field private factoryBindingName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "A javax.jms.ConnectionFactory JNDI name must be specified"
    .end annotation
.end field

.field private factoryName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private immediateFail:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private jmsManager:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

.field private password:[C
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        sensitive = true
    .end annotation
.end field

.field private providerUrl:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private reconnectIntervalMillis:J
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private securityCredentials:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        sensitive = true
    .end annotation
.end field

.field private securityPrincipalName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private urlPkgPrefixes:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 94
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;-><init>()V

    .line 85
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->reconnectIntervalMillis:J

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$1;

    .line 50
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 50
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;
    .locals 18

    .line 100
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->jmsManager:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    .line 101
    .local v0, "actualJmsManager":Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    const/4 v2, 0x0

    .line 102
    .local v2, "configuration":Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;
    if-nez v0, :cond_0

    .line 103
    iget-object v3, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->factoryName:Ljava/lang/String;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->providerUrl:Ljava/lang/String;

    iget-object v5, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->urlPkgPrefixes:Ljava/lang/String;

    iget-object v6, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->securityPrincipalName:Ljava/lang/String;

    iget-object v7, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->securityCredentials:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/apache/logging/log4j/core/net/JndiManager;->createProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v3

    .line 105
    .local v3, "jndiProperties":Ljava/util/Properties;
    new-instance v4, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    iget-object v11, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->factoryBindingName:Ljava/lang/String;

    iget-object v12, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->destinationBindingName:Ljava/lang/String;

    iget-object v13, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->userName:Ljava/lang/String;

    iget-object v14, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->password:[C

    const/4 v15, 0x0

    iget-wide v5, v1, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->reconnectIntervalMillis:J

    move-object v9, v4

    move-object v10, v3

    move-wide/from16 v16, v5

    invoke-direct/range {v9 .. v17}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;-><init>(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[CZJ)V

    move-object v2, v4

    .line 107
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerFactory;

    invoke-static {v4, v5, v2}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 102
    .end local v3    # "jndiProperties":Ljava/util/Properties;
    :cond_0
    move-object v3, v2

    move-object v2, v0

    .line 109
    .end local v0    # "actualJmsManager":Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .local v2, "actualJmsManager":Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .local v3, "configuration":Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;
    :goto_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    .line 111
    return-object v0

    .line 113
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v11

    .line 114
    .local v11, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    if-nez v11, :cond_2

    .line 115
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v4

    const-string v5, "No layout provided for JmsAppender"

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 116
    return-object v0

    .line 119
    :cond_2
    :try_start_0
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->isIgnoreExceptions()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v9

    move-object v4, v0

    move-object v7, v11

    move-object v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/mom/JmsManager;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljavax/jms/JMSException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setDestinationBindingName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "destinationBindingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "destinationBindingName"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->destinationBindingName:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public setFactoryBindingName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "factoryBindingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factoryBindingName"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->factoryBindingName:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public setFactoryName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "factoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factoryName"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->factoryName:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public setImmediateFail(Z)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "immediateFail"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "immediateFail"
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->immediateFail:Z

    .line 144
    return-object p0
.end method

.method public setJmsManager(Lorg/apache/logging/log4j/core/appender/mom/JmsManager;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "jmsManager"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "jmsManager"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->jmsManager:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    .line 149
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "password"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->password:[C

    .line 163
    return-object p0
.end method

.method public setPassword([C)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "password"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->password:[C

    .line 154
    return-object p0
.end method

.method public setProviderUrl(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "providerUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "providerUrl"
        }
    .end annotation

    .line 167
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->providerUrl:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setReconnectIntervalMillis(J)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "reconnectIntervalMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reconnectIntervalMillis"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->reconnectIntervalMillis:J

    .line 173
    return-object p0
.end method

.method public setSecurityCredentials(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "securityCredentials"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "securityCredentials"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->securityCredentials:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public setSecurityPrincipalName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "securityPrincipalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "securityPrincipalName"
        }
    .end annotation

    .line 182
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->securityPrincipalName:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public setUrlPkgPrefixes(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "urlPkgPrefixes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "urlPkgPrefixes"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->urlPkgPrefixes:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userName"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->userName:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "username"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->userName:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder<TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", factoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->factoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", providerUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->providerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urlPkgPrefixes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->urlPkgPrefixes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", securityPrincipalName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->securityPrincipalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", securityCredentials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->securityCredentials:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", factoryBindingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->factoryBindingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationBindingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->destinationBindingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreExceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->isIgnoreExceptions()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", jmsManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;->jmsManager:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    return-object v0
.end method
