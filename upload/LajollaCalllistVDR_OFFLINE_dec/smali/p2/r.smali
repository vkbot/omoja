.class public final Lp2/r;
.super Lp2/g0;
.source "SourceFile"


# instance fields
.field public a:Lp2/g0;


# direct methods
.method public constructor <init>(Lp2/g0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lp2/g0;-><init>()V

    iput-object p1, p0, Lp2/r;->a:Lp2/g0;

    return-void
.end method


# virtual methods
.method public final clearDeadline()Lp2/g0;
    .locals 0

    iget-object p0, p0, Lp2/r;->a:Lp2/g0;

    invoke-virtual {p0}, Lp2/g0;->clearDeadline()Lp2/g0;

    move-result-object p0

    return-object p0
.end method

.method public final clearTimeout()Lp2/g0;
    .locals 0

    iget-object p0, p0, Lp2/r;->a:Lp2/g0;

    invoke-virtual {p0}, Lp2/g0;->clearTimeout()Lp2/g0;

    move-result-object p0

    return-object p0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object p0, p0, Lp2/r;->a:Lp2/g0;

    invoke-virtual {p0}, Lp2/g0;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final deadlineNanoTime(J)Lp2/g0;
    .locals 0

    .line 2
    iget-object p0, p0, Lp2/r;->a:Lp2/g0;

    invoke-virtual {p0, p1, p2}, Lp2/g0;->deadlineNanoTime(J)Lp2/g0;

    move-result-object p0

    return-object p0
.end method

.method public final hasDeadline()Z
    .locals 0

    iget-object p0, p0, Lp2/r;->a:Lp2/g0;

    invoke-virtual {p0}, Lp2/g0;->hasDeadline()Z

    move-result p0

    return p0
.end method

.method public final throwIfReached()V
    .locals 0

    iget-object p0, p0, Lp2/r;->a:Lp2/g0;

    invoke-virtual {p0}, Lp2/g0;->throwIfReached()V

    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lp2/g0;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lp2/r;->a:Lp2/g0;

    invoke-virtual {p0, p1, p2, p3}, Lp2/g0;->timeout(JLjava/util/concurrent/TimeUnit;)Lp2/g0;

    move-result-object p0

    return-object p0
.end method

.method public final timeoutNanos()J
    .locals 2

    iget-object p0, p0, Lp2/r;->a:Lp2/g0;

    invoke-virtual {p0}, Lp2/g0;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
