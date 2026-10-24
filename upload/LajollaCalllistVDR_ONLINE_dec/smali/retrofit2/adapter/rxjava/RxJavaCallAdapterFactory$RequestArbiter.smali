.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lz2/j;
.implements Lz2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestArbiter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lz2/j;",
        "Lz2/f;"
    }
.end annotation


# instance fields
.field private final call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Lz2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/i;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Call;Lz2/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lz2/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->call:Lretrofit2/Call;

    iput-object p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lz2/i;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    iget-object v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->call:Lretrofit2/Call;

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    iget-object p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lz2/i;

    invoke-virtual {p2}, Lz2/i;->isUnsubscribed()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lz2/i;

    invoke-interface {p2, p1}, Lz2/e;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lz2/i;

    invoke-virtual {p1}, Lz2/i;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lz2/i;

    invoke-interface {p1}, Lz2/e;->onCompleted()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/material/slider/h;->z1(Ljava/lang/Throwable;)V

    iget-object p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lz2/i;

    invoke-virtual {p2}, Lz2/i;->isUnsubscribed()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lz2/i;

    invoke-interface {p2, p1}, Lz2/e;->onError(Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0: "

    invoke-static {v1, p1, p2}, Landroidx/activity/b;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsubscribe()V
    .locals 1

    iget-object v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    return-void
.end method
