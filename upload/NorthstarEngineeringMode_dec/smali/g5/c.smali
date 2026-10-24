.class public final Lg5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final a:Ljava/util/function/BooleanSupplier;

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;

.field public volatile c:Z

.field public volatile d:Z


# direct methods
.method public constructor <init>(Lg5/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lg5/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lg5/c;->a:Ljava/util/function/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 3

    iget-boolean v0, p0, Lg5/c;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lg5/c;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg5/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lg5/c;->c:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/c;->a:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lg5/c;->d:Z

    iput-boolean v1, p0, Lg5/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lg5/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lg5/c;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :goto_2
    return v2
.end method
