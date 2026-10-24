.class Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;
.super Ljava/lang/Object;
.source "ExtendedThreadInformation.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/ThreadInformation;


# instance fields
.field private final threadInfo:Ljava/lang/management/ThreadInfo;


# direct methods
.method constructor <init>(Ljava/lang/management/ThreadInfo;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/management/ThreadInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thread"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    .line 38
    return-void
.end method

.method private formatLock(Ljava/lang/StringBuilder;Ljava/lang/management/LockInfo;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "lock"    # Ljava/lang/management/LockInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "lock"
        }
    .end annotation

    .line 104
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/management/LockInfo;->getIdentityHashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "> (a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p2}, Ljava/lang/management/LockInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    return-void
.end method

.method private formatState(Ljava/lang/StringBuilder;Ljava/lang/management/ThreadInfo;)V
    .locals 15
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "info"    # Ljava/lang/management/ThreadInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "info"
        }
    .end annotation

    .line 109
    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getThreadState()Ljava/lang/Thread$State;

    move-result-object v1

    .line 110
    .local v1, "state":Ljava/lang/Thread$State;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    sget-object v2, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation$1;->$SwitchMap$java$lang$Thread$State:[I

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string v4, "\" Id="

    const/16 v5, 0x29

    if-eq v2, v3, :cond_b

    const/4 v3, 0x2

    const-string v6, " (on completion of thread "

    const-string v7, " (on object monitor"

    const-string v8, "join"

    const-string v9, " (parking for lock"

    const-string v10, "wait"

    const-string v11, "java.lang.Object"

    const/4 v12, 0x0

    const-string v13, "java.lang.Thread"

    const-string v14, " owned by \""

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    .line 141
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v12

    .line 142
    .local v2, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "method":Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 145
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 147
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 151
    :cond_2
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "sleep"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 152
    const-string v4, " (sleeping)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 153
    :cond_3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 154
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 156
    :cond_4
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 158
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    goto/16 :goto_0

    .line 118
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    .end local v3    # "className":Ljava/lang/String;
    .end local v12    # "method":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v12

    .line 119
    .restart local v2    # "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 120
    .restart local v3    # "className":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    .line 121
    .restart local v12    # "method":Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 122
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 124
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    :cond_7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_8
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 129
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :cond_9
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 133
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    :cond_a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    goto :goto_0

    .line 113
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    .end local v3    # "className":Ljava/lang/String;
    .end local v12    # "method":Ljava/lang/String;
    :cond_b
    const-string v2, " (on object monitor owned by \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    nop

    .line 168
    :goto_0
    return-void
.end method


# virtual methods
.method public printStack(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;)V
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "stack"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "stack"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "i":I
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v1, :cond_6

    aget-object v5, p2, v3

    .line 58
    .local v5, "element":Ljava/lang/StackTraceElement;
    const-string v6, "\tat "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    if-nez v0, :cond_3

    iget-object v6, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v6}, Ljava/lang/management/ThreadInfo;->getLockInfo()Ljava/lang/management/LockInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 61
    iget-object v6, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v6}, Ljava/lang/management/ThreadInfo;->getThreadState()Ljava/lang/Thread$State;

    move-result-object v6

    .line 62
    .local v6, "ts":Ljava/lang/Thread$State;
    sget-object v7, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation$1;->$SwitchMap$java$lang$Thread$State:[I

    invoke-virtual {v6}, Ljava/lang/Thread$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    const-string v9, "\t-  waiting on "

    if-eq v7, v8, :cond_1

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v7, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v7}, Ljava/lang/management/ThreadInfo;->getLockInfo()Ljava/lang/management/LockInfo;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->formatLock(Ljava/lang/StringBuilder;Ljava/lang/management/LockInfo;)V

    .line 76
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v7, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v7}, Ljava/lang/management/ThreadInfo;->getLockInfo()Ljava/lang/management/LockInfo;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->formatLock(Ljava/lang/StringBuilder;Ljava/lang/management/LockInfo;)V

    .line 71
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    goto :goto_1

    .line 64
    :cond_2
    const-string v7, "\t-  blocked on "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v7, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v7}, Ljava/lang/management/ThreadInfo;->getLockInfo()Ljava/lang/management/LockInfo;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->formatLock(Ljava/lang/StringBuilder;Ljava/lang/management/LockInfo;)V

    .line 66
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .end local v6    # "ts":Ljava/lang/Thread$State;
    :cond_3
    :goto_1
    iget-object v6, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v6}, Ljava/lang/management/ThreadInfo;->getLockedMonitors()[Ljava/lang/management/MonitorInfo;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 83
    .local v9, "mi":Ljava/lang/management/MonitorInfo;
    invoke-virtual {v9}, Ljava/lang/management/MonitorInfo;->getLockedStackDepth()I

    move-result v10

    if-ne v10, v0, :cond_4

    .line 84
    const-string v10, "\t-  locked "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p0, p1, v9}, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->formatLock(Ljava/lang/StringBuilder;Ljava/lang/management/LockInfo;)V

    .line 86
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .end local v9    # "mi":Ljava/lang/management/MonitorInfo;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 89
    :cond_5
    nop

    .end local v5    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v0, v0, 0x1

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 92
    :cond_6
    iget-object v1, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v1}, Ljava/lang/management/ThreadInfo;->getLockedSynchronizers()[Ljava/lang/management/LockInfo;

    move-result-object v1

    .line 93
    .local v1, "locks":[Ljava/lang/management/LockInfo;
    array-length v3, v1

    if-lez v3, :cond_7

    .line 94
    const-string v3, "\n\tNumber of locked synchronizers = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_7

    aget-object v5, v1, v2

    .line 96
    .local v5, "li":Ljava/lang/management/LockInfo;
    const-string v6, "\t- "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {p0, p1, v5}, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->formatLock(Ljava/lang/StringBuilder;Ljava/lang/management/LockInfo;)V

    .line 98
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .end local v5    # "li":Ljava/lang/management/LockInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 101
    :cond_7
    return-void
.end method

.method public printThreadInfo(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getThreadName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/util/StringBuilders;->appendDqValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, " Id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->formatState(Ljava/lang/StringBuilder;Ljava/lang/management/ThreadInfo;)V

    .line 45
    iget-object v0, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, " (suspended)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/message/ExtendedThreadInformation;->threadInfo:Ljava/lang/management/ThreadInfo;

    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->isInNative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string v0, " (in native)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method
