.class public final Lv7/q;
.super Ln7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:Lv7/r;


# direct methods
.method public constructor <init>(Lv7/r;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/q;->b:Lv7/r;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final B(Ln7/f1;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lv7/q;->b:Lv7/r;

    .line 2
    .line 3
    iget-object v0, v0, Lv7/r;->a:Lv7/k;

    .line 4
    .line 5
    invoke-virtual {p1}, Ln7/f1;->f()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v1, v0, Lv7/k;->a:Lv7/o;

    .line 10
    .line 11
    iget-object v2, v1, Lv7/o;->e:Lv7/n;

    .line 12
    .line 13
    if-nez v2, :cond_13

    .line 14
    .line 15
    iget-object v1, v1, Lv7/o;->f:Lv7/n;

    .line 16
    .line 17
    if-nez v1, :cond_13

    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v0, v0, Lv7/k;->b:Ll/d;

    .line 21
    .line 22
    if-eqz p1, :cond_1f

    .line 23
    .line 24
    iget-object p1, v0, Ll/d;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    iget-object p1, v0, Ll/d;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 37
    .line 38
    .line 39
    return-void
.end method
