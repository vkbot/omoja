.class abstract Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "SimpleLiteralPatternConverter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$StringValue;,
        Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;,
        Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    const-string v0, "SimpleLiteral"

    const-string v1, "literal"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$1;

    .line 30
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;-><init>()V

    return-void
.end method

.method static of(Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    .locals 1
    .param p0, "literal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "literal"
        }
    .end annotation

    .line 42
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    const-string v0, " "

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;->access$100()Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;

    move-result-object v0

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$StringValue;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$StringValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 43
    :cond_2
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;->access$000()Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;

    move-result-object v0

    return-object v0
.end method

.method static of(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    .locals 2
    .param p0, "literal"    # Ljava/lang/String;
    .param p1, "convertBackslashes"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "literal",
            "convertBackslashes"
        }
    .end annotation

    .line 37
    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 38
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;->of(Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "ignored"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ignored",
            "output"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;->format(Ljava/lang/StringBuilder;)V

    .line 65
    return-void
.end method

.method abstract format(Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "output"
        }
    .end annotation
.end method

.method public final varargs format(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "output"    # Ljava/lang/StringBuilder;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "output",
            "args"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;->format(Ljava/lang/StringBuilder;)V

    .line 73
    return-void
.end method

.method public final format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "ignored"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ignored",
            "output"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;->format(Ljava/lang/StringBuilder;)V

    .line 57
    return-void
.end method

.method public final handlesThrowable()Z
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public final isVariable()Z
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method
