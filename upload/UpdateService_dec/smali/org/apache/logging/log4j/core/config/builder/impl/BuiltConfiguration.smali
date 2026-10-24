.class public Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;
.super Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
.source "BuiltConfiguration.java"


# static fields
.field private static final VERBOSE_CLASSES:[Ljava/lang/String;


# instance fields
.field private appendersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private contentType:Ljava/lang/String;

.field private customLevelsComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private filtersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private loggersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private propertiesComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field protected rootComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private scriptsComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private final statusConfig:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->VERBOSE_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V
    .locals 10
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "source"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .param p3, "rootComponent"    # Lorg/apache/logging/log4j/core/config/builder/api/Component;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "source",
            "rootComponent"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 52
    const-string v0, "text"

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->contentType:Ljava/lang/String;

    .line 56
    new-instance v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;-><init>()V

    sget-object v1, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->VERBOSE_CLASSES:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withVerboseClasses([Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->getDefaultStatus()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withStatus(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->statusConfig:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    .line 57
    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 58
    .local v1, "component":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getPluginType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "Loggers"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v9

    goto :goto_1

    :sswitch_1
    const-string v4, "Properties"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v6

    goto :goto_1

    :sswitch_2
    const-string v4, "Filters"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v7

    goto :goto_1

    :sswitch_3
    const-string v4, "CustomLevels"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_4
    const-string v4, "Appenders"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v8

    goto :goto_1

    :sswitch_5
    const-string v4, "Scripts"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    if-eq v3, v9, :cond_5

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    goto :goto_2

    .line 80
    :cond_1
    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->customLevelsComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    goto :goto_2

    .line 76
    :cond_2
    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->propertiesComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 77
    goto :goto_2

    .line 72
    :cond_3
    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->filtersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 73
    goto :goto_2

    .line 68
    :cond_4
    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->appendersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 69
    goto :goto_2

    .line 64
    :cond_5
    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->loggersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 65
    goto :goto_2

    .line 60
    :cond_6
    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->scriptsComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 61
    nop

    .line 84
    .end local v1    # "component":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    :goto_2
    goto :goto_0

    .line 85
    :cond_7
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->rootComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 86
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x29f31f18 -> :sswitch_5
        -0x10cbb414 -> :sswitch_4
        0x14248860 -> :sswitch_3
        0x30493bdb -> :sswitch_2
        0x3f9f6953 -> :sswitch_1
        0x779f54c3 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected convertToNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/builder/api/Component;)Lorg/apache/logging/log4j/core/config/Node;
    .locals 7
    .param p1, "parent"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "component"    # Lorg/apache/logging/log4j/core/config/builder/api/Component;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parent",
            "component"
        }
    .end annotation

    .line 163
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getPluginType()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPluginType(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v1

    .line 165
    .local v1, "pluginType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    new-instance v2, Lorg/apache/logging/log4j/core/config/Node;

    invoke-direct {v2, p1, v0, v1}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    .line 166
    .local v2, "node":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 167
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/config/Node;->setValue(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 169
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 170
    .local v5, "child":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    invoke-virtual {p0, v2, v5}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->convertToNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/builder/api/Component;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v5    # "child":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    goto :goto_0

    .line 172
    :cond_0
    return-object v2
.end method

.method public createAdvertiser(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V
    .locals 5
    .param p1, "advertiserString"    # Ljava/lang/String;
    .param p2, "configSource"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "advertiserString",
            "configSource"
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "buffer":[B
    if-eqz p2, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 125
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 126
    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 129
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read configuration source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 132
    :goto_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->contentType:Ljava/lang/String;

    invoke-super {p0, p1, p2, v0, v1}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->createAdvertiser(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/ConfigurationSource;[BLjava/lang/String;)V

    .line 133
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginManager()Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    return-object v0
.end method

.method public getStatusConfiguration()Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->statusConfig:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contentType"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->contentType:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setMonitorInterval(I)V
    .locals 2
    .param p1, "intervalSeconds"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intervalSeconds"
        }
    .end annotation

    .line 152
    instance-of v0, p0, Lorg/apache/logging/log4j/core/config/Reconfigurable;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 153
    move-object v0, p0

    check-cast v0, Lorg/apache/logging/log4j/core/config/Reconfigurable;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->initializeWatchers(Lorg/apache/logging/log4j/core/config/Reconfigurable;Lorg/apache/logging/log4j/core/config/ConfigurationSource;I)V

    .line 155
    :cond_0
    return-void
.end method

.method public setPluginPackages(Ljava/lang/String;)V
    .locals 2
    .param p1, "packages"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packages"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->pluginPackages:Ljava/util/List;

    sget-object v1, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    return-void
.end method

.method public setShutdownHook(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "flag"
        }
    .end annotation

    .line 144
    const-string v0, "disable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->isShutdownHookEnabled:Z

    .line 145
    return-void
.end method

.method public setShutdownTimeoutMillis(J)V
    .locals 0
    .param p1, "shutdownTimeoutMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "shutdownTimeoutMillis"
        }
    .end annotation

    .line 148
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->shutdownTimeoutMillis:J

    .line 149
    return-void
.end method

.method public setup()V
    .locals 4

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->propertiesComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->propertiesComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->convertToNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/builder/api/Component;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->scriptsComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 95
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->scriptsComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->convertToNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/builder/api/Component;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->customLevelsComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 98
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->customLevelsComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->convertToNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/builder/api/Component;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->loggersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->convertToNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/builder/api/Component;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->appendersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->convertToNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/builder/api/Component;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->filtersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 103
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->filtersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 104
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->filtersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->convertToNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/builder/api/Component;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_3
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->filtersComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->convertToNode(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/builder/api/Component;)Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_4
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->rootComponent:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 110
    return-void
.end method
