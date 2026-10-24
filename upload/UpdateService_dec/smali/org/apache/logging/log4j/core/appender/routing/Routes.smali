.class public final Lorg/apache/logging/log4j/core/appender/routing/Routes;
.super Ljava/lang/Object;
.source "Routes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "Routes"
    printObject = true
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final LOG_EVENT_KEY:Ljava/lang/String; = "logEvent"


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final pattern:Ljava/lang/String;

.field private final patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

.field private final routes:[Lorg/apache/logging/log4j/core/appender/routing/Route;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private varargs constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/routing/Route;)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "patternScript"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "routes"    # [Lorg/apache/logging/log4j/core/appender/routing/Route;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "patternScript",
            "pattern",
            "routes"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 167
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 168
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->pattern:Ljava/lang/String;

    .line 169
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->routes:[Lorg/apache/logging/log4j/core/appender/routing/Route;

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/routing/Route;Lorg/apache/logging/log4j/core/appender/routing/Routes$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Lorg/apache/logging/log4j/core/appender/routing/Route;
    .param p5, "x4"    # Lorg/apache/logging/log4j/core/appender/routing/Routes$1;

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/appender/routing/Routes;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/routing/Route;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static varargs createRoutes(Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/routing/Route;)Lorg/apache/logging/log4j/core/appender/routing/Routes;
    .locals 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "routes"    # [Lorg/apache/logging/log4j/core/appender/routing/Route;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pattern",
            "routes"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/appender/routing/Routes;

    invoke-direct {v1, v0, v0, p0, p1}, Lorg/apache/logging/log4j/core/appender/routing/Routes;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/routing/Route;)V

    return-object v1

    .line 145
    :cond_1
    :goto_0
    sget-object v1, Lorg/apache/logging/log4j/core/appender/routing/Routes;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No routes configured"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 146
    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 153
    new-instance v0, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/routing/Routes$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getPattern(Lorg/apache/logging/log4j/core/LogEvent;Ljava/util/concurrent/ConcurrentMap;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "scriptStaticVariables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 179
    .local p2, "scriptStaticVariables":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v0

    .line 181
    .local v0, "scriptManager":Lorg/apache/logging/log4j/core/script/ScriptManager;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/script/ScriptManager;->createBindings(Lorg/apache/logging/log4j/core/script/AbstractScript;)Ljavax/script/Bindings;

    move-result-object v1

    .line 182
    .local v1, "bindings":Ljavax/script/Bindings;
    const-string v2, "staticVariables"

    invoke-interface {v1, v2, p2}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v2, "logEvent"

    invoke-interface {v1, v2, p1}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/apache/logging/log4j/core/script/ScriptManager;->execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v3

    .line 185
    .local v3, "object":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljavax/script/Bindings;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/4 v2, 0x0

    invoke-static {v3, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 188
    .end local v0    # "scriptManager":Lorg/apache/logging/log4j/core/script/ScriptManager;
    .end local v1    # "bindings":Ljavax/script/Bindings;
    .end local v3    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternScript()Lorg/apache/logging/log4j/core/script/AbstractScript;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->patternScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    return-object v0
.end method

.method public getRoute(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/routing/Route;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->routes:[Lorg/apache/logging/log4j/core/appender/routing/Route;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 201
    .local v3, "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    return-object v3

    .line 200
    .end local v3    # "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoutes()[Lorg/apache/logging/log4j/core/appender/routing/Route;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->routes:[Lorg/apache/logging/log4j/core/appender/routing/Route;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 220
    .local v1, "first":Z
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/Routes;->routes:[Lorg/apache/logging/log4j/core/appender/routing/Route;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 221
    .local v5, "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    if-nez v1, :cond_0

    .line 222
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 225
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/appender/routing/Route;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .end local v5    # "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 227
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
