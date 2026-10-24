.class public final Lx3/g;
.super Lv3/j0;
.source "SourceFile"

# interfaces
.implements Lj3/d;
.implements Lh3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/j0<",
        "TT;>;",
        "Lj3/d;",
        "Lh3/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final Z:Lh3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public b1:Ljava/lang/Object;

.field public final c1:Ljava/lang/Object;

.field public final y:Lv3/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, Lx3/g;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lx3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lv3/w;Lh3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/w;",
            "Lh3/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lv3/j0;-><init>(I)V

    iput-object p1, p0, Lx3/g;->y:Lv3/w;

    iput-object p2, p0, Lx3/g;->Z:Lh3/d;

    sget-object p1, Lx3/a;->b:Lz1/d;

    iput-object p1, p0, Lx3/g;->b1:Ljava/lang/Object;

    invoke-interface {p2}, Lh3/d;->getContext()Lh3/f;

    move-result-object p1

    invoke-static {p1}, Lx3/v;->b(Lh3/f;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lx3/g;->c1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    instance-of p0, p1, Lv3/o;

    if-eqz p0, :cond_0

    check-cast p1, Lv3/o;

    iget-object p0, p1, Lv3/o;->b:Ln3/l;

    invoke-interface {p0, p2}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b()Lh3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh3/d<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lx3/g;->b1:Ljava/lang/Object;

    sget-object v1, Lx3/a;->b:Lz1/d;

    iput-object v1, p0, Lx3/g;->b1:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCallerFrame()Lj3/d;
    .locals 1

    iget-object p0, p0, Lx3/g;->Z:Lh3/d;

    instance-of v0, p0, Lj3/d;

    if-eqz v0, :cond_0

    check-cast p0, Lj3/d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lh3/f;
    .locals 0

    iget-object p0, p0, Lx3/g;->Z:Lh3/d;

    invoke-interface {p0}, Lh3/d;->getContext()Lh3/f;

    move-result-object p0

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lx3/g;->Z:Lh3/d;

    invoke-interface {v0}, Lh3/d;->getContext()Lh3/f;

    move-result-object v1

    invoke-static {p1}, Lf3/c;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    new-instance v4, Lv3/n;

    invoke-direct {v4, v3, v2}, Lv3/n;-><init>(ZLjava/lang/Throwable;)V

    :goto_0
    iget-object v2, p0, Lx3/g;->y:Lv3/w;

    invoke-virtual {v2}, Lv3/w;->o()Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p0, Lx3/g;->b1:Ljava/lang/Object;

    iput v3, p0, Lv3/j0;->x:I

    invoke-virtual {v2, v1, p0}, Lv3/w;->l(Lh3/f;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lv3/n1;->a()Lv3/o0;

    move-result-object v1

    iget-wide v5, v1, Lv3/o0;->x:J

    const-wide v7, 0x100000000L

    cmp-long v2, v5, v7

    if-ltz v2, :cond_3

    iput-object v4, p0, Lx3/g;->b1:Ljava/lang/Object;

    iput v3, p0, Lv3/j0;->x:I

    iget-object p1, v1, Lv3/o0;->Z:Lg3/c;

    if-nez p1, :cond_2

    new-instance p1, Lg3/c;

    invoke-direct {p1}, Lg3/c;-><init>()V

    iput-object p1, v1, Lv3/o0;->Z:Lg3/c;

    :cond_2
    invoke-virtual {p1, p0}, Lg3/c;->a(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lv3/o0;->D(Z)V

    :try_start_0
    invoke-interface {v0}, Lh3/d;->getContext()Lh3/f;

    move-result-object v2

    iget-object v3, p0, Lx3/g;->c1:Ljava/lang/Object;

    invoke-static {v2, v3}, Lx3/v;->c(Lh3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, Lh3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Lx3/v;->a(Lh3/f;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v1}, Lv3/o0;->G()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {v1}, Lv3/o0;->B()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2, v3}, Lx3/v;->a(Lh3/f;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Lv3/j0;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v1}, Lv3/o0;->B()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx3/g;->y:Lv3/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx3/g;->Z:Lh3/d;

    invoke-static {p0}, Lv3/c0;->d(Lh3/d;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
