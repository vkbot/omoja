.class public Lorg/apache/logging/log4j/core/appender/AppenderSet;
.super Ljava/lang/Object;
.source "AppenderSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    deferChildren = true
    name = "AppenderSet"
    printObject = true
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final nodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/AppenderSet;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/util/Map;)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "configuration",
            "appenders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Node;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p2, "appenders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 114
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet;->nodeMap:Ljava/util/Map;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/util/Map;Lorg/apache/logging/log4j/core/appender/AppenderSet$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/appender/AppenderSet$1;

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/AppenderSet;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AppenderSet;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 109
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/AppenderSet$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createAppender(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/Appender;
    .locals 6
    .param p1, "actualAppenderName"    # Ljava/lang/String;
    .param p2, "sourceAppenderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "actualAppenderName",
            "sourceAppenderName"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/Node;

    .line 119
    .local v0, "node":Lorg/apache/logging/log4j/core/config/Node;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    sget-object v2, Lorg/apache/logging/log4j/core/appender/AppenderSet;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v3, "No node named {} in {}"

    invoke-virtual {v2, v3, p1, p0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    return-object v1

    .line 123
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appender"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    new-instance v2, Lorg/apache/logging/log4j/core/config/Node;

    invoke-direct {v2, v0}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;)V

    .line 126
    .local v2, "appNode":Lorg/apache/logging/log4j/core/config/Node;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/AppenderSet;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v3, v2, v1}, Lorg/apache/logging/log4j/core/config/Configuration;->createConfiguration(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 127
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/logging/log4j/core/Appender;

    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/Appender;

    .line 129
    .local v1, "app":Lorg/apache/logging/log4j/core/Appender;
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/Appender;->start()V

    .line 130
    return-object v1

    .line 132
    .end local v1    # "app":Lorg/apache/logging/log4j/core/Appender;
    :cond_1
    sget-object v3, Lorg/apache/logging/log4j/core/appender/AppenderSet;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create Appender of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;)V

    .line 133
    return-object v1

    .line 135
    .end local v2    # "appNode":Lorg/apache/logging/log4j/core/config/Node;
    :cond_2
    sget-object v2, Lorg/apache/logging/log4j/core/appender/AppenderSet;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Appender was configured for name {} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;)V

    .line 136
    return-object v1
.end method
