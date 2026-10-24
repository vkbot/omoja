.class abstract Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler;
.super Ljava/lang/Object;
.source "AbstractAsyncExceptionHandler.java"

# interfaces
.implements Lcom/lmax/disruptor/ExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lmax/disruptor/ExceptionHandler<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    .local p0, "this":Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler;, "Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEventException(Ljava/lang/Throwable;JLjava/lang/Object;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "sequence"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "throwable",
            "sequence",
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "JTT;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler;, "Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler<TT;>;"
    .local p4, "event":Ljava/lang/Object;, "TT;"
    const-string v0, ": "

    :try_start_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "AsyncLogger error handling event seq="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 33
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, p2, p3}, Ljava/io/PrintStream;->print(J)V

    .line 34
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, ", value=\'"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, p4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "ERROR calling toString() on "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 39
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 40
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 41
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 42
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 43
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 45
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 46
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 47
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 48
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    goto :goto_1

    .line 52
    :catchall_1
    move-exception v0

    .line 56
    :goto_1
    return-void
.end method

.method public handleOnShutdownException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler;, "Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler<TT;>;"
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "AsyncLogger error shutting down:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    return-void
.end method

.method public handleOnStartException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler;, "Lorg/apache/logging/log4j/core/async/AbstractAsyncExceptionHandler<TT;>;"
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "AsyncLogger error starting:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    return-void
.end method
