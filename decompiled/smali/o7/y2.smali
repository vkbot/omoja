.class public final Lo7/y2;
.super Ln7/h0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/lang/Object;

.field public final synthetic d:Ln7/j0;


# direct methods
.method public constructor <init>(Lo7/a3;Lo7/a3;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo7/y2;->a:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo7/y2;->d:Ln7/j0;

    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo7/y2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    iput-object p2, p0, Lo7/y2;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo7/e3;Ln7/t;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lo7/y2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lo7/y2;->d:Ln7/j0;

    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lo7/y2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const-string p1, "subchannel"

    .line 18
    .line 19
    invoke-static {p2, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lo7/y2;->c:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lo7/g3;)Ln7/f0;
    .locals 3

    .line 1
    iget p1, p0, Lo7/y2;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const/4 v0, 0x1

    .line 8
    iget-object v1, p0, Lo7/y2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lo7/y2;->d:Ln7/j0;

    .line 17
    .line 18
    check-cast p1, Lo7/e3;

    .line 19
    .line 20
    iget-object p1, p1, Lo7/e3;->f:Ln7/e;

    .line 21
    .line 22
    invoke-virtual {p1}, Ln7/e;->f()Ln7/k1;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Lcom/bumptech/glide/m;

    .line 27
    .line 28
    const/16 v1, 0x13

    .line 29
    .line 30
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p1, Ln7/f0;->e:Ln7/f0;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_0
    const/4 p1, 0x0

    .line 40
    const/4 v0, 0x1

    .line 41
    iget-object v1, p0, Lo7/y2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lo7/y2;->d:Ln7/j0;

    .line 50
    .line 51
    check-cast p1, Lo7/a3;

    .line 52
    .line 53
    iget-object p1, p1, Lo7/a3;->f:Ln7/e;

    .line 54
    .line 55
    invoke-virtual {p1}, Ln7/e;->f()Ln7/k1;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lo7/y2;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lo7/a3;

    .line 62
    .line 63
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lf5/j;

    .line 67
    .line 68
    const/16 v2, 0xa

    .line 69
    .line 70
    invoke-direct {v1, v2, v0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    sget-object p1, Ln7/f0;->e:Ln7/f0;

    .line 77
    .line 78
    return-object p1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
