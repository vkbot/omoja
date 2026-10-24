.class public final Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "RoutingAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$ReferencedRouteAppenderControl;,
        Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;,
        Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;,
        Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "Routing"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_KEY:Ljava/lang/String; = "ROUTING_APPENDER_DEFAULT"

.field public static final STATIC_VARIABLES_KEY:Ljava/lang/String; = "staticVariables"


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final createdAppenders:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;",
            ">;"
        }
    .end annotation
.end field

.field private final createdAppendersUnmodifiableView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/AppenderControl;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRoute:Lorg/apache/logging/log4j/core/appender/routing/Route;

.field private final defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

.field private final purgePolicy:Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;

.field private final referencedAppenders:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;",
            ">;"
        }
    .end annotation
.end field

.field private final rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;

.field private final routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

.field private final scriptStaticVariables:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/routing/Routes;Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "ignoreExceptions"    # Z
    .param p4, "routes"    # Lorg/apache/logging/log4j/core/appender/routing/Routes;
    .param p5, "rewritePolicy"    # Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;
    .param p6, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p7, "purgePolicy"    # Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;
    .param p8, "defaultRouteScript"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p9, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            0x10
        }
        names = {
            "name",
            "filter",
            "ignoreExceptions",
            "routes",
            "rewritePolicy",
            "configuration",
            "purgePolicy",
            "defaultRouteScript",
            "properties"
        }
    .end annotation

    .line 162
    move-object v6, p0

    move-object/from16 v7, p7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 150
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v6, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->createdAppenders:Ljava/util/concurrent/ConcurrentMap;

    .line 151
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->createdAppendersUnmodifiableView:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v6, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->referencedAppenders:Ljava/util/concurrent/ConcurrentMap;

    .line 157
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v6, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->scriptStaticVariables:Ljava/util/concurrent/ConcurrentMap;

    .line 163
    move-object/from16 v0, p4

    iput-object v0, v6, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

    .line 164
    move-object/from16 v1, p6

    iput-object v1, v6, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 165
    move-object/from16 v2, p5

    iput-object v2, v6, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;

    .line 166
    iput-object v7, v6, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->purgePolicy:Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;

    .line 167
    if-eqz v7, :cond_0

    .line 168
    invoke-interface {v7, p0}, Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;->initialize(Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;)V

    .line 170
    :cond_0
    move-object/from16 v3, p8

    iput-object v3, v6, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 171
    const/4 v4, 0x0

    .line 172
    .local v4, "defRoute":Lorg/apache/logging/log4j/core/appender/routing/Route;
    invoke-virtual/range {p4 .. p4}, Lorg/apache/logging/log4j/core/appender/routing/Routes;->getRoutes()[Lorg/apache/logging/log4j/core/appender/routing/Route;

    move-result-object v5

    array-length v8, v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v10, v5, v9

    .line 173
    .local v10, "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getKey()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 174
    if-nez v4, :cond_1

    .line 175
    move-object v4, v10

    goto :goto_1

    .line 177
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Multiple default routes. Route "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/appender/routing/Route;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " will be ignored"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->error(Ljava/lang/String;)V

    .line 172
    .end local v10    # "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 181
    :cond_3
    iput-object v4, v6, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRoute:Lorg/apache/logging/log4j/core/appender/routing/Route;

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/routing/Routes;Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/appender/routing/Routes;
    .param p5, "x4"    # Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;
    .param p6, "x5"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p7, "x6"    # Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;
    .param p8, "x7"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p9, "x8"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p10, "x9"    # Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$1;

    .line 57
    invoke-direct/range {p0 .. p9}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/routing/Routes;Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method private createAppender(Lorg/apache/logging/log4j/core/appender/routing/Route;Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Appender;
    .locals 6
    .param p1, "route"    # Lorg/apache/logging/log4j/core/appender/routing/Route;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "route",
            "event"
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getNode()Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v0

    .line 307
    .local v0, "routeNode":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/Node;

    .line 308
    .local v2, "node":Lorg/apache/logging/log4j/core/config/Node;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "appender"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    new-instance v1, Lorg/apache/logging/log4j/core/config/Node;

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;)V

    .line 310
    .local v1, "appNode":Lorg/apache/logging/log4j/core/config/Node;
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v4, v1, p2}, Lorg/apache/logging/log4j/core/config/Configuration;->createConfiguration(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 311
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/logging/log4j/core/Appender;

    if-eqz v4, :cond_0

    .line 312
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/Node;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/Appender;

    .line 313
    .local v3, "app":Lorg/apache/logging/log4j/core/Appender;
    invoke-interface {v3}, Lorg/apache/logging/log4j/core/Appender;->start()V

    .line 314
    return-object v3

    .line 316
    .end local v3    # "app":Lorg/apache/logging/log4j/core/Appender;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create Appender of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->error(Ljava/lang/String;)V

    .line 317
    return-object v3

    .line 319
    .end local v1    # "appNode":Lorg/apache/logging/log4j/core/config/Node;
    .end local v2    # "node":Lorg/apache/logging/log4j/core/config/Node;
    :cond_1
    goto :goto_0

    .line 320
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Appender was configured for route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->error(Ljava/lang/String;)V

    .line 321
    return-object v3
.end method

.method public static createAppender(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/routing/Routes;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "ignore"    # Ljava/lang/String;
    .param p2, "routes"    # Lorg/apache/logging/log4j/core/appender/routing/Routes;
    .param p3, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p4, "rewritePolicy"    # Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;
    .param p5, "purgePolicy"    # Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;
    .param p6, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "ignore",
            "routes",
            "config",
            "rewritePolicy",
            "purgePolicy",
            "filter"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    const/4 v0, 0x1

    move-object v1, p1

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 382
    .local v0, "ignoreExceptions":Z
    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 383
    sget-object v3, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "No name provided for RoutingAppender"

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 384
    return-object v2

    .line 386
    :cond_0
    if-nez p2, :cond_1

    .line 387
    sget-object v3, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "No routes defined for RoutingAppender"

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 388
    return-object v2

    .line 390
    :cond_1
    new-instance v12, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v12

    move-object v3, p0

    move-object/from16 v4, p6

    move v5, v0

    move-object v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v11}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/routing/Routes;Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v12
.end method

.method private getAppender(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->referencedAppenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;

    .line 299
    .local v0, "result":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;
    if-nez v0, :cond_0

    .line 300
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->createdAppenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;

    return-object v1

    .line 302
    :cond_0
    return-object v0
.end method

.method private declared-synchronized getControl(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "event"
        }
    .end annotation

    monitor-enter p0

    .line 261
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->getAppender(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;

    move-result-object v0

    .line 262
    .local v0, "control":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;->checkout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-object v0

    .line 266
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
    :cond_0
    const/4 v1, 0x0

    .line 267
    .local v1, "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    :try_start_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/routing/Routes;->getRoutes()[Lorg/apache/logging/log4j/core/appender/routing/Route;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 268
    .local v5, "r":Lorg/apache/logging/log4j/core/appender/routing/Route;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getAppenderRef()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    move-object v1, v5

    .line 270
    goto :goto_1

    .line 267
    .end local v5    # "r":Lorg/apache/logging/log4j/core/appender/routing/Route;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 274
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRoute:Lorg/apache/logging/log4j/core/appender/routing/Route;

    move-object v1, v2

    .line 275
    const-string v2, "ROUTING_APPENDER_DEFAULT"

    invoke-direct {p0, v2}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->getAppender(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;

    move-result-object v2

    move-object v0, v2

    .line 276
    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;->checkout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    monitor-exit p0

    return-object v0

    .line 281
    :cond_3
    if-eqz v1, :cond_5

    .line 282
    :try_start_2
    invoke-direct {p0, v1, p2}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->createAppender(Lorg/apache/logging/log4j/core/appender/routing/Route;Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Appender;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    .local v2, "app":Lorg/apache/logging/log4j/core/Appender;
    if-nez v2, :cond_4

    .line 284
    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 286
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
    :cond_4
    :try_start_3
    new-instance v3, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;

    invoke-direct {v3, v2}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;)V

    .line 287
    .local v3, "created":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;
    move-object v0, v3

    .line 288
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->createdAppenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .end local v2    # "app":Lorg/apache/logging/log4j/core/Appender;
    .end local v3    # "created":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
    :cond_5
    if-eqz v0, :cond_6

    .line 292
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;->checkout()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    :cond_6
    monitor-exit p0

    return-object v0

    .line 260
    .end local v0    # "control":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;
    .end local v1    # "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 142
    new-instance v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;

    return-object v0
.end method

.method private updatePurgePolicy(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "event"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->purgePolicy:Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->referencedAppenders:Ljava/util/concurrent/ConcurrentMap;

    .line 255
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->purgePolicy:Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;->update(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;->rewrite(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object p1

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->scriptStaticVariables:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lorg/apache/logging/log4j/core/appender/routing/Routes;->getPattern(Lorg/apache/logging/log4j/core/LogEvent;Ljava/util/concurrent/ConcurrentMap;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "pattern":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRoute:Lorg/apache/logging/log4j/core/appender/routing/Route;

    .line 239
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRoute:Lorg/apache/logging/log4j/core/appender/routing/Route;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "ROUTING_APPENDER_DEFAULT"

    :goto_0
    nop

    .line 240
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->getControl(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;

    move-result-object v2

    .line 241
    .local v2, "control":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;
    if-eqz v2, :cond_3

    .line 243
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;->callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;->release()V

    .line 246
    goto :goto_1

    .line 245
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$RouteAppenderControl;->release()V

    throw v3

    .line 248
    :cond_3
    :goto_1
    invoke-direct {p0, v1, p1}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->updatePurgePolicy(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 249
    return-void
.end method

.method public deleteAppender(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 338
    sget-object v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Deleting route with {} key "

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->createdAppenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;

    .line 341
    .local v0, "control":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;
    if-eqz v0, :cond_0

    .line 342
    sget-object v1, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Stopping route with {} key"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    monitor-enter p0

    .line 346
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->access$402(Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;Z)Z

    .line 347
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->tryStopAppender()V

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 351
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->referencedAppenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    sget-object v1, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Route {} using an appender reference may not be removed because the appender may be used outside of the RoutingAppender"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 355
    :cond_1
    sget-object v1, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Route with {} key already deleted"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    :goto_0
    return-void
.end method

.method public getAppenders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/AppenderControl;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->createdAppendersUnmodifiableView:Ljava/util/Map;

    return-object v0
.end method

.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getDefaultRoute()Lorg/apache/logging/log4j/core/appender/routing/Route;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRoute:Lorg/apache/logging/log4j/core/appender/routing/Route;

    return-object v0
.end method

.method public getDefaultRouteScript()Lorg/apache/logging/log4j/core/script/AbstractScript;
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    return-object v0
.end method

.method public getPurgePolicy()Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->purgePolicy:Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;

    return-object v0
.end method

.method public getRewritePolicy()Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;

    return-object v0
.end method

.method public getRoutes()Lorg/apache/logging/log4j/core/appender/routing/Routes;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

    return-object v0
.end method

.method public getScriptStaticVariables()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->scriptStaticVariables:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public start()V
    .locals 8

    .line 186
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    if-nez v0, :cond_0

    .line 188
    const-string v0, "No Configuration defined for RoutingAppender; required for Script element."

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v0

    .line 191
    .local v0, "scriptManager":Lorg/apache/logging/log4j/core/script/ScriptManager;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/script/ScriptManager;->createBindings(Lorg/apache/logging/log4j/core/script/AbstractScript;)Ljavax/script/Bindings;

    move-result-object v1

    .line 192
    .local v1, "bindings":Ljavax/script/Bindings;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->scriptStaticVariables:Ljava/util/concurrent/ConcurrentMap;

    const-string v3, "staticVariables"

    invoke-interface {v1, v3, v2}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/script/ScriptManager;->execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, "object":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/core/appender/routing/Routes;->getRoute(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/routing/Route;

    move-result-object v3

    .line 195
    .local v3, "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    if-eqz v3, :cond_1

    .line 196
    iput-object v3, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRoute:Lorg/apache/logging/log4j/core/appender/routing/Route;

    .line 201
    .end local v0    # "scriptManager":Lorg/apache/logging/log4j/core/script/ScriptManager;
    .end local v1    # "bindings":Ljavax/script/Bindings;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/routing/Routes;->getRoutes()[Lorg/apache/logging/log4j/core/appender/routing/Route;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 202
    .restart local v3    # "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getAppenderRef()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 203
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getAppenderRef()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/core/config/Configuration;->getAppender(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Appender;

    move-result-object v4

    .line 204
    .local v4, "appender":Lorg/apache/logging/log4j/core/Appender;
    if-eqz v4, :cond_3

    .line 205
    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->defaultRoute:Lorg/apache/logging/log4j/core/appender/routing/Route;

    if-ne v3, v5, :cond_2

    const-string v5, "ROUTING_APPENDER_DEFAULT"

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "key":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->referencedAppenders:Ljava/util/concurrent/ConcurrentMap;

    new-instance v7, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$ReferencedRouteAppenderControl;

    invoke-direct {v7, v4}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$ReferencedRouteAppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;)V

    invoke-interface {v6, v5, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_3

    .line 208
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Appender "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/appender/routing/Route;->getAppenderRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cannot be located. Route ignored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->error(Ljava/lang/String;)V

    .line 201
    .end local v3    # "route":Lorg/apache/logging/log4j/core/appender/routing/Route;
    .end local v4    # "appender":Lorg/apache/logging/log4j/core/Appender;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    :cond_5
    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->start()V

    .line 213
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->setStopping()V

    .line 218
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    .line 220
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->createdAppenders:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 221
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;->getAppender()Lorg/apache/logging/log4j/core/Appender;

    move-result-object v2

    .line 222
    .local v2, "appender":Lorg/apache/logging/log4j/core/Appender;
    instance-of v3, v2, Lorg/apache/logging/log4j/core/LifeCycle2;

    if-eqz v3, :cond_0

    .line 223
    move-object v3, v2

    check-cast v3, Lorg/apache/logging/log4j/core/LifeCycle2;

    invoke-interface {v3, p1, p2, p3}, Lorg/apache/logging/log4j/core/LifeCycle2;->stop(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_1

    .line 225
    :cond_0
    invoke-interface {v2}, Lorg/apache/logging/log4j/core/Appender;->stop()V

    .line 227
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$CreatedRouteAppenderControl;>;"
    .end local v2    # "appender":Lorg/apache/logging/log4j/core/Appender;
    :goto_1
    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->setStopped()V

    .line 229
    const/4 v0, 0x1

    return v0
.end method
