.class final Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/CompletableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompletableCallOnSubscribe"
.end annotation


# instance fields
.field private final originalCall:Lretrofit2/Call;


# direct methods
.method public constructor <init>(Lretrofit2/Call;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;->originalCall:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;->call(Lz2/b;)V

    return-void
.end method

.method public call(Lz2/b;)V
    .locals 6

    .line 2
    sget-object v0, Lc3/a;->b:Lg2/e;

    iget-object v1, p0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;->originalCall:Lretrofit2/Call;

    invoke-interface {v1}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v1

    .line 3
    new-instance v2, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe$1;

    invoke-direct {v2, p0, v1}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe$1;-><init>(Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;Lretrofit2/Call;)V

    .line 4
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lz2/b;->b()V

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 6
    :try_start_0
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    .line 7
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-nez v5, :cond_3

    .line 8
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-interface {p1}, Lz2/b;->onCompleted()V

    goto :goto_2

    .line 10
    :cond_1
    new-instance v5, Lretrofit2/adapter/rxjava/HttpException;

    invoke-direct {v5, v1}, Lretrofit2/adapter/rxjava/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-interface {p1}, Lz2/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 11
    invoke-static {v1}, Lcom/google/android/material/slider/h;->z1(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    if-nez v2, :cond_3

    .line 13
    invoke-interface {p1}, Lz2/b;->a()V

    :cond_3
    :goto_2
    return-void
.end method
