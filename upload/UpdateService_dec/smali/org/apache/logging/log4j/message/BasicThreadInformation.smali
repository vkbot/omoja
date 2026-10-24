.class Lorg/apache/logging/log4j/message/BasicThreadInformation;
.super Ljava/lang/Object;
.source "BasicThreadInformation.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/ThreadInformation;


# static fields
.field private static final HASH_MULTIPLIER:I = 0x1f

.field private static final HASH_SHIFT:I = 0x20


# instance fields
.field private final id:J

.field private final isAlive:Z

.field private final isDaemon:Z

.field private final longName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final priority:I

.field private final state:Ljava/lang/Thread$State;

.field private final threadGroupName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thread"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->id:J

    .line 45
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->name:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->longName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->state:Ljava/lang/Thread$State;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->priority:I

    .line 49
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->isAlive:Z

    .line 50
    invoke-virtual {p1}, Ljava/lang/Thread;->isDaemon()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->isDaemon:Z

    .line 51
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 52
    .local v0, "group":Ljava/lang/ThreadGroup;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->threadGroupName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 57
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 58
    return v0

    .line 60
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/message/BasicThreadInformation;

    .line 66
    .local v2, "that":Lorg/apache/logging/log4j/message/BasicThreadInformation;
    iget-wide v3, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->id:J

    iget-wide v5, v2, Lorg/apache/logging/log4j/message/BasicThreadInformation;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 67
    return v1

    .line 69
    :cond_2
    iget-object v3, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lorg/apache/logging/log4j/message/BasicThreadInformation;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lorg/apache/logging/log4j/message/BasicThreadInformation;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 70
    :goto_0
    return v1

    .line 73
    :cond_4
    return v0

    .line 61
    .end local v2    # "that":Lorg/apache/logging/log4j/message/BasicThreadInformation;
    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 78
    iget-wide v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 79
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 80
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public printStack(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "trace"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "trace"
        }
    .end annotation

    .line 108
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 109
    .local v2, "element":Ljava/lang/StackTraceElement;
    const-string v3, "\tat "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public printThreadInfo(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/util/StringBuilders;->appendDqValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    iget-boolean v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->isDaemon:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "daemon "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    const-string v0, "prio="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->priority:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->id:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->threadGroupName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    const-string v1, "group"

    invoke-static {p1, v1, v0}, Lorg/apache/logging/log4j/util/StringBuilders;->appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "\tThread state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/BasicThreadInformation;->state:Ljava/lang/Thread$State;

    invoke-virtual {v1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    return-void
.end method
