.class public final Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "JeroMqAppender.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "JeroMQ"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_BACKLOG:I = 0x64

.field private static final DEFAULT_IVL:I = 0x64

.field private static final DEFAULT_RCV_HWM:I = 0x3e8

.field private static final DEFAULT_SND_HWM:I = 0x3e8


# instance fields
.field private final endpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;

.field private sendRcFalse:I

.field private sendRcTrue:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;ZLjava/util/List;JJZ[BZJJJJIJJJIJIJJJZ[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 42
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p6, "affinity"    # J
    .param p8, "backlog"    # J
    .param p10, "delayAttachOnConnect"    # Z
    .param p11, "identity"    # [B
    .param p12, "ipv4Only"    # Z
    .param p13, "linger"    # J
    .param p15, "maxMsgSize"    # J
    .param p17, "rcvHwm"    # J
    .param p19, "receiveBufferSize"    # J
    .param p21, "receiveTimeOut"    # I
    .param p22, "reconnectIVL"    # J
    .param p24, "reconnectIVLMax"    # J
    .param p26, "sendBufferSize"    # J
    .param p28, "sendTimeOut"    # I
    .param p29, "sndHWM"    # J
    .param p31, "tcpKeepAlive"    # I
    .param p32, "tcpKeepAliveCount"    # J
    .param p34, "tcpKeepAliveIdle"    # J
    .param p36, "tcpKeepAliveInterval"    # J
    .param p38, "xpubVerbose"    # Z
    .param p39, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "filter",
            "layout",
            "ignoreExceptions",
            "endpoints",
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
            "sndHWM",
            "tcpKeepAlive",
            "tcpKeepAliveCount",
            "tcpKeepAliveIdle",
            "tcpKeepAliveInterval",
            "xpubVerbose",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJZ[BZJJJJIJJJIJIJJJZ[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local p5, "endpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v41, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    move-wide/from16 v21, p19

    move/from16 v23, p21

    move-wide/from16 v24, p22

    move-wide/from16 v26, p24

    move-wide/from16 v28, p26

    move/from16 v30, p28

    move-wide/from16 v31, p29

    move/from16 v33, p31

    move-wide/from16 v34, p32

    move-wide/from16 v36, p34

    move-wide/from16 v38, p36

    move/from16 v40, p38

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p39

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 74
    invoke-static/range {v7 .. v41}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->getJeroMqManager(Ljava/lang/String;JJZ[BZJJJJIJJJIJIJJJZLjava/util/List;)Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;

    .line 78
    move-object/from16 v0, p5

    iput-object v0, v6, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->endpoints:Ljava/util/List;

    .line 79
    return-void
.end method

.method public static createAppender(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;[Lorg/apache/logging/log4j/core/config/Property;ZJJZ[BZJJJJIJJJIJIJJJZ)Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;
    .locals 44
    .param p0, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation

        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
            message = "No name provided for JeroMqAppender"
        .end annotation
    .end param
    .param p1    # Lorg/apache/logging/log4j/core/Layout;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Layout"
        .end annotation
    .end param
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Filter"
        .end annotation
    .end param
    .param p3, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Properties"
        .end annotation
    .end param
    .param p4, "ignoreExceptions"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "ignoreExceptions"
        .end annotation
    .end param
    .param p5, "affinity"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = 0x0L
            value = "affinity"
        .end annotation
    .end param
    .param p7, "backlog"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = 0x64L
            value = "backlog"
        .end annotation
    .end param
    .param p9, "delayAttachOnConnect"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "delayAttachOnConnect"
        .end annotation
    .end param
    .param p10, "identity"    # [B
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "identity"
        .end annotation
    .end param
    .param p11, "ipv4Only"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultBoolean = true
            value = "ipv4Only"
        .end annotation
    .end param
    .param p12, "linger"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = -0x1L
            value = "linger"
        .end annotation
    .end param
    .param p14, "maxMsgSize"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = -0x1L
            value = "maxMsgSize"
        .end annotation
    .end param
    .param p16, "rcvHwm"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = 0x3e8L
            value = "rcvHwm"
        .end annotation
    .end param
    .param p18, "receiveBufferSize"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = 0x0L
            value = "receiveBufferSize"
        .end annotation
    .end param
    .param p20, "receiveTimeOut"    # I
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = -0x1L
            value = "receiveTimeOut"
        .end annotation
    .end param
    .param p21, "reconnectIVL"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = 0x64L
            value = "reconnectIVL"
        .end annotation
    .end param
    .param p23, "reconnectIVLMax"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = 0x0L
            value = "reconnectIVLMax"
        .end annotation
    .end param
    .param p25, "sendBufferSize"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = 0x0L
            value = "sendBufferSize"
        .end annotation
    .end param
    .param p27, "sendTimeOut"    # I
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = -0x1L
            value = "sendTimeOut"
        .end annotation
    .end param
    .param p28, "sndHwm"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = 0x3e8L
            value = "sndHwm"
        .end annotation
    .end param
    .param p30, "tcpKeepAlive"    # I
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultInt = -0x1
            value = "tcpKeepAlive"
        .end annotation
    .end param
    .param p31, "tcpKeepAliveCount"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = -0x1L
            value = "tcpKeepAliveCount"
        .end annotation
    .end param
    .param p33, "tcpKeepAliveIdle"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = -0x1L
            value = "tcpKeepAliveIdle"
        .end annotation
    .end param
    .param p35, "tcpKeepAliveInterval"    # J
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultLong = -0x1L
            value = "tcpKeepAliveInterval"
        .end annotation
    .end param
    .param p37, "xpubVerbose"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "xpubVerbose"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
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
            0x10,
            0x10
        }
        names = {
            "name",
            "layout",
            "filter",
            "properties",
            "ignoreExceptions",
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
            "xpubVerbose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "ZJJZ[BZJJJJIJJJIJIJJJZ)",
            "Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 115
    .local p1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    move-object/from16 v0, p3

    if-nez p1, :cond_0

    .line 116
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createDefaultLayout()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v1

    .end local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .local v1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    goto :goto_0

    .line 115
    .end local v1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .restart local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    :cond_0
    move-object/from16 v1, p1

    .line 119
    .end local p1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    .restart local v1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    move-object/from16 v42, v2

    .local v2, "endpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 122
    .end local v2    # "endpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v3, "endpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    .line 124
    .local v5, "property":Lorg/apache/logging/log4j/core/config/Property;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "endpoint"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v5    # "property":Lorg/apache/logging/log4j/core/config/Property;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v42, v3

    .line 132
    .end local v3    # "endpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v42, "endpoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    sget-object v2, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 133
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 132
    const-string v3, "Creating JeroMqAppender with name={}, filter={}, layout={}, ignoreExceptions={}, endpoints={}"

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object v6, v1

    move-object/from16 v8, v42

    invoke-interface/range {v2 .. v8}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    new-instance v43, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;

    move-object/from16 v2, v43

    const/16 v41, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object v5, v1

    move/from16 v6, p4

    move-object/from16 v7, v42

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move/from16 v23, p20

    move-wide/from16 v24, p21

    move-wide/from16 v26, p23

    move-wide/from16 v28, p25

    move/from16 v30, p27

    move-wide/from16 v31, p28

    move/from16 v33, p30

    move-wide/from16 v34, p31

    move-wide/from16 v36, p33

    move-wide/from16 v38, p35

    move/from16 v40, p37

    invoke-direct/range {v2 .. v41}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;ZLjava/util/List;JJZ[BZJJJJIJJJIJIJJJZ[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v43
.end method


# virtual methods
.method public declared-synchronized append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    .line 143
    .local v0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/Layout;->toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B

    move-result-object v1

    .line 144
    .local v1, "formattedMessage":[B
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/apache/logging/log4j/core/Layout;->toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->send([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget v2, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->sendRcTrue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->sendRcTrue:I

    goto :goto_0

    .line 147
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;
    :cond_0
    iget v2, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->sendRcFalse:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->sendRcFalse:I

    .line 148
    sget-object v2, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Appender {} could not send message {} to JeroMQ {}"

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->sendRcFalse:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    .end local v0    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .end local v1    # "formattedMessage":[B
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getSendRcFalse()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->sendRcFalse:I

    return v0
.end method

.method getSendRcTrue()I
    .locals 1

    .line 168
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->sendRcTrue:I

    return v0
.end method

.method resetSendRcs()V
    .locals 1

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->sendRcFalse:I

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->sendRcTrue:I

    .line 174
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
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

    .line 154
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->setStopping()V

    .line 155
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    .line 156
    .local v0, "stopped":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 157
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->setStopped()V

    .line 158
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JeroMqAppender{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", manager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endpoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqAppender;->endpoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method
