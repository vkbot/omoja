.class public Lorg/apache/logging/log4j/core/util/Log4jThread;
.super Ljava/lang/Thread;
.source "Log4jThread.java"


# static fields
.field static final PREFIX:Ljava/lang/String; = "Log4j2-"

.field private static final threadInitNumber:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/Log4jThread;->threadInitNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-static {}, Lorg/apache/logging/log4j/core/util/Log4jThread;->nextThreadNum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Log4jThread;->toThreadName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "target"
        }
    .end annotation

    .line 44
    invoke-static {}, Lorg/apache/logging/log4j/core/util/Log4jThread;->nextThreadNum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Log4jThread;->toThreadName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "target",
            "name"
        }
    .end annotation

    .line 48
    invoke-static {p2}, Lorg/apache/logging/log4j/core/util/Log4jThread;->toThreadName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 52
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/Log4jThread;->toThreadName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "group",
            "target"
        }
    .end annotation

    .line 56
    invoke-static {}, Lorg/apache/logging/log4j/core/util/Log4jThread;->nextThreadNum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Log4jThread;->toThreadName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "group",
            "target",
            "name"
        }
    .end annotation

    .line 60
    invoke-static {p3}, Lorg/apache/logging/log4j/core/util/Log4jThread;->toThreadName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "group",
            "target",
            "name",
            "stackSize"
        }
    .end annotation

    .line 64
    invoke-static {p3}, Lorg/apache/logging/log4j/core/util/Log4jThread;->toThreadName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "group",
            "name"
        }
    .end annotation

    .line 68
    invoke-static {p2}, Lorg/apache/logging/log4j/core/util/Log4jThread;->toThreadName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private static nextThreadNum()J
    .locals 2

    .line 32
    sget-object v0, Lorg/apache/logging/log4j/core/util/Log4jThread;->threadInitNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method private static toThreadName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log4j2-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
