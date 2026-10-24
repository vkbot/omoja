.class public final Lorg/apache/logging/log4j/core/filter/BurstFilter;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter;
.source "BurstFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;,
        Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "filter"
    name = "BurstFilter"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_RATE:I = 0xa

.field private static final DEFAULT_RATE_MULTIPLE:I = 0x64

.field private static final HASH_SHIFT:I = 0x20

.field private static final NANOS_IN_SECONDS:J = 0x3b9aca00L


# instance fields
.field private final available:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;",
            ">;"
        }
    .end annotation
.end field

.field private final burstInterval:J

.field private final history:Ljava/util/concurrent/DelayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/DelayQueue<",
            "Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;",
            ">;"
        }
    .end annotation
.end field

.field private final level:Lorg/apache/logging/log4j/Level;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/Level;FJLorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V
    .locals 4
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "rate"    # F
    .param p3, "maxBurst"    # J
    .param p5, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p6, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "rate",
            "maxBurst",
            "onMatch",
            "onMismatch"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p5, p6}, Lorg/apache/logging/log4j/core/filter/AbstractFilter;-><init>(Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/DelayQueue;

    invoke-direct {v0}, Ljava/util/concurrent/DelayQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->history:Ljava/util/concurrent/DelayQueue;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->available:Ljava/util/Queue;

    .line 88
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->level:Lorg/apache/logging/log4j/Level;

    .line 89
    long-to-float v0, p3

    div-float/2addr v0, p2

    const v1, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->burstInterval:J

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v1, v0

    cmp-long v1, v1, p3

    if-gez v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->available:Ljava/util/Queue;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->createLogDelay(J)Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/Level;FJLorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/filter/BurstFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/Level;
    .param p2, "x1"    # F
    .param p3, "x2"    # J
    .param p5, "x3"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p6, "x4"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p7, "x5"    # Lorg/apache/logging/log4j/core/filter/BurstFilter$1;

    .line 57
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/filter/BurstFilter;-><init>(Lorg/apache/logging/log4j/Level;FJLorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    return-void
.end method

.method static createLogDelay(J)Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;
    .locals 1
    .param p0, "expireTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expireTime"
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;-><init>(J)V

    return-object v0
.end method

.method private filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 3
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/Level;->isMoreSpecificThan(Lorg/apache/logging/log4j/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->history:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;

    .line 197
    .local v0, "delay":Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;
    :goto_0
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->available:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->history:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;

    goto :goto_0

    .line 201
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->available:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;

    .line 202
    if-eqz v0, :cond_1

    .line 203
    iget-wide v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->burstInterval:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;->setDelay(J)V

    .line 204
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->history:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/DelayQueue;->add(Ljava/util/concurrent/Delayed;)Z

    .line 205
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v1

    .line 207
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v1

    .line 209
    .end local v0    # "delay":Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 290
    new-instance v0, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/filter/BurstFilter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 225
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->history:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;

    .line 226
    .local v1, "delay":Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->history:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/DelayQueue;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->available:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v1    # "delay":Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;
    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method public filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 115
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
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
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
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
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
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
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
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
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
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
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
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
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .param p14, "p9"    # Ljava/lang/Object;
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
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 184
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "params"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/BurstFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public getAvailable()I
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->available:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->burstInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter;->history:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/DelayQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
