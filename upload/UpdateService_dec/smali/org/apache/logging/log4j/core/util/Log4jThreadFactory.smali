.class public Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;
.super Ljava/lang/Object;
.source "Log4jThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final FACTORY_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final PREFIX:Ljava/lang/String; = "TF-"

.field private static final THREAD_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final daemon:Z

.field private final group:Ljava/lang/ThreadGroup;

.field private final priority:I

.field private final threadNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->FACTORY_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->THREAD_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "threadFactoryName"    # Ljava/lang/String;
    .param p2, "daemon"    # Z
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "threadFactoryName",
            "daemon",
            "priority"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TF-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->FACTORY_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->threadNamePrefix:Ljava/lang/String;

    .line 77
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->daemon:Z

    .line 78
    iput p3, p0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->priority:I

    .line 79
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 80
    .local v0, "securityManager":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->group:Ljava/lang/ThreadGroup;

    .line 82
    return-void
.end method

.method public static createDaemonThreadFactory(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;
    .locals 3
    .param p0, "threadFactoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "threadFactoryName"
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;-><init>(Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public static createThreadFactory(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;
    .locals 3
    .param p0, "threadFactoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "threadFactoryName"
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;-><init>(Ljava/lang/String;ZI)V

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 87
    new-instance v6, Lorg/apache/logging/log4j/core/util/Log4jThread;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->group:Ljava/lang/ThreadGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->threadNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->THREAD_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/util/Log4jThread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 88
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->daemon:Z

    if-eq v1, v2, :cond_0

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iget v2, p0, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->priority:I

    if-eq v1, v2, :cond_1

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 94
    :cond_1
    return-object v0
.end method
