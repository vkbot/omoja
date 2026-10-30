.class public final Ls1/f0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/q0;


# direct methods
.method public synthetic constructor <init>(Ls1/q0;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls1/f0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/f0;->c:Ls1/q0;

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
    .locals 5

    .line 1
    iget v0, p0, Ls1/f0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls1/f0;->c:Ls1/q0;

    .line 7
    .line 8
    iget-boolean v0, v0, Ls1/q0;->E:Z

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Ls1/f0;->c:Ls1/q0;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Ls1/f0;->c:Ls1/q0;

    .line 22
    .line 23
    iget-object v0, v0, Ls1/q0;->q:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    :cond_1
    if-ge v2, v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    check-cast v3, Ls1/j0;

    .line 39
    .line 40
    iget-object v3, v3, Ls1/j0;->b:Ls1/m0;

    .line 41
    .line 42
    invoke-static {v3}, Ls1/q0;->r(Ls1/m0;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Ls1/f0;->c:Ls1/q0;

    .line 49
    .line 50
    iget-object v0, v0, Ls1/q0;->m:Ljava/util/concurrent/ExecutorService;

    .line 51
    .line 52
    new-instance v1, Lf5/j;

    .line 53
    .line 54
    const/16 v2, 0x11

    .line 55
    .line 56
    invoke-direct {v1, v2, p0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Ls1/f0;->c:Ls1/q0;

    .line 64
    .line 65
    iget-object v0, v0, Ls1/q0;->r:Landroid/os/Handler;

    .line 66
    .line 67
    const-wide/16 v1, 0xfa0

    .line 68
    .line 69
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Ls1/f0;->c:Ls1/q0;

    .line 74
    .line 75
    iget-boolean v0, v0, Ls1/q0;->E:Z

    .line 76
    .line 77
    if-nez v0, :cond_6

    .line 78
    .line 79
    iget-object v0, p0, Ls1/f0;->c:Ls1/q0;

    .line 80
    .line 81
    iget-boolean v1, v0, Ls1/q0;->n:Z

    .line 82
    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    iget-object v0, p0, Ls1/f0;->c:Ls1/q0;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Ls1/x;->a(Landroid/content/Context;)Ls1/x;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v1, Lq0/f;

    .line 103
    .line 104
    const/4 v2, 0x2

    .line 105
    invoke-direct {v1, v2, p0}, Lq0/f;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    monitor-enter v0

    .line 109
    :try_start_0
    iget-boolean v2, v0, Ls1/x;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    monitor-exit v0

    .line 114
    goto :goto_1

    .line 115
    :cond_5
    const/4 v2, 0x1

    .line 116
    :try_start_1
    iput-boolean v2, v0, Ls1/x;->g:Z

    .line 117
    .line 118
    iget-object v2, v0, Ls1/x;->d:Ljava/util/concurrent/ExecutorService;

    .line 119
    .line 120
    new-instance v3, Le0/j2;

    .line 121
    .line 122
    const/16 v4, 0x1a

    .line 123
    .line 124
    invoke-direct {v3, v4, v0, v1}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    monitor-exit v0

    .line 131
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v1

    .line 133
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    throw v1

    .line 135
    :cond_6
    :goto_1
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
