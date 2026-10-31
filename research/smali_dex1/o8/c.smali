.class public abstract Lo8/c;
.super Lo8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Lx7/d;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx7/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo8/c;->b:Lx7/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lo8/c;->i(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final clear()V
    .registers 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public final d(J)V
    .registers 4

    .line 1
    invoke-static {p1, p2}, Lo8/f;->c(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_38

    .line 6
    .line 7
    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    and-int/lit8 p2, p1, -0x2

    .line 12
    .line 13
    if-eqz p2, :cond_f

    .line 14
    .line 15
    goto :goto_38

    .line 16
    :cond_f
    const/4 p2, 0x1

    .line 17
    if-ne p1, p2, :cond_30

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_38

    .line 25
    .line 26
    iget-object p1, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 27
    .line 28
    if-eqz p1, :cond_38

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object p2, p0, Lo8/c;->b:Lx7/d;

    .line 34
    .line 35
    invoke-interface {p2, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v0, 0x4

    .line 43
    if-eq p1, v0, :cond_38

    .line 44
    .line 45
    invoke-interface {p2}, Lx7/d;->a()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    const/4 p1, 0x0

    .line 50
    const/4 p2, 0x2

    .line 51
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public final h(I)I
    .registers 2

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    return p1
.end method

.method public final i(Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_4
    const/16 v1, 0x8

    .line 6
    .line 7
    iget-object v2, p0, Lo8/c;->b:Lx7/d;

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    if-ne v0, v1, :cond_1f

    .line 11
    .line 12
    iput-object p1, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eq p1, v3, :cond_42

    .line 27
    .line 28
    invoke-interface {v2}, Lx7/d;->a()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    and-int/lit8 v1, v0, -0x3

    .line 33
    .line 34
    if-eqz v1, :cond_24

    .line 35
    .line 36
    goto :goto_42

    .line 37
    :cond_24
    const/4 v1, 0x2

    .line 38
    if-ne v0, v1, :cond_38

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eq p1, v3, :cond_42

    .line 52
    .line 53
    invoke-interface {v2}, Lx7/d;->a()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_38
    iput-object p1, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_43

    .line 66
    .line 67
    :cond_42
    :goto_42
    return-void

    .line 68
    :cond_43
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-ne v0, v3, :cond_4

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 76
    .line 77
    return-void
.end method

.method public final isEmpty()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    if-eq v0, v1, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_13

    .line 9
    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v2, p0, Lo8/c;->c:Ljava/lang/Object;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_13
    return-object v2
.end method
