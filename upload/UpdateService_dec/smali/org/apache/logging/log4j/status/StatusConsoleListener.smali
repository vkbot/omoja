.class public Lorg/apache/logging/log4j/status/StatusConsoleListener;
.super Ljava/lang/Object;
.source "StatusConsoleListener.java"

# interfaces
.implements Lorg/apache/logging/log4j/status/StatusListener;


# instance fields
.field private filters:[Ljava/lang/String;

.field private level:Lorg/apache/logging/log4j/Level;

.field private final stream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/Level;)V
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/status/StatusConsoleListener;-><init>(Lorg/apache/logging/log4j/Level;Ljava/io/PrintStream;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/Level;Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "stream"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "stream"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->level:Lorg/apache/logging/log4j/Level;

    .line 50
    if-eqz p2, :cond_0

    .line 53
    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->level:Lorg/apache/logging/log4j/Level;

    .line 54
    iput-object p2, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->stream:Ljava/io/PrintStream;

    .line 55
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must provide a stream to use for this listener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private filtered(Lorg/apache/logging/log4j/status/StatusData;)Z
    .locals 7
    .param p1, "data"    # Lorg/apache/logging/log4j/status/StatusData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->filters:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/status/StatusData;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "caller":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->filters:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 99
    .local v5, "filter":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    const/4 v1, 0x1

    return v1

    .line 98
    .end local v5    # "filter":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    :cond_2
    return v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->stream:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->stream:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->stream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 112
    :cond_0
    return-void
.end method

.method public getStatusLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public log(Lorg/apache/logging/log4j/status/StatusData;)V
    .locals 2
    .param p1, "data"    # Lorg/apache/logging/log4j/status/StatusData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/status/StatusConsoleListener;->filtered(Lorg/apache/logging/log4j/status/StatusData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->stream:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/status/StatusData;->getFormattedStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public varargs setFilters([Ljava/lang/String;)V
    .locals 0
    .param p1, "filters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filters"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->filters:[Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setLevel(Lorg/apache/logging/log4j/Level;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->level:Lorg/apache/logging/log4j/Level;

    .line 63
    return-void
.end method
