.class final Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;
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
    name = "PatternSerializerWithReplacement"
.end annotation


# instance fields
.field private final delegate:Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;

.field private final replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)V
    .locals 0
    .param p1, "delegate"    # Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;
    .param p2, "replace"    # Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "delegate",
            "replace"
        }
    .end annotation

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;->delegate:Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;

    .line 415
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    .line 416
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/layout/PatternLayout$1;

    .line 408
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;-><init>(Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)V

    return-void
.end method


# virtual methods
.method public requiresLocation()Z
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;->delegate:Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;->requiresLocation()Z

    move-result v0

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

    .line 420
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->trimToMaxSize(Ljava/lang/StringBuilder;)V

    .line 422
    return-object v1

    .line 424
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->trimToMaxSize(Ljava/lang/StringBuilder;)V

    throw v1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "buf"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;->delegate:Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/pattern/RegexReplacement;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;->delegate:Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
