.class public final synthetic Le0/g3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/VibVodActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/VibVodActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/g3;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/g3;->c:Lcom/example/navistart/VibVodActivity;

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
    .locals 7

    .line 1
    iget v0, p0, Le0/g3;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x3

    .line 6
    iget-object v4, p0, Le0/g3;->c:Lcom/example/navistart/VibVodActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v4, v3, v0}, Lcom/example/navistart/VibVodActivity;->u(ILjava/lang/Boolean;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    sget-object v0, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 20
    .line 21
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v4, v2, v0}, Lcom/example/navistart/VibVodActivity;->u(ILjava/lang/Boolean;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    sget-object v0, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 28
    .line 29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v4, v1, v0}, Lcom/example/navistart/VibVodActivity;->u(ILjava/lang/Boolean;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_2
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_3
    sget-object v0, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 40
    .line 41
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 42
    .line 43
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lh0/b;->e()Le0/p;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget v0, v0, Le0/p;->e:I

    .line 52
    .line 53
    iget-object v5, v4, Lcom/example/navistart/VibVodActivity;->c:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    iput-boolean v6, v5, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 60
    .line 61
    invoke-virtual {v5, v2}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 62
    .line 63
    .line 64
    iget-object v5, v4, Lcom/example/navistart/VibVodActivity;->d:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iput-boolean v6, v5, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 70
    .line 71
    invoke-virtual {v5, v2}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 72
    .line 73
    .line 74
    iget-object v5, v4, Lcom/example/navistart/VibVodActivity;->e:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iput-boolean v6, v5, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 80
    .line 81
    invoke-virtual {v5, v2}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 82
    .line 83
    .line 84
    if-eq v0, v2, :cond_2

    .line 85
    .line 86
    if-eq v0, v1, :cond_1

    .line 87
    .line 88
    if-eq v0, v3, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, v4, Lcom/example/navistart/VibVodActivity;->e:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iput-boolean v2, v0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, v4, Lcom/example/navistart/VibVodActivity;->d:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iput-boolean v2, v0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, v4, Lcom/example/navistart/VibVodActivity;->c:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iput-boolean v2, v0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 121
    .line 122
    .line 123
    :goto_0
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
