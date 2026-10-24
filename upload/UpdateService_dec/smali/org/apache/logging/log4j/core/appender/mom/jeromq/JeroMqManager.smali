.class public Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;
.super Lorg/apache/logging/log4j/core/appender/AbstractManager;
.source "JeroMqManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;
    }
.end annotation


# static fields
.field private static final CONTEXT:Lorg/zeromq/ZMQ$Context;

.field private static final FACTORY:Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqManagerFactory;

.field private static final SHUTDOWN_HOOK:Lorg/apache/logging/log4j/core/util/Cancellable;

.field public static final SYS_PROPERTY_ENABLE_SHUTDOWN_HOOK:Ljava/lang/String; = "log4j.jeromq.enableShutdownHook"

.field public static final SYS_PROPERTY_IO_THREADS:Ljava/lang/String; = "log4j.jeromq.ioThreads"


# instance fields
.field private final publisher:Lorg/zeromq/ZMQ$Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 49
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqManagerFactory;

    .line 56
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {}, Lorg/zeromq/ZMQ;->getVersionString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JeroMqManager using ZMQ version {}"

    invoke-interface {v0, v3, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v2, "log4j.jeromq.ioThreads"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, "ioThreads":I
    sget-object v2, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "JeroMqManager creating ZMQ context with ioThreads = {}"

    invoke-interface {v2, v5, v4}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    invoke-static {v0}, Lorg/zeromq/ZMQ;->context(I)Lorg/zeromq/ZMQ$Context;

    move-result-object v2

    sput-object v2, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->CONTEXT:Lorg/zeromq/ZMQ$Context;

    .line 62
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v2

    const-string v4, "log4j.jeromq.enableShutdownHook"

    invoke-virtual {v2, v4, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    .line 64
    .local v2, "enableShutdownHook":Z
    if-eqz v2, :cond_0

    .line 65
    invoke-static {}, Lorg/apache/logging/log4j/LogManager;->getFactory()Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;

    sget-object v3, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->CONTEXT:Lorg/zeromq/ZMQ$Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/apache/logging/log4j/core/appender/mom/jeromq/-$$Lambda$JeroMqManager$LMbrUxKBK7R9xHokti_y-lsnKfw;

    invoke-direct {v4, v3}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/-$$Lambda$JeroMqManager$LMbrUxKBK7R9xHokti_y-lsnKfw;-><init>(Lorg/zeromq/ZMQ$Context;)V

    invoke-interface {v1, v4}, Lorg/apache/logging/log4j/core/util/ShutdownCallbackRegistry;->addShutdownCallback(Ljava/lang/Runnable;)Lorg/apache/logging/log4j/core/util/Cancellable;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->SHUTDOWN_HOOK:Lorg/apache/logging/log4j/core/util/Cancellable;

    goto :goto_0

    .line 67
    :cond_0
    sput-object v1, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->SHUTDOWN_HOOK:Lorg/apache/logging/log4j/core/util/Cancellable;

    .line 69
    .end local v0    # "ioThreads":I
    .end local v2    # "enableShutdownHook":Z
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "config"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->CONTEXT:Lorg/zeromq/ZMQ$Context;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/zeromq/ZMQ$Context;->socket(I)Lorg/zeromq/ZMQ$Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    .line 76
    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$100(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setAffinity(J)Z

    .line 77
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$200(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setBacklog(J)Z

    .line 78
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$300(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zeromq/ZMQ$Socket;->setDelayAttachOnConnect(Z)Z

    .line 79
    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$400(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$400(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/zeromq/ZMQ$Socket;->setIdentity([B)Z

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$500(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zeromq/ZMQ$Socket;->setIPv4Only(Z)Z

    .line 83
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$600(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setLinger(J)Z

    .line 84
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$700(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setMaxMsgSize(J)Z

    .line 85
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$800(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setRcvHWM(J)Z

    .line 86
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$900(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setReceiveBufferSize(J)Z

    .line 87
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$1000(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zeromq/ZMQ$Socket;->setReceiveTimeOut(I)Z

    .line 88
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$1100(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setReconnectIVL(J)Z

    .line 89
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$1200(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setReconnectIVLMax(J)Z

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$1300(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setSendBufferSize(J)Z

    .line 91
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$1400(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zeromq/ZMQ$Socket;->setSendTimeOut(I)Z

    .line 92
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$1500(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setSndHWM(J)Z

    .line 93
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$1600(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zeromq/ZMQ$Socket;->setTCPKeepAlive(I)Z

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$1700(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setTCPKeepAliveCount(J)Z

    .line 95
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$1800(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setTCPKeepAliveIdle(J)Z

    .line 96
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$1900(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/zeromq/ZMQ$Socket;->setTCPKeepAliveInterval(J)Z

    .line 97
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$2000(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zeromq/ZMQ$Socket;->setXpubVerbose(Z)Z

    .line 98
    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;->access$2100(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "endpoint":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-virtual {v2, v1}, Lorg/zeromq/ZMQ$Socket;->bind(Ljava/lang/String;)Z

    .line 100
    .end local v1    # "endpoint":Ljava/lang/String;
    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Created JeroMqManager with {}"

    invoke-interface {v0, v1, p2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$1;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)V

    return-void
.end method

.method public static getContext()Lorg/zeromq/ZMQ$Context;
    .locals 1

    .line 132
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->CONTEXT:Lorg/zeromq/ZMQ$Context;

    return-object v0
.end method

.method public static getJeroMqManager(Ljava/lang/String;JJZ[BZJJJJIJJJIJIJJJZLjava/util/List;)Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;
    .locals 40
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "affinity"    # J
    .param p3, "backlog"    # J
    .param p5, "delayAttachOnConnect"    # Z
    .param p6, "identity"    # [B
    .param p7, "ipv4Only"    # Z
    .param p8, "linger"    # J
    .param p10, "maxMsgSize"    # J
    .param p12, "rcvHwm"    # J
    .param p14, "receiveBufferSize"    # J
    .param p16, "receiveTimeOut"    # I
    .param p17, "reconnectIVL"    # J
    .param p19, "reconnectIVLMax"    # J
    .param p21, "sendBufferSize"    # J
    .param p23, "sendTimeOut"    # I
    .param p24, "sndHwm"    # J
    .param p26, "tcpKeepAlive"    # I
    .param p27, "tcpKeepAliveCount"    # J
    .param p29, "tcpKeepAliveIdle"    # J
    .param p31, "tcpKeepAliveInterval"    # J
    .param p33, "xpubVerbose"    # Z
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
            "affinity",
            "backlog",
            "delayAttachOnConnect",
            "identity",
            "ipv4Only",
            "linger",
            "maxMsgSize",
            "rcvHwm",
            "receiveBufferSize",
            "receiveTimeOut",
            "reconnectIVL",
            "reconnectIVLMax",
            "sendBufferSize",
            "sendTimeOut",
            "sndHwm",
            "tcpKeepAlive",
            "tcpKeepAliveCount",
            "tcpKeepAliveIdle",
            "tcpKeepAliveInterval",
            "xpubVerbose",
            "endpoints"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJZ[BZJJJJIJJJIJIJJJZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;"
        }
    .end annotation

    .local p34, "endpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move-wide/from16 v17, p17

    move-wide/from16 v19, p19

    move-wide/from16 v21, p21

    move/from16 v23, p23

    move-wide/from16 v24, p24

    move/from16 v26, p26

    move-wide/from16 v27, p27

    move-wide/from16 v29, p29

    move-wide/from16 v31, p31

    move/from16 v33, p33

    move-object/from16 v34, p34

    .line 124
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqManagerFactory;

    move-wide/from16 v36, v1

    new-instance v1, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    move-object v2, v0

    move-object v0, v1

    const/16 v35, 0x0

    move-object/from16 v39, v1

    move-object/from16 v38, v2

    move-wide/from16 v1, v36

    invoke-direct/range {v0 .. v35}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;-><init>(JJZ[BZJJJJIJJJIJIJJJZLjava/util/List;Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$1;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;

    return-object v1
.end method

.method public static synthetic lambda$LMbrUxKBK7R9xHokti_y-lsnKfw(Lorg/zeromq/ZMQ$Context;)V
    .locals 0

    invoke-virtual {p0}, Lorg/zeromq/ZMQ$Context;->close()V

    return-void
.end method


# virtual methods
.method protected releaseSub(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
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

    .line 110
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-virtual {v0}, Lorg/zeromq/ZMQ$Socket;->close()V

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public send([B)Z
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->publisher:Lorg/zeromq/ZMQ$Socket;

    invoke-virtual {v0, p1}, Lorg/zeromq/ZMQ$Socket;->send([B)Z

    move-result v0

    return v0
.end method
