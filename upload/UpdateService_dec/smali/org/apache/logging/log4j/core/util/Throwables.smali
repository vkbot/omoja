.class public final Lorg/apache/logging/log4j/core/util/Throwables;
.super Ljava/lang/Object;
.source "Throwables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 46
    move-object v0, p0

    .line 47
    .local v0, "slowPointer":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 49
    .local v1, "advanceSlowPointer":Z
    move-object v2, p0

    .line 51
    .local v2, "parent":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    move-object v4, v3

    .local v4, "cause":Ljava/lang/Throwable;
    if-eqz v3, :cond_3

    .line 52
    move-object v2, v4

    .line 53
    if-eq v2, v0, :cond_2

    .line 56
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 59
    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v1, v3

    goto :goto_0

    .line 54
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "loop in causal chain"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_3
    return-object v2
.end method

.method public static rethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "t"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/Throwables;->rethrow0(Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method private static rethrow0(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    throw p0
.end method

.method public static toStringList(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 73
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 75
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 79
    :goto_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/LineNumberReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v3, "reader":Ljava/io/LineNumberReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "line":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    .line 85
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_1

    .line 94
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    nop

    :goto_2
    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    .line 95
    goto :goto_3

    .line 94
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 88
    :catch_1
    move-exception v4

    .line 89
    .local v4, "ex":Ljava/io/IOException;
    :try_start_2
    instance-of v5, v4, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_1

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 92
    :cond_1
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    nop

    .end local v4    # "ex":Ljava/io/IOException;
    goto :goto_2

    .line 96
    :goto_3
    return-object v2

    .line 94
    :goto_4
    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    throw v4
.end method
