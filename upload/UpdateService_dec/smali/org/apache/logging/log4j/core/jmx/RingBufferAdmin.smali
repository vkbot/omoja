.class public Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
.super Ljava/lang/Object;
.source "RingBufferAdmin.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/jmx/RingBufferAdminMBean;


# instance fields
.field private final objectName:Ljavax/management/ObjectName;

.field private final ringBuffer:Lcom/lmax/disruptor/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lmax/disruptor/RingBuffer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/lmax/disruptor/RingBuffer;Ljava/lang/String;)V
    .locals 2
    .param p2, "mbeanName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ringBuffer",
            "mbeanName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lmax/disruptor/RingBuffer<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "ringBuffer":Lcom/lmax/disruptor/RingBuffer;, "Lcom/lmax/disruptor/RingBuffer<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;->ringBuffer:Lcom/lmax/disruptor/RingBuffer;

    .line 48
    :try_start_0
    new-instance v0, Ljavax/management/ObjectName;

    invoke-direct {v0, p2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;->objectName:Ljavax/management/ObjectName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    nop

    .line 52
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static forAsyncLogger(Lcom/lmax/disruptor/RingBuffer;Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    .locals 3
    .param p1, "contextName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ringBuffer",
            "contextName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lmax/disruptor/RingBuffer<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;"
        }
    .end annotation

    .line 32
    .local p0, "ringBuffer":Lcom/lmax/disruptor/RingBuffer;, "Lcom/lmax/disruptor/RingBuffer<*>;"
    invoke-static {p1}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "ctxName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "org.apache.logging.log4j2:type=%s,component=AsyncLoggerRingBuffer"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;

    invoke-direct {v2, p0, v1}, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;-><init>(Lcom/lmax/disruptor/RingBuffer;Ljava/lang/String;)V

    return-object v2
.end method

.method public static forAsyncLoggerConfig(Lcom/lmax/disruptor/RingBuffer;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    .locals 4
    .param p1, "contextName"    # Ljava/lang/String;
    .param p2, "configName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ringBuffer",
            "contextName",
            "configName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lmax/disruptor/RingBuffer<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;"
        }
    .end annotation

    .line 39
    .local p0, "ringBuffer":Lcom/lmax/disruptor/RingBuffer;, "Lcom/lmax/disruptor/RingBuffer<*>;"
    invoke-static {p1}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "ctxName":Ljava/lang/String;
    invoke-static {p2}, Lorg/apache/logging/log4j/core/jmx/Server;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "cfgName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v3, "org.apache.logging.log4j2:type=%s,component=Loggers,name=%s,subtype=RingBuffer"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;

    invoke-direct {v3, p0, v2}, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;-><init>(Lcom/lmax/disruptor/RingBuffer;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public getBufferSize()J
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;->ringBuffer:Lcom/lmax/disruptor/RingBuffer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/lmax/disruptor/RingBuffer;->getBufferSize()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getObjectName()Ljavax/management/ObjectName;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;->objectName:Ljavax/management/ObjectName;

    return-object v0
.end method

.method public getRemainingCapacity()J
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;->ringBuffer:Lcom/lmax/disruptor/RingBuffer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/lmax/disruptor/RingBuffer;->remainingCapacity()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
