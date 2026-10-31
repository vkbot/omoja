.class public final synthetic Le0/i3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/VibVodActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/VibVodActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/i3;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/i3;->c:Lcom/example/navistart/VibVodActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 10

    .line 1
    iget p1, p0, Le0/i3;->b:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    const-wide/16 v3, 0x1f4

    .line 8
    .line 9
    iget-object v5, p0, Le0/i3;->c:Lcom/example/navistart/VibVodActivity;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_82

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 15
    .line 16
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v5, v0, p1}, Lcom/example/navistart/VibVodActivity;->u(ILjava/lang/Boolean;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v5, Lcom/example/navistart/VibVodActivity;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 22
    .line 23
    new-instance v6, Le0/g3;

    .line 24
    .line 25
    const/4 v7, 0x4

    .line 26
    invoke-direct {v6, v5, v7}, Le0/g3;-><init>(Lcom/example/navistart/VibVodActivity;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v6, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/example/navistart/VibVodActivity;->t()Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_33

    .line 41
    .line 42
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsavvod(I)V

    .line 50
    .line 51
    .line 52
    :cond_33
    return v1

    .line 53
    :pswitch_34
    sget-object p1, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 54
    .line 55
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    invoke-virtual {v5, v0, p1}, Lcom/example/navistart/VibVodActivity;->u(ILjava/lang/Boolean;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, v5, Lcom/example/navistart/VibVodActivity;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 62
    .line 63
    new-instance v6, Le0/g3;

    .line 64
    .line 65
    invoke-direct {v6, v5, v0}, Le0/g3;-><init>(Lcom/example/navistart/VibVodActivity;I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v6, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/example/navistart/VibVodActivity;->t()Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_5a

    .line 80
    .line 81
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsavvod(I)V

    .line 89
    .line 90
    .line 91
    :cond_5a
    return v1

    .line 92
    :pswitch_5b
    sget-object p1, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 93
    .line 94
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {v5, v1, p1}, Lcom/example/navistart/VibVodActivity;->u(ILjava/lang/Boolean;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, v5, Lcom/example/navistart/VibVodActivity;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 100
    .line 101
    new-instance v6, Le0/g3;

    .line 102
    .line 103
    invoke-direct {v6, v5, v0}, Le0/g3;-><init>(Lcom/example/navistart/VibVodActivity;I)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v6, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/example/navistart/VibVodActivity;->t()Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_80

    .line 118
    .line 119
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-interface {p1, v1}, Lcom/example/navistart/cores/CarCmdProxy;->carsavvod(I)V

    .line 127
    .line 128
    .line 129
    :cond_80
    return v1

    .line 130
    nop

    .line 131
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_34
    .end packed-switch
.end method
