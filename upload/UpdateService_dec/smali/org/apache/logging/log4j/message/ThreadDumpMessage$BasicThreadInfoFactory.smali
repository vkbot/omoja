.class Lorg/apache/logging/log4j/message/ThreadDumpMessage$BasicThreadInfoFactory;
.super Ljava/lang/Object;
.source "ThreadDumpMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/ThreadDumpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicThreadInfoFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/message/ThreadDumpMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/message/ThreadDumpMessage$1;

    .line 185
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage$BasicThreadInfoFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createThreadInfo()Ljava/util/Map;
    .locals 6
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

    .line 188
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 189
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v1, Ljava/util/HashMap;

    .line 190
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 191
    .local v1, "threads":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/message/ThreadInformation;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 192
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v4, Lorg/apache/logging/log4j/message/BasicThreadInformation;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    invoke-direct {v4, v5}, Lorg/apache/logging/log4j/message/BasicThreadInformation;-><init>(Ljava/lang/Thread;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    goto :goto_0

    .line 194
    :cond_0
    return-object v1
.end method
