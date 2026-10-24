.class public Lorg/apache/logging/log4j/core/appender/WriterManager;
.super Lorg/apache/logging/log4j/core/appender/AbstractManager;
.source "WriterManager.java"


# instance fields
.field protected final layout:Lorg/apache/logging/log4j/core/StringLayout;

.field private volatile writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Z)V
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "streamName"    # Ljava/lang/String;
    .param p3, "layout"    # Lorg/apache/logging/log4j/core/StringLayout;
    .param p4, "writeHeader"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "writer",
            "streamName",
            "layout",
            "writeHeader"
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/apache/logging/log4j/core/appender/AbstractManager;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->writer:Ljava/io/Writer;

    .line 52
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    .line 53
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 54
    invoke-interface {p3}, Lorg/apache/logging/log4j/core/StringLayout;->getHeader()[B

    move-result-object v0

    .line 55
    .local v0, "header":[B
    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->writer:Ljava/io/Writer;

    new-instance v2, Ljava/lang/String;

    invoke-interface {p3}, Lorg/apache/logging/log4j/core/StringLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to write header"

    invoke-virtual {p0, v2, v1}, Lorg/apache/logging/log4j/core/appender/WriterManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .end local v0    # "header":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/WriterManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "data",
            "factory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
            "+",
            "Lorg/apache/logging/log4j/core/appender/WriterManager;",
            "TT;>;)",
            "Lorg/apache/logging/log4j/core/appender/WriterManager;"
        }
    .end annotation

    .line 42
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p2, "factory":Lorg/apache/logging/log4j/core/appender/ManagerFactory;, "Lorg/apache/logging/log4j/core/appender/ManagerFactory<+Lorg/apache/logging/log4j/core/appender/WriterManager;TT;>;"
    invoke-static {p0, p2, p1}, Lorg/apache/logging/log4j/core/appender/AbstractManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ManagerFactory;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/appender/AbstractManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/WriterManager;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized closeWriter()V
    .locals 3

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->writer:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .local v0, "w":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    goto :goto_0

    .line 69
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/WriterManager;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v2, "Unable to close stream"

    invoke-virtual {p0, v2, v1}, Lorg/apache/logging/log4j/core/appender/WriterManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    .end local v0    # "w":Ljava/io/Writer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 3

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    nop

    .line 84
    monitor-exit p0

    return-void

    .line 78
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/WriterManager;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error flushing stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v2, v1, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method protected getWriter()Ljava/io/Writer;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterManager;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public releaseSub(JLjava/util/concurrent/TimeUnit;)Z
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

    .line 103
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterManager;->writeFooter()V

    .line 104
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterManager;->closeWriter()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method protected setWriter(Ljava/io/Writer;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "writer"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/StringLayout;->getHeader()[B

    move-result-object v0

    .line 110
    .local v0, "header":[B
    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/StringLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Unable to write header"

    invoke-virtual {p0, v2, v1}, Lorg/apache/logging/log4j/core/appender/WriterManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 118
    :cond_0
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->writer:Ljava/io/Writer;

    .line 120
    :goto_1
    return-void
.end method

.method protected declared-synchronized write(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    nop

    .line 135
    monitor-exit p0

    return-void

    .line 129
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/WriterManager;
    .end local p1    # "str":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 131
    .restart local p1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing to stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v2, v1, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "msg":Ljava/lang/String;
    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method protected writeFooter()V
    .locals 3

    .line 141
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    if-nez v0, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/StringLayout;->getFooter()[B

    move-result-object v0

    .line 145
    .local v0, "footer":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 146
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/WriterManager;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/StringLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/WriterManager;->write(Ljava/lang/String;)V

    .line 148
    :cond_1
    return-void
.end method
