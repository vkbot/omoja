.class public Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;
.super Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;
.source "CompositeAction.java"


# instance fields
.field private final actions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

.field private final stopOnError:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "stopOnError"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "actions",
            "stopOnError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/Action;",
            ">;Z)V"
        }
    .end annotation

    .line 46
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/Action;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;-><init>()V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;->actions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;->stopOnError:Z

    .line 50
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;->stopOnError:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;->actions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 74
    .local v4, "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    invoke-interface {v4}, Lorg/apache/logging/log4j/core/appender/rolling/action/Action;->execute()Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    return v1

    .line 73
    .end local v4    # "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_2
    const/4 v0, 0x1

    .line 82
    .local v0, "status":Z
    const/4 v2, 0x0

    .line 84
    .local v2, "exception":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;->actions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 86
    .local v5, "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    :try_start_0
    invoke-interface {v5}, Lorg/apache/logging/log4j/core/appender/rolling/action/Action;->execute()Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v6

    .line 93
    goto :goto_2

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "ex":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 90
    if-nez v2, :cond_3

    .line 91
    move-object v2, v6

    .line 84
    .end local v5    # "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_4
    if-nez v2, :cond_5

    .line 100
    return v0

    .line 97
    :cond_5
    throw v2
.end method

.method public getActions()[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;->actions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    return-object v0
.end method

.method public isStopOnError()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;->stopOnError:Z

    return v0
.end method

.method public run()V
    .locals 3

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;->execute()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Exception during file rollover."

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;->actions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
