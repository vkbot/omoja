.class public final Ll9/s;
.super Ll9/j0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Ll9/j0;


# direct methods
.method public constructor <init>(Ll9/j0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ll9/s;->a:Ll9/j0;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final clearDeadline()Ll9/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/s;->a:Ll9/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/j0;->clearDeadline()Ll9/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final clearTimeout()Ll9/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/s;->a:Ll9/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/j0;->clearTimeout()Ll9/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Ll9/s;->a:Ll9/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/j0;->deadlineNanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final deadlineNanoTime(J)Ll9/j0;
    .locals 1

    .line 8
    iget-object v0, p0, Ll9/s;->a:Ll9/j0;

    invoke-virtual {v0, p1, p2}, Ll9/j0;->deadlineNanoTime(J)Ll9/j0;

    move-result-object p1

    return-object p1
.end method

.method public final hasDeadline()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/s;->a:Ll9/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/j0;->hasDeadline()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final throwIfReached()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/s;->a:Ll9/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/j0;->throwIfReached()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Ll9/j0;
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll9/s;->a:Ll9/j0;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Ll9/j0;->timeout(JLjava/util/concurrent/TimeUnit;)Ll9/j0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final timeoutNanos()J
    .locals 2

    .line 1
    iget-object v0, p0, Ll9/s;->a:Ll9/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/j0;->timeoutNanos()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
