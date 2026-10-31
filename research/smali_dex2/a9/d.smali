.class public abstract La9/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:La9/w;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, La9/w;

    .line 2
    .line 3
    const-string v1, "CLOSED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, La9/w;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, La9/d;->a:La9/w;

    .line 10
    .line 11
    return-void
.end method

.method public static final a(La9/u;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 9

    .line 1
    :goto_0
    iget-wide v0, p0, La9/u;->d:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-ltz v0, :cond_e

    .line 6
    .line 7
    invoke-virtual {p0}, La9/u;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    goto :goto_e

    .line 14
    :cond_d
    return-object p0

    .line 15
    :cond_e
    :goto_e
    sget-object v0, La9/e;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, La9/d;->a:La9/w;

    .line 22
    .line 23
    if-ne v1, v2, :cond_19

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_19
    check-cast v1, La9/e;

    .line 27
    .line 28
    check-cast v1, La9/u;

    .line 29
    .line 30
    if-eqz v1, :cond_21

    .line 31
    .line 32
    :cond_1f
    :goto_1f
    move-object p0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_21
    iget-wide v1, p0, La9/u;->d:J

    .line 35
    .line 36
    const-wide/16 v3, 0x1

    .line 37
    .line 38
    add-long/2addr v1, v3

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p3, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, La9/u;

    .line 48
    .line 49
    :cond_30
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_41

    .line 55
    .line 56
    invoke-virtual {p0}, La9/u;->c()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1f

    .line 61
    .line 62
    invoke-virtual {p0}, La9/e;->d()V

    .line 63
    .line 64
    .line 65
    goto :goto_1f

    .line 66
    :cond_41
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_30

    .line 71
    .line 72
    goto :goto_0
.end method
