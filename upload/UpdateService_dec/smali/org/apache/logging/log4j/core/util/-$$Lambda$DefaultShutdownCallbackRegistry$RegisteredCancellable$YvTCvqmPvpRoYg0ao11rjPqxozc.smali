.class public final synthetic Lorg/apache/logging/log4j/core/util/-$$Lambda$DefaultShutdownCallbackRegistry$RegisteredCancellable$YvTCvqmPvpRoYg0ao11rjPqxozc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/-$$Lambda$DefaultShutdownCallbackRegistry$RegisteredCancellable$YvTCvqmPvpRoYg0ao11rjPqxozc;->f$0:Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/-$$Lambda$DefaultShutdownCallbackRegistry$RegisteredCancellable$YvTCvqmPvpRoYg0ao11rjPqxozc;->f$0:Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/util/DefaultShutdownCallbackRegistry$RegisteredCancellable;->lambda$cancel$0$DefaultShutdownCallbackRegistry$RegisteredCancellable(Ljava/lang/ref/Reference;)Z

    move-result p1

    return p1
.end method
