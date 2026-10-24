.class Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;
.super Ljava/lang/Object;
.source "DefaultShutdownCallbackRegistry.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegisteredCancellable"
.end annotation


# instance fields
.field private callback:Ljava/lang/Runnable;

.field private registered:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/ref/Reference<",
            "Lorg/apache/logging/log4j/core/util/Cancellable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/Collection;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "callback",
            "registered"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/Collection<",
            "Ljava/lang/ref/Reference<",
            "Lorg/apache/logging/log4j/core/util/Cancellable;",
            ">;>;)V"
        }
    .end annotation

    .line 97
    .local p2, "registered":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/Reference<Lorg/apache/logging/log4j/core/util/Cancellable;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;->callback:Ljava/lang/Runnable;

    .line 99
    iput-object p2, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;->registered:Ljava/util/Collection;

    .line 100
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;->callback:Ljava/lang/Runnable;

    .line 105
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;->registered:Ljava/util/Collection;

    .line 106
    .local v1, "references":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/Reference<Lorg/apache/logging/log4j/core/util/Cancellable;>;>;"
    if-eqz v1, :cond_0

    .line 107
    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;->registered:Ljava/util/Collection;

    .line 108
    new-instance v0, Lorg/apache/logging/log4j/core/util/-$$Lambda$DefaultShutdownCallbackRegistry$RegisteredCancellable$YvTCvqmPvpRoYg0ao11rjPqxozc;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/util/-$$Lambda$DefaultShutdownCallbackRegistry$RegisteredCancellable$YvTCvqmPvpRoYg0ao11rjPqxozc;-><init>(Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;)V

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 113
    :cond_0
    return-void
.end method

.method public synthetic lambda$cancel$0$DefaultShutdownCallbackRegistry$RegisteredCancellable(Ljava/lang/ref/Reference;)Z
    .locals 2
    .param p1, "ref"    # Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ref"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/Cancellable;

    .line 110
    .local v0, "value":Lorg/apache/logging/log4j/core/util/Cancellable;
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public run()V
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;->callback:Ljava/lang/Runnable;

    .line 118
    .local v0, "runnableHook":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;->callback:Ljava/lang/Runnable;

    .line 122
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;->callback:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
