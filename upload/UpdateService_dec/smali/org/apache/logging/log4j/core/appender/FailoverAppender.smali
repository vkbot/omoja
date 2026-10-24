.class public final Lorg/apache/logging/log4j/core/appender/FailoverAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "FailoverAppender.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "Failover"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL_SECONDS:I = 0x3c


# instance fields
.field private final config:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final failoverAppenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/AppenderControl;",
            ">;"
        }
    .end annotation
.end field

.field private final failovers:[Ljava/lang/String;

.field private final intervalNanos:J

.field private volatile nextCheckNanos:J

.field private primary:Lorg/apache/logging/log4j/core/config/AppenderControl;

.field private final primaryRef:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;[Ljava/lang/String;ILorg/apache/logging/log4j/core/config/Configuration;Z[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "primary"    # Ljava/lang/String;
    .param p4, "failovers"    # [Ljava/lang/String;
    .param p5, "intervalMillis"    # I
    .param p6, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p7, "ignoreExceptions"    # Z
    .param p8, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "name",
            "filter",
            "primary",
            "failovers",
            "intervalMillis",
            "config",
            "ignoreExceptions",
            "properties"
        }
    .end annotation

    .line 68
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->failoverAppenders:Ljava/util/List;

    .line 69
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->primaryRef:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->failovers:[Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->intervalNanos:J

    .line 73
    return-void
.end method

.method private callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->primary:Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->nextCheckNanos:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->intervalNanos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->nextCheckNanos:J

    .line 127
    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->failover(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Exception;)V

    .line 129
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static createAppender(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/FailoverAppender;
    .locals 16
    .param p0, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation
    .end param
    .param p1, "primary"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "primary"
        .end annotation
    .end param
    .param p2, "failovers"    # [Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Failovers"
        .end annotation
    .end param
    .param p3, "retryIntervalSeconds"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
            value = {
                "retryInterval"
            }
        .end annotation

        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "retryIntervalSeconds"
        .end annotation
    .end param
    .param p4, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .param p5, "filter"    # Lorg/apache/logging/log4j/core/Filter;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Filter"
        .end annotation
    .end param
    .param p6, "ignore"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "ignoreExceptions"
        .end annotation
    .end param
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
            "primary",
            "failovers",
            "retryIntervalSeconds",
            "config",
            "filter",
            "ignore"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 193
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 194
    sget-object v1, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "A name for the Appender must be specified"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 195
    return-object v0

    .line 197
    :cond_0
    if-nez p1, :cond_1

    .line 198
    sget-object v1, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "A primary Appender must be specified"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 199
    return-object v0

    .line 201
    :cond_1
    if-eqz v9, :cond_4

    array-length v1, v9

    if-nez v1, :cond_2

    move-object/from16 v13, p6

    goto :goto_1

    .line 206
    :cond_2
    const/16 v0, 0x3c

    invoke-static {v10, v0}, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 208
    .local v11, "seconds":I
    if-ltz v11, :cond_3

    .line 209
    mul-int/lit16 v0, v11, 0x3e8

    move v12, v0

    .local v0, "retryIntervalMillis":I
    goto :goto_0

    .line 211
    .end local v0    # "retryIntervalMillis":I
    :cond_3
    sget-object v0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is less than zero. Using default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 212
    const v0, 0xea60

    move v12, v0

    .line 215
    .local v12, "retryIntervalMillis":I
    :goto_0
    const/4 v0, 0x1

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 217
    .local v14, "ignoreExceptions":Z
    new-instance v15, Lorg/apache/logging/log4j/core/appender/FailoverAppender;

    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v12

    move-object/from16 v6, p4

    move v7, v14

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/appender/FailoverAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;[Ljava/lang/String;ILorg/apache/logging/log4j/core/config/Configuration;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v15

    .line 201
    .end local v11    # "seconds":I
    .end local v12    # "retryIntervalMillis":I
    .end local v14    # "ignoreExceptions":Z
    :cond_4
    move-object/from16 v13, p6

    .line 202
    :goto_1
    sget-object v1, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "At least one failover Appender must be specified"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 203
    return-object v0
.end method

.method private failover(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "ex"
        }
    .end annotation

    .line 132
    if-eqz p2, :cond_1

    instance-of v0, p2, Lorg/apache/logging/log4j/LoggingException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/logging/log4j/LoggingException;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/LoggingException;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/LoggingException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 134
    .local v0, "re":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v1, 0x0

    .line 135
    .local v1, "written":Z
    const/4 v2, 0x0

    .line 136
    .local v2, "failoverException":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->failoverAppenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/config/AppenderControl;

    .line 138
    .local v4, "control":Lorg/apache/logging/log4j/core/config/AppenderControl;
    :try_start_0
    invoke-virtual {v4, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v1, 0x1

    .line 140
    goto :goto_2

    .line 141
    :catch_0
    move-exception v5

    .line 142
    .local v5, "fex":Ljava/lang/Exception;
    if-nez v2, :cond_2

    .line 143
    move-object v2, v5

    .line 146
    .end local v4    # "control":Lorg/apache/logging/log4j/core/config/AppenderControl;
    .end local v5    # "fex":Ljava/lang/Exception;
    :cond_2
    goto :goto_1

    .line 147
    :cond_3
    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->ignoreExceptions()Z

    move-result v3

    if-nez v3, :cond_5

    .line 148
    if-eqz v0, :cond_4

    .line 149
    throw v0

    .line 151
    :cond_4
    new-instance v3, Lorg/apache/logging/log4j/LoggingException;

    const-string v4, "Unable to write to failover appenders"

    invoke-direct {v3, v4, v2}, Lorg/apache/logging/log4j/LoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 153
    :cond_5
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
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

    .line 109
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FailoverAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " did not start successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->error(Ljava/lang/String;)V

    .line 111
    return-void

    .line 113
    :cond_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->nextCheckNanos:J

    .line 114
    .local v0, "localCheckNanos":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->failover(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Exception;)V

    goto :goto_1

    .line 115
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 119
    :goto_1
    return-void
.end method

.method public start()V
    .locals 12

    .line 77
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getAppenders()Ljava/util/Map;

    move-result-object v0

    .line 78
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/Appender;>;"
    const/4 v1, 0x0

    .line 79
    .local v1, "errors":I
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->primaryRef:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/Appender;

    .line 80
    .local v2, "appender":Lorg/apache/logging/log4j/core/Appender;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 81
    new-instance v4, Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-direct {v4, v2, v3, v3}, Lorg/apache/logging/log4j/core/config/AppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    iput-object v4, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->primary:Lorg/apache/logging/log4j/core/config/AppenderControl;

    goto :goto_0

    .line 83
    :cond_0
    sget-object v4, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to locate primary Appender "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->primaryRef:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 86
    :goto_0
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->failovers:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 87
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/logging/log4j/core/Appender;

    .line 88
    .local v8, "foAppender":Lorg/apache/logging/log4j/core/Appender;
    if-eqz v8, :cond_1

    .line 89
    iget-object v9, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->failoverAppenders:Ljava/util/List;

    new-instance v10, Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-direct {v10, v8, v3, v3}, Lorg/apache/logging/log4j/core/config/AppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 91
    :cond_1
    sget-object v9, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failover appender "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is not configured"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 86
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "foAppender":Lorg/apache/logging/log4j/core/Appender;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 94
    :cond_2
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->failoverAppenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    sget-object v3, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "No failover appenders are available"

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 98
    :cond_3
    if-nez v1, :cond_4

    .line 99
    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->start()V

    .line 101
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->primary:Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failover={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const/4 v1, 0x1

    .line 160
    .local v1, "first":Z
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/FailoverAppender;->failovers:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 161
    .local v5, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 162
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/4 v1, 0x0

    .line 160
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
