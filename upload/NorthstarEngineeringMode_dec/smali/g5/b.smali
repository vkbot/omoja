.class public interface abstract Lg5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    check-cast p0, Lg5/d$b;

    iget-object v0, p0, Lg5/d$b;->c:Ljava/lang/Object;

    sget-object v1, Lg5/d;->a:Lg5/d$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lg5/d$b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lg5/d$b;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lg5/d$b;->b:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lg5/d$b;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p0, p0, Lg5/d$b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lg5/d$b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    :goto_3
    const/4 p0, 0x0

    if-ne v0, v1, :cond_3

    goto :goto_4

    :cond_3
    if-nez v0, :cond_4

    move-object v0, p0

    :cond_4
    move-object p0, v0

    :goto_4
    return-object p0
.end method
