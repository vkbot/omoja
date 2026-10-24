.class public Lorg/apache/logging/log4j/core/message/ExtendedThreadInfoFactory;
.super Ljava/lang/Object;
.source "ExtendedThreadInfoFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Ljava/lang/management/ThreadInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 35
    .local v0, "methods":[Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    .line 36
    .local v1, "basic":Z
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 37
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getLockInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    const/4 v1, 0x0

    .line 39
    goto :goto_1

    .line 36
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 45
    return-void

    .line 43
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method


# virtual methods
.method public createThreadInfo()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/message/ThreadInformation;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    .line 49
    .local v0, "bean":Ljava/lang/management/ThreadMXBean;
    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Ljava/lang/management/ThreadMXBean;->dumpAllThreads(ZZ)[Ljava/lang/management/ThreadInfo;

    move-result-object v1

    .line 51
    .local v1, "array":[Ljava/lang/management/ThreadInfo;
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 53
    .local v2, "threads":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/message/ThreadInformation;[Ljava/lang/StackTraceElement;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 54
    .local v5, "info":Ljava/lang/management/ThreadInfo;
    new-instance v6, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;

    invoke-direct {v6, v5}, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;-><init>(Ljava/lang/management/ThreadInfo;)V

    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v5    # "info":Ljava/lang/management/ThreadInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-object v2
.end method
