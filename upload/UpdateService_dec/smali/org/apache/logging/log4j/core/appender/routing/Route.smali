.class public final Lorg/apache/logging/log4j/core/appender/routing/Route;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    deferChildren = true
    name = "Route"
    printObject = true
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final appenderRef:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final node:Lorg/apache/logging/log4j/core/config/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/routing/Route;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "appenderRef"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "node",
            "appenderRef",
            "key"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->node:Lorg/apache/logging/log4j/core/config/Node;

    .line 41
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->appenderRef:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->key:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static createRoute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Node;)Lorg/apache/logging/log4j/core/appender/routing/Route;
    .locals 3
    .param p0, "appenderRef"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "ref"
        .end annotation
    .end param
    .param p1, "key"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "key"
        .end annotation
    .end param
    .param p2, "node"    # Lorg/apache/logging/log4j/core/config/Node;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginNode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "appenderRef",
            "key",
            "node"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 101
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/Node;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    if-eqz p0, :cond_1

    .line 103
    sget-object v1, Lorg/apache/logging/log4j/core/appender/routing/Route;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "A route cannot be configured with an appender reference and an appender definition"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 104
    return-object v0

    .line 106
    :cond_0
    if-nez p0, :cond_1

    .line 107
    sget-object v1, Lorg/apache/logging/log4j/core/appender/routing/Route;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "A route must specify an appender reference or an appender definition"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 108
    return-object v0

    .line 110
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/appender/routing/Route;

    invoke-direct {v0, p2, p0, p1}, Lorg/apache/logging/log4j/core/appender/routing/Route;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAppenderRef()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->appenderRef:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Lorg/apache/logging/log4j/core/config/Node;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->node:Lorg/apache/logging/log4j/core/config/Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Route("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->appenderRef:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "static Reference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->appenderRef:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->node:Lorg/apache/logging/log4j/core/config/Node;

    if-eqz v1, :cond_1

    .line 76
    const-string v1, "dynamic - type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_1
    const-string v1, "invalid Route"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->key:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 81
    const-string v1, " key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/Route;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 83
    :cond_2
    const-string v1, " default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :goto_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
