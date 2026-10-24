.class public final Lorg/apache/logging/log4j/core/util/ClockFactory;
.super Ljava/lang/Object;
.source "ClockFactory.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

.field public static final PROPERTY_NAME:Ljava/lang/String; = "log4j.Clock"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/ClockFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static aliases()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/util/Clock;",
            ">;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/util/Clock;>;>;"
    sget-object v1, Lorg/apache/logging/log4j/core/util/-$$Lambda$H4ie0B1bHiNVl8iCiIDOMb5NXNw;->INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$H4ie0B1bHiNVl8iCiIDOMb5NXNw;

    const-string v2, "SystemClock"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lorg/apache/logging/log4j/core/util/-$$Lambda$11MdKcU0CfbiGE6Sd4hL5-nXhTQ;->INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$11MdKcU0CfbiGE6Sd4hL5-nXhTQ;

    const-string v2, "SystemMillisClock"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lorg/apache/logging/log4j/core/util/-$$Lambda$vP2PePRC2gizS0QPo5Gr7XL4NpY;->INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$vP2PePRC2gizS0QPo5Gr7XL4NpY;

    const-string v2, "CachedClock"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lorg/apache/logging/log4j/core/util/-$$Lambda$jtcmVMmQs1qXecROhWbH0t8MfaQ;->INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$jtcmVMmQs1qXecROhWbH0t8MfaQ;

    const-string v2, "CoarseCachedClock"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lorg/apache/logging/log4j/core/util/-$$Lambda$vP2PePRC2gizS0QPo5Gr7XL4NpY;->INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$vP2PePRC2gizS0QPo5Gr7XL4NpY;

    const-string v2, "org.apache.logging.log4j.core.util.CachedClock"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lorg/apache/logging/log4j/core/util/-$$Lambda$jtcmVMmQs1qXecROhWbH0t8MfaQ;->INSTANCE:Lorg/apache/logging/log4j/core/util/-$$Lambda$jtcmVMmQs1qXecROhWbH0t8MfaQ;

    const-string v2, "org.apache.logging.log4j.core.util.CoarseCachedClock"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object v0
.end method

.method private static createClock()Lorg/apache/logging/log4j/core/util/Clock;
    .locals 6

    .line 82
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j.Clock"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "userRequest":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 84
    sget-object v1, Lorg/apache/logging/log4j/core/util/ClockFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Using default SystemClock for timestamps."

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;)V

    .line 85
    new-instance v1, Lorg/apache/logging/log4j/core/util/SystemClock;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/util/SystemClock;-><init>()V

    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/ClockFactory;->logSupportedPrecision(Lorg/apache/logging/log4j/core/util/Clock;)Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v1

    return-object v1

    .line 87
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/util/ClockFactory;->aliases()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/util/Supplier;

    .line 88
    .local v1, "specified":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/util/Clock;>;"
    if-eqz v1, :cond_1

    .line 89
    sget-object v2, Lorg/apache/logging/log4j/core/util/ClockFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v3, "Using specified {} for timestamps."

    invoke-virtual {v2, v3, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-interface {v1}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/util/Clock;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/ClockFactory;->logSupportedPrecision(Lorg/apache/logging/log4j/core/util/Clock;)Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v2

    return-object v2

    .line 93
    :cond_1
    :try_start_0
    const-class v2, Lorg/apache/logging/log4j/core/util/Clock;

    invoke-static {v0, v2}, Lorg/apache/logging/log4j/core/util/Loader;->newCheckedInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/util/Clock;

    .line 94
    .local v2, "result":Lorg/apache/logging/log4j/core/util/Clock;
    sget-object v3, Lorg/apache/logging/log4j/core/util/ClockFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v4, "Using {} for timestamps."

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/ClockFactory;->logSupportedPrecision(Lorg/apache/logging/log4j/core/util/Clock;)Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 96
    .end local v2    # "result":Lorg/apache/logging/log4j/core/util/Clock;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Could not create {}: {}, using default SystemClock for timestamps."

    .line 98
    .local v3, "fmt":Ljava/lang/String;
    sget-object v4, Lorg/apache/logging/log4j/core/util/ClockFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v5, "Could not create {}: {}, using default SystemClock for timestamps."

    invoke-virtual {v4, v5, v0, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    new-instance v4, Lorg/apache/logging/log4j/core/util/SystemClock;

    invoke-direct {v4}, Lorg/apache/logging/log4j/core/util/SystemClock;-><init>()V

    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/ClockFactory;->logSupportedPrecision(Lorg/apache/logging/log4j/core/util/Clock;)Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v4

    return-object v4
.end method

.method public static getClock()Lorg/apache/logging/log4j/core/util/Clock;
    .locals 1

    .line 67
    invoke-static {}, Lorg/apache/logging/log4j/core/util/ClockFactory;->createClock()Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method private static logSupportedPrecision(Lorg/apache/logging/log4j/core/util/Clock;)Lorg/apache/logging/log4j/core/util/Clock;
    .locals 4
    .param p0, "clock"    # Lorg/apache/logging/log4j/core/util/Clock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clock"
        }
    .end annotation

    .line 104
    instance-of v0, p0, Lorg/apache/logging/log4j/core/time/PreciseClock;

    if-eqz v0, :cond_0

    const-string v0, "supports"

    goto :goto_0

    :cond_0
    const-string v0, "does not support"

    .line 105
    .local v0, "support":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/apache/logging/log4j/core/util/ClockFactory;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} {} precise timestamps."

    invoke-virtual {v1, v3, v2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    return-object p0
.end method
