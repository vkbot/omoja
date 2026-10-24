.class public Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter;
.super Ljava/lang/Object;
.source "SelectArbiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    deferChildren = true
    elementType = "Arbiter"
    name = "Select"
    printObject = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$evaluateConditions$0(Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;)Z
    .locals 1
    .param p0, "c"    # Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "c"
        }
    .end annotation

    .line 34
    instance-of v0, p0, Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter;

    return v0
.end method

.method static synthetic lambda$evaluateConditions$1(Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;)Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    .locals 3
    .param p0, "a"    # Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    .param p1, "b"    # Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple elements: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 51
    new-instance v0, Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public evaluateConditions(Ljava/util/List;)Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conditions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;",
            ">;)",
            "Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;"
        }
    .end annotation

    .line 34
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$zsdqFiP0hIHf4rOXtJ0PgYpNi00;->INSTANCE:Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$zsdqFiP0hIHf4rOXtJ0PgYpNi00;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$gnglK541yy9N1AmPGK7SXCT29eU;->INSTANCE:Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$gnglK541yy9N1AmPGK7SXCT29eU;

    .line 35
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    .line 38
    .local v0, "opt":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    .line 39
    .local v2, "condition":Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    instance-of v3, v2, Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter;

    if-eqz v3, :cond_0

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;->isCondition()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    return-object v2

    .line 45
    .end local v2    # "condition":Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;
    :cond_1
    goto :goto_0

    .line 46
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    return-object v1
.end method
