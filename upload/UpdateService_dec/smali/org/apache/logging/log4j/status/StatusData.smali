.class public Lorg/apache/logging/log4j/status/StatusData;
.super Ljava/lang/Object;
.source "StatusData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3c4195b3c6273e41L


# instance fields
.field private final caller:Ljava/lang/StackTraceElement;

.field private final level:Lorg/apache/logging/log4j/Level;

.field private final msg:Lorg/apache/logging/log4j/message/Message;

.field private threadName:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Ljava/lang/StackTraceElement;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p4, "t"    # Ljava/lang/Throwable;
    .param p5, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "caller",
            "level",
            "msg",
            "t",
            "threadName"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/status/StatusData;->timestamp:J

    .line 56
    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusData;->caller:Ljava/lang/StackTraceElement;

    .line 57
    iput-object p2, p0, Lorg/apache/logging/log4j/status/StatusData;->level:Lorg/apache/logging/log4j/Level;

    .line 58
    iput-object p3, p0, Lorg/apache/logging/log4j/status/StatusData;->msg:Lorg/apache/logging/log4j/message/Message;

    .line 59
    iput-object p4, p0, Lorg/apache/logging/log4j/status/StatusData;->throwable:Ljava/lang/Throwable;

    .line 60
    iput-object p5, p0, Lorg/apache/logging/log4j/status/StatusData;->threadName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getFormattedStatus()Ljava/lang/String;
    .locals 6

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss,SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lorg/apache/logging/log4j/status/StatusData;->timestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Lorg/apache/logging/log4j/status/StatusData;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    iget-object v3, p0, Lorg/apache/logging/log4j/status/StatusData;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    iget-object v3, p0, Lorg/apache/logging/log4j/status/StatusData;->msg:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v3}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v3, p0, Lorg/apache/logging/log4j/status/StatusData;->msg:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v3}, Lorg/apache/logging/log4j/message/Message;->getParameters()[Ljava/lang/Object;

    move-result-object v3

    .line 132
    .local v3, "params":[Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/logging/log4j/status/StatusData;->throwable:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 133
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Throwable;

    .local v4, "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 135
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v4, p0, Lorg/apache/logging/log4j/status/StatusData;->throwable:Ljava/lang/Throwable;

    .line 137
    .restart local v4    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 141
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusData;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public getMessage()Lorg/apache/logging/log4j/message/Message;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusData;->msg:Lorg/apache/logging/log4j/message/Message;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusData;->caller:Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusData;->threadName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/status/StatusData;->threadName:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusData;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusData;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/apache/logging/log4j/status/StatusData;->timestamp:J

    return-wide v0
.end method
