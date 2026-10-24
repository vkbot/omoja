.class final enum Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy$2;
.super Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;
.source "ThreadNameCachingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy$1;)V

    return-void
.end method


# virtual methods
.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
