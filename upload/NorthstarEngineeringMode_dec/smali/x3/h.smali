.class public final Lx3/h;
.super Lv3/w;
.source "SourceFile"

# interfaces
.implements Lv3/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/h$a;
    }
.end annotation


# static fields
.field public static final d1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final synthetic Z:Lv3/h0;

.field public final b1:Lx3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/l<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final c1:Ljava/lang/Object;

.field private volatile runningWorkers:I

.field public final x:Lv3/w;

.field public final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lx3/h;

    const-string/jumbo v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lx3/h;->d1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ly3/l;I)V
    .locals 0

    invoke-direct {p0}, Lv3/w;-><init>()V

    iput-object p1, p0, Lx3/h;->x:Lv3/w;

    iput p2, p0, Lx3/h;->y:I

    instance-of p2, p1, Lv3/h0;

    if-eqz p2, :cond_0

    check-cast p1, Lv3/h0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lv3/e0;->a:Lv3/h0;

    :cond_1
    iput-object p1, p0, Lx3/h;->Z:Lv3/h0;

    new-instance p1, Lx3/l;

    invoke-direct {p1}, Lx3/l;-><init>()V

    iput-object p1, p0, Lx3/h;->b1:Lx3/l;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/h;->c1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final B()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, Lx3/h;->b1:Lx3/l;

    invoke-virtual {v0}, Lx3/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lx3/h;->c1:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx3/h;->d1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Lx3/h;->b1:Lx3/l;

    invoke-virtual {v2}, Lx3/l;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method public final l(Lh3/f;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Lx3/h;->b1:Lx3/l;

    invoke-virtual {p1, p2}, Lx3/l;->a(Ljava/lang/Object;)Z

    sget-object p1, Lx3/h;->d1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p2

    iget v0, p0, Lx3/h;->y:I

    if-ge p2, v0, :cond_2

    iget-object p2, p0, Lx3/h;->c1:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lx3/h;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    monitor-exit p2

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    invoke-virtual {p0}, Lx3/h;->B()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lx3/h$a;

    invoke-direct {p2, p0, p1}, Lx3/h$a;-><init>(Lx3/h;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lx3/h;->x:Lv3/w;

    invoke-virtual {p1, p0, p2}, Lv3/w;->l(Lh3/f;Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
