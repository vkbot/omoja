.class public abstract Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection;
.super Ljava/lang/Object;
.source "AbstractNoSqlConnection.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        "T::",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
        "TW;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection<",
        "TW;TT;>;"
    }
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection;, "Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection<TW;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 36
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection;, "Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection<TW;TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection;->closeImpl()V

    .line 39
    :cond_0
    return-void
.end method

.method protected abstract closeImpl()V
.end method

.method public isClosed()Z
    .locals 1

    .line 45
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection;, "Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection<TW;TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/AbstractNoSqlConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
