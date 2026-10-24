.class public abstract Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/AbstractPatternConverter;
.source "LogEventPatternConverter.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "style"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/AbstractPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "obj",
            "output"
        }
    .end annotation

    .line 50
    instance-of v0, p1, Lorg/apache/logging/log4j/core/LogEvent;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/LogEvent;

    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 53
    :cond_0
    return-void
.end method

.method public abstract format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
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
.end method

.method public handlesThrowable()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isVariable()Z
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method
