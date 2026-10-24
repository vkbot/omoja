.class public Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;
.super Ljava/lang/Object;
.source "AsyncQueueFullPolicyFactory.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field static final PROPERTY_NAME_ASYNC_EVENT_ROUTER:Ljava/lang/String; = "log4j2.AsyncQueueFullPolicy"

.field static final PROPERTY_NAME_DISCARDING_THRESHOLD_LEVEL:Ljava/lang/String; = "log4j2.DiscardThreshold"

.field static final PROPERTY_VALUE_DEFAULT_ASYNC_EVENT_ROUTER:Ljava/lang/String; = "Default"

.field static final PROPERTY_VALUE_DISCARDING_ASYNC_EVENT_ROUTER:Ljava/lang/String; = "Discard"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;
    .locals 3

    .line 68
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.AsyncQueueFullPolicy"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "router":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-class v1, Lorg/apache/logging/log4j/core/async/DefaultAsyncQueueFullPolicy;

    const-string v2, "Default"

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->isRouterSelected(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    const-class v1, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;

    const-string v2, "Discard"

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->isRouterSelected(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-static {}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->createDiscardingAsyncQueueFullPolicy()Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    move-result-object v1

    return-object v1

    .line 77
    :cond_1
    invoke-static {v0}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->createCustomRouter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    move-result-object v1

    return-object v1

    .line 71
    :cond_2
    :goto_0
    new-instance v1, Lorg/apache/logging/log4j/core/async/DefaultAsyncQueueFullPolicy;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/async/DefaultAsyncQueueFullPolicy;-><init>()V

    return-object v1
.end method

.method private static createCustomRouter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;
    .locals 4
    .param p0, "router"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "router"
        }
    .end annotation

    .line 91
    :try_start_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;>;"
    sget-object v1, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Creating custom AsyncQueueFullPolicy \'{}\'"

    invoke-interface {v1, v2, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 94
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;>;"
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    const-string v3, "Using DefaultAsyncQueueFullPolicy. Could not create custom AsyncQueueFullPolicy \'{}\': {}"

    invoke-interface {v1, v3, p0, v2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    new-instance v1, Lorg/apache/logging/log4j/core/async/DefaultAsyncQueueFullPolicy;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/async/DefaultAsyncQueueFullPolicy;-><init>()V

    return-object v1
.end method

.method private static createDiscardingAsyncQueueFullPolicy()Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;
    .locals 5

    .line 102
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 103
    .local v0, "util":Lorg/apache/logging/log4j/util/PropertiesUtil;
    sget-object v1, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log4j2.DiscardThreshold"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "level":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v2

    .line 105
    .local v2, "thresholdLevel":Lorg/apache/logging/log4j/Level;
    sget-object v3, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Creating custom DiscardingAsyncQueueFullPolicy(discardThreshold:{})"

    invoke-interface {v3, v4, v2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    new-instance v3, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;

    invoke-direct {v3, v2}, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;-><init>(Lorg/apache/logging/log4j/Level;)V

    return-object v3
.end method

.method private static isRouterSelected(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p0, "propertyValue"    # Ljava/lang/String;
    .param p2, "shortPropertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyValue",
            "policy",
            "shortPropertyValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 84
    .local p1, "policy":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0
.end method
