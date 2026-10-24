.class public Lorg/apache/logging/log4j/core/lookup/EventLookup;
.super Lorg/apache/logging/log4j/core/lookup/AbstractLookup;
.source "EventLookup.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "event"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/AbstractLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "key"
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 37
    return-object v0

    .line 39
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "Timestamp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "ThreadId"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "ThreadName"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "Level"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "Exception"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "Message"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "Marker"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_7
    const-string v2, "Logger"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 71
    return-object v0

    .line 68
    :pswitch_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :pswitch_1
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :pswitch_2
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 57
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_2
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 60
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_3
    return-object v0

    .line 53
    :pswitch_3
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :pswitch_4
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_5
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :pswitch_6
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :pswitch_7
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/Marker;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x78031e50 -> :sswitch_7
        -0x770e7fa6 -> :sswitch_6
        -0x63dc6819 -> :sswitch_5
        -0x303e0fd1 -> :sswitch_4
        0x45eab64 -> :sswitch_3
        0x302dc3d5 -> :sswitch_2
        0x5bb020e5 -> :sswitch_1
        0x7abb48f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
