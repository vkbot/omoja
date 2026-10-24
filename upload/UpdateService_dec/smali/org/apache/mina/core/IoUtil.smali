.class public final Lorg/apache/mina/core/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# static fields
.field private static final EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/core/session/IoSession;

    sput-object v0, Lorg/apache/mina/core/IoUtil;->EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static await(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 139
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/future/IoFuture;

    .line 140
    .local v1, "f":Lorg/apache/mina/core/future/IoFuture;
    invoke-interface {v1}, Lorg/apache/mina/core/future/IoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    .line 141
    .end local v1    # "f":Lorg/apache/mina/core/future/IoFuture;
    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public static await(Ljava/lang/Iterable;J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 180
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/mina/core/IoUtil;->await0(Ljava/lang/Iterable;JZ)Z

    move-result v0

    return v0
.end method

.method public static await(Ljava/lang/Iterable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 167
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/core/IoUtil;->await(Ljava/lang/Iterable;J)Z

    move-result v0

    return v0
.end method

.method private static await0(Ljava/lang/Iterable;JZ)Z
    .locals 11
    .param p1, "timeoutMillis"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;JZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 214
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 215
    .local v2, "startTime":J
    :goto_0
    move-wide v4, p1

    .line 217
    .local v4, "waitTime":J
    const/4 v6, 0x1

    .line 218
    .local v6, "lastComplete":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 220
    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/mina/core/future/IoFuture;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 221
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/mina/core/future/IoFuture;

    .line 224
    .local v8, "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_1
    if-eqz p3, :cond_2

    .line 225
    invoke-interface {v8, v4, v5}, Lorg/apache/mina/core/future/IoFuture;->await(J)Z

    move-result v6

    goto :goto_2

    .line 227
    :cond_2
    invoke-interface {v8, v4, v5}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    move-result v6

    .line 230
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    sub-long v4, p1, v9

    .line 232
    cmp-long v9, v4, v0

    if-gtz v9, :cond_3

    .line 233
    goto :goto_3

    .line 235
    :cond_3
    if-eqz v6, :cond_1

    .line 237
    :goto_3
    cmp-long v9, v4, v0

    if-gtz v9, :cond_4

    .line 238
    goto :goto_4

    .line 240
    .end local v8    # "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_4
    goto :goto_1

    .line 242
    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static awaitUninterruptably(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/future/IoFuture;

    .line 151
    .local v1, "f":Lorg/apache/mina/core/future/IoFuture;
    invoke-interface {v1}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 152
    .end local v1    # "f":Lorg/apache/mina/core/future/IoFuture;
    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public static awaitUninterruptibly(Ljava/lang/Iterable;J)Z
    .locals 2
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J)Z"
        }
    .end annotation

    .line 206
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/mina/core/IoUtil;->await0(Ljava/lang/Iterable;JZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public static awaitUninterruptibly(Ljava/lang/Iterable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .line 193
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/core/IoUtil;->awaitUninterruptibly(Ljava/lang/Iterable;J)Z

    move-result v0

    return v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .line 71
    .local p1, "sessions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/mina/core/session/IoSession;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    .line 73
    return-object v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .line 56
    .local p1, "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/session/IoSession;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    .line 58
    return-object v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/util/Iterator;)Ljava/util/List;
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .line 86
    .local p1, "sessions":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/mina/core/session/IoSession;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    invoke-static {p0, p1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    .line 88
    return-object v0
.end method

.method public static varargs broadcast(Ljava/lang/Object;[Lorg/apache/mina/core/session/IoSession;)Ljava/util/List;
    .locals 5
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "sessions"    # [Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .line 101
    if-nez p1, :cond_0

    .line 102
    sget-object p1, Lorg/apache/mina/core/IoUtil;->EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;

    .line 105
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    instance-of v1, p0, Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 107
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 108
    .local v3, "s":Lorg/apache/mina/core/session/IoSession;
    move-object v4, p0

    check-cast v4, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v3    # "s":Lorg/apache/mina/core/session/IoSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 112
    .restart local v3    # "s":Lorg/apache/mina/core/session/IoSession;
    invoke-interface {v3, p0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v3    # "s":Lorg/apache/mina/core/session/IoSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    :cond_2
    return-object v0
.end method

.method private static broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p1, "sessions":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/mina/core/session/IoSession;>;"
    .local p2, "answer":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/future/WriteFuture;>;"
    instance-of v0, p0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    .line 122
    .local v0, "s":Lorg/apache/mina/core/session/IoSession;
    move-object v1, p0

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    goto :goto_0

    .line 125
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    .line 127
    .restart local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    invoke-interface {v0, p0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    goto :goto_1

    .line 130
    :cond_1
    return-void
.end method
