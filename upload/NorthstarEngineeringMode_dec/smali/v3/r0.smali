.class public final Lv3/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/d;

.field public static final b:Lz1/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1/d;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/r0;->a:Lz1/d;

    new-instance v0, Lz1/d;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/r0;->b:Lz1/d;

    return-void
.end method

.method public static final a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final b(Lv3/j0;Lh3/d;Z)V
    .locals 3

    invoke-virtual {p0}, Lv3/j0;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv3/j0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lv3/j0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_4

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    invoke-static {p1, p2}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lx3/g;

    iget-object p2, p1, Lx3/g;->Z:Lh3/d;

    invoke-interface {p2}, Lh3/d;->getContext()Lh3/f;

    move-result-object v0

    iget-object p1, p1, Lx3/g;->c1:Ljava/lang/Object;

    invoke-static {v0, p1}, Lx3/v;->c(Lh3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lx3/v;->a:Lz1/d;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    invoke-static {p2, v0}, Lv3/u;->b(Lh3/d;Lh3/f;)Lv3/p1;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    :try_start_0
    invoke-interface {p2, p0}, Lh3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    invoke-static {v0, p1}, Lx3/v;->a(Lh3/f;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lv3/p1;->X()V

    throw v2

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lv3/p1;->X()V

    throw v2

    :cond_3
    invoke-static {v0, p1}, Lx3/v;->a(Lh3/f;Ljava/lang/Object;)V

    throw p0

    :cond_4
    invoke-interface {p1, p0}, Lh3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
