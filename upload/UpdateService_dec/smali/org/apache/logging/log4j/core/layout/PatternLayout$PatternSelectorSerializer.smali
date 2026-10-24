.class final Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;
.super Ljava/lang/Object;
.source "PatternLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
.implements Lorg/apache/logging/log4j/core/impl/LocationAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/PatternLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PatternSelectorSerializer"
.end annotation


# instance fields
.field private final patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

.field private final replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/layout/PatternSelector;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)V
    .locals 0
    .param p1, "patternSelector"    # Lorg/apache/logging/log4j/core/layout/PatternSelector;
    .param p2, "replace"    # Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "patternSelector",
            "replace"
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    .line 544
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    .line 545
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/layout/PatternSelector;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/layout/PatternSelector;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/layout/PatternLayout$1;

    .line 537
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;-><init>(Lorg/apache/logging/log4j/core/layout/PatternSelector;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)V

    return-void
.end method


# virtual methods
.method public requiresLocation()Z
    .locals 2

    .line 573
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    instance-of v1, v0, Lorg/apache/logging/log4j/core/impl/LocationAware;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/logging/log4j/core/impl/LocationAware;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/impl/LocationAware;->requiresLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 549
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 551
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->trimToMaxSize(Ljava/lang/StringBuilder;)V

    .line 551
    return-object v1

    .line 553
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->trimToMaxSize(Ljava/lang/StringBuilder;)V

    throw v1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
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

    .line 559
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/layout/PatternSelector;->getFormatters(Lorg/apache/logging/log4j/core/LogEvent;)[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 560
    .local v4, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v4, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 559
    .end local v4    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 566
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, "[patternSelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    const-string v1, ", replace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
