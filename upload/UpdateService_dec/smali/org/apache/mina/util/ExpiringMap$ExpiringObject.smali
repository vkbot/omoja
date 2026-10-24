.class Lorg/apache/mina/util/ExpiringMap$ExpiringObject;
.super Ljava/lang/Object;
.source "ExpiringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/ExpiringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpiringObject"
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private lastAccessTime:J

.field private final lastAccessTimeLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final synthetic this$0:Lorg/apache/mina/util/ExpiringMap;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/mina/util/ExpiringMap;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p4, "lastAccessTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->this$0:Lorg/apache/mina/util/ExpiringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->lastAccessTimeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 298
    if-eqz p3, :cond_0

    .line 302
    iput-object p2, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->key:Ljava/lang/Object;

    .line 303
    iput-object p3, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->value:Ljava/lang/Object;

    .line 304
    iput-wide p4, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->lastAccessTime:J

    .line 305
    return-void

    .line 299
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An expiring object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 337
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getLastAccessTime()J
    .locals 3

    .line 308
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->lastAccessTimeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 311
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->lastAccessTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object v2, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->lastAccessTimeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 311
    return-wide v0

    .line 313
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->lastAccessTimeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 314
    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 342
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setLastAccessTime(J)V
    .locals 2
    .param p1, "lastAccessTime"    # J

    .line 318
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->lastAccessTimeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 321
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->lastAccessTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->lastAccessTimeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 324
    nop

    .line 325
    return-void

    .line 323
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->lastAccessTimeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 324
    throw v0
.end method
