.class final Lorg/apache/logging/log4j/util/LowLevelLogUtil;
.super Ljava/lang/Object;
.source "LowLevelLogUtil.java"


# static fields
.field private static writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v0, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->writer:Ljava/io/PrintWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 43
    if-eqz p0, :cond_0

    .line 44
    sget-object v0, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static logException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "exception"
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->log(Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->logException(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "exception"
        }
    .end annotation

    .line 49
    if-eqz p0, :cond_0

    .line 50
    sget-object v0, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static setOutputStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "out"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/io/PrintWriter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/io/OutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v0, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->writer:Ljava/io/PrintWriter;

    .line 66
    return-void
.end method

.method public static setWriter(Ljava/io/Writer;)V
    .locals 3
    .param p0, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "writer"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/PrintWriter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/io/Writer;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    sput-object v0, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->writer:Ljava/io/PrintWriter;

    .line 75
    return-void
.end method
