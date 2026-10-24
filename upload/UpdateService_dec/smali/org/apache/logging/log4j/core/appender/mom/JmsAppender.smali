.class public Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "JmsAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "JMS"
    printObject = true
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
    value = {
        "JMSQueue",
        "JMSTopic"
    }
.end annotation


# instance fields
.field private volatile manager:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;ZLorg/apache/logging/log4j/core/appender/mom/JmsManager;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "manager"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "manager"
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
            "Lorg/apache/logging/log4j/core/appender/mom/JmsManager;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 248
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    .line 249
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/mom/JmsManager;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p6, "manager"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
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
            "name",
            "filter",
            "layout",
            "ignoreExceptions",
            "properties",
            "manager"
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
            ">;Z[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "Lorg/apache/logging/log4j/core/appender/mom/JmsManager;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .line 234
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct/range {p0 .. p5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 235
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    .line 236
    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;
    .locals 2
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 222
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$Builder;-><init>(Lorg/apache/logging/log4j/core/appender/mom/JmsAppender$1;)V

    return-object v0
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->send(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V

    .line 254
    return-void
.end method

.method public getManager()Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    return-object v0
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

    .line 262
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;->setStopping()V

    .line 263
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    .line 264
    .local v0, "stopped":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;->manager:Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->stop(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 265
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsAppender;->setStopped()V

    .line 266
    return v0
.end method
