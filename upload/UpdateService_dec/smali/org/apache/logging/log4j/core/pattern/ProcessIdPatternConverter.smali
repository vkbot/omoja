.class public final Lorg/apache/logging/log4j/core/pattern/ProcessIdPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "ProcessIdPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "ProcessIdPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "pid",
        "processId"
    }
.end annotation


# static fields
.field private static final DEFAULT_DEFAULT_VALUE:Ljava/lang/String; = "???"


# instance fields
.field private final pid:Ljava/lang/String;


# direct methods
.method private varargs constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 33
    const-string v0, "Process ID"

    const-string v1, "pid"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    goto :goto_0

    :cond_0
    const-string v0, "???"

    .line 35
    .local v0, "defaultValue":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/util/ProcessIdUtil;->getProcessId()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "discoveredPid":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Lorg/apache/logging/log4j/core/pattern/ProcessIdPatternConverter;->pid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/apache/logging/log4j/core/pattern/ProcessIdPatternConverter;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/pattern/ProcessIdPatternConverter;-><init>([Ljava/lang/String;)V

    iget-object v1, v1, Lorg/apache/logging/log4j/core/pattern/ProcessIdPatternConverter;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/ProcessIdPatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/ProcessIdPatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/pattern/ProcessIdPatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "toAppendTo"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/ProcessIdPatternConverter;->pid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method

.method public getProcessId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/ProcessIdPatternConverter;->pid:Ljava/lang/String;

    return-object v0
.end method
