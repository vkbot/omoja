.class public abstract enum Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;
.super Ljava/lang/Enum;
.source "ThreadNameCachingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

.field public static final enum CACHED:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

.field static final DEFAULT_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

.field private static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

.field private static final THREADLOCAL_NAME:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNCACHED:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy$1;

    const-string v1, "CACHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->CACHED:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    .line 43
    new-instance v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy$2;

    const-string v1, "UNCACHED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->UNCACHED:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    .line 31
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    sget-object v4, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->CACHED:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->$VALUES:[Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    .line 50
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 51
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->THREADLOCAL_NAME:Ljava/lang/ThreadLocal;

    .line 52
    invoke-static {}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->isAllocatingThreadGetName()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->CACHED:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->UNCACHED:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    :goto_0
    sput-object v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->DEFAULT_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy$1;

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->THREADLOCAL_NAME:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static create()Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;
    .locals 6

    .line 57
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "AsyncLogger.ThreadNameStrategy"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->DEFAULT_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    .line 60
    .local v1, "result":Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;
    :goto_0
    sget-object v2, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v3, "AsyncLogger.ThreadNameStrategy={} (user specified {}, default is {})"

    .line 61
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->DEFAULT_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->name()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v2, v3, v4, v0, v5}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object v1

    .line 63
    .end local v1    # "result":Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    sget-object v3, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->DEFAULT_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    .line 65
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    const-string v5, "Using AsyncLogger.ThreadNameStrategy.{}: \'{}\' not valid: {}"

    invoke-virtual {v2, v5, v3, v0, v4}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    sget-object v2, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->DEFAULT_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    return-object v2
.end method

.method static isAllocatingThreadGetName()Z
    .locals 6

    .line 72
    sget v0, Lorg/apache/logging/log4j/util/Constants;->JAVA_MAJOR_VERSION:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 74
    :try_start_0
    const-string v0, "(\\d+)\\.(\\d+)\\.(\\d+)_(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 75
    .local v0, "javaVersionPattern":Ljava/util/regex/Pattern;
    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 76
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x66

    if-ge v4, v5, :cond_0

    move v1, v3

    :cond_0
    return v1

    .line 79
    :cond_1
    return v3

    .line 80
    .end local v0    # "javaVersionPattern":Ljava/util/regex/Pattern;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    return v3

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget v0, Lorg/apache/logging/log4j/util/Constants;->JAVA_MAJOR_VERSION:I

    if-ge v0, v2, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 31
    const-class v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->$VALUES:[Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    return-object v0
.end method


# virtual methods
.method abstract getThreadName()Ljava/lang/String;
.end method
