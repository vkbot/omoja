.class public final Lt1/l;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;)V
    .registers 3

    .line 1
    iput p1, p0, Lt1/l;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lt1/l;->c:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Lt1/l;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_58

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt1/l;->c:Landroid/view/View;

    .line 7
    .line 8
    check-cast v0, Lx0/c;

    .line 9
    .line 10
    iget-boolean v1, v0, Lx0/c;->f:Z

    .line 11
    .line 12
    if-eqz v1, :cond_32

    .line 13
    .line 14
    iget-boolean v1, v0, Lx0/c;->d:Z

    .line 15
    .line 16
    if-nez v1, :cond_32

    .line 17
    .line 18
    iget-object v0, v0, Lx0/c;->c:Lx0/o;

    .line 19
    .line 20
    iget-object v0, v0, Lx0/o;->u:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Li7/k;

    .line 27
    .line 28
    const/4 v2, 0x7

    .line 29
    invoke-direct {v1, v2}, Li7/k;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_26

    .line 37
    .line 38
    goto :goto_32

    .line 39
    :cond_26
    sget-object v0, Lx0/c;->s:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    new-instance v1, Lf5/j;

    .line 42
    .line 43
    const/16 v2, 0x18

    .line 44
    .line 45
    invoke-direct {v1, v2, p0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    :cond_32
    :goto_32
    return-void

    .line 52
    :pswitch_33
    iget-object v0, p0, Lt1/l;->c:Landroid/view/View;

    .line 53
    .line 54
    check-cast v0, Lt1/n;

    .line 55
    .line 56
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lh0/b;->e()Le0/p;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget v1, v1, Le0/p;->d:I

    .line 65
    .line 66
    invoke-static {v0, v1}, Lt1/n;->a(Lt1/n;I)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v1, 0x2710

    .line 70
    .line 71
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_4a
    iget-object v0, p0, Lt1/l;->c:Landroid/view/View;

    .line 76
    .line 77
    check-cast v0, Lt1/m;

    .line 78
    .line 79
    invoke-virtual {v0}, Lt1/m;->b()V

    .line 80
    .line 81
    .line 82
    const-wide/16 v1, 0x2710

    .line 83
    .line 84
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_33
    .end packed-switch
.end method
