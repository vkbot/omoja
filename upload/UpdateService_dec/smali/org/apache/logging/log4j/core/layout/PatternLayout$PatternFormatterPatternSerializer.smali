.class final Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternFormatterPatternSerializer;
.super Ljava/lang/Object;
.source "PatternLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/PatternLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternFormatterPatternSerializer"
.end annotation


# instance fields
.field private final formatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;


# direct methods
.method private constructor <init>([Lorg/apache/logging/log4j/core/pattern/PatternFormatter;)V
    .locals 0
    .param p1, "formatters"    # [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formatters"
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternFormatterPatternSerializer;->formatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 369
    return-void
.end method

.method synthetic constructor <init>([Lorg/apache/logging/log4j/core/pattern/PatternFormatter;Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V
    .locals 0
    .param p1, "x0"    # [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/layout/PatternLayout$1;

    .line 363
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternFormatterPatternSerializer;-><init>([Lorg/apache/logging/log4j/core/pattern/PatternFormatter;)V

    return-void
.end method


# virtual methods
.method public requiresLocation()Z
    .locals 6

    .line 391
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternFormatterPatternSerializer;->formatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 392
    .local v4, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->requiresLocation()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 393
    const/4 v0, 0x1

    return v0

    .line 391
    .end local v4    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    :cond_1
    return v2
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 373
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 375
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternFormatterPatternSerializer;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->trimToMaxSize(Ljava/lang/StringBuilder;)V

    .line 375
    return-object v1

    .line 377
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->trimToMaxSize(Ljava/lang/StringBuilder;)V

    throw v1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "buffer"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternFormatterPatternSerializer;->formatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 384
    .local v3, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v3, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 383
    .end local v3    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_0
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[formatters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternFormatterPatternSerializer;->formatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 403
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    return-object v0
.end method
