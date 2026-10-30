.class public abstract Lh8/b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;
.implements Ln9/b;


# instance fields
.field public final b:Lh8/e;

.field public final c:Lb8/c;

.field public final d:I

.field public final e:I

.field public f:Ln9/b;

.field public g:I

.field public h:Le8/g;

.field public volatile i:Z

.field public volatile j:Z

.field public final k:Lp8/b;

.field public volatile l:Z

.field public m:I


# direct methods
.method public constructor <init>(Lb8/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/b;->c:Lb8/c;

    .line 5
    .line 6
    iput p2, p0, Lh8/b;->d:I

    .line 7
    .line 8
    iput p2, p0, Lh8/b;->e:I

    .line 9
    .line 10
    new-instance p1, Lh8/e;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lh8/e;-><init>(Lh8/b;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lh8/b;->b:Lh8/e;

    .line 16
    .line 17
    new-instance p1, Lp8/b;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lh8/b;->k:Lp8/b;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh8/b;->i:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lh8/b;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c(Ljava/lang/Throwable;)V
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lh8/b;->m:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lh8/b;->h:Le8/g;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Le8/g;->offer(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lh8/b;->f:Ln9/b;

    .line 15
    .line 16
    invoke-interface {p1}, Ln9/b;->cancel()V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "Queue full?!"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lh8/b;->b()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final f(Ln9/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh8/b;->f:Ln9/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lo8/f;->e(Ln9/b;Ln9/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iput-object p1, p0, Lh8/b;->f:Ln9/b;

    .line 10
    .line 11
    instance-of v0, p1, Le8/d;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Le8/d;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-interface {v0, v1}, Le8/c;->h(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    iput v1, p0, Lh8/b;->m:I

    .line 27
    .line 28
    iput-object v0, p0, Lh8/b;->h:Le8/g;

    .line 29
    .line 30
    iput-boolean v2, p0, Lh8/b;->i:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Lh8/b;->i()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lh8/b;->b()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v2, 0x2

    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    iput v1, p0, Lh8/b;->m:I

    .line 43
    .line 44
    iput-object v0, p0, Lh8/b;->h:Le8/g;

    .line 45
    .line 46
    invoke-virtual {p0}, Lh8/b;->i()V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lh8/b;->d:I

    .line 50
    .line 51
    int-to-long v0, v0

    .line 52
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance v0, Ll8/a;

    .line 57
    .line 58
    iget v1, p0, Lh8/b;->d:I

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ll8/a;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lh8/b;->h:Le8/g;

    .line 64
    .line 65
    invoke-virtual {p0}, Lh8/b;->i()V

    .line 66
    .line 67
    .line 68
    iget v0, p0, Lh8/b;->d:I

    .line 69
    .line 70
    int-to-long v0, v0

    .line 71
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public abstract h(Ljava/lang/Object;)V
.end method

.method public abstract i()V
.end method
