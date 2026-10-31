.class public final Lcom/google/android/material/datepicker/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/m;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/material/datepicker/m;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 12

    .line 1
    iget p1, p0, Lcom/google/android/material/datepicker/m;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_b6

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/m;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/github/clans/fab/FloatingActionMenu;

    .line 9
    .line 10
    iget-boolean v0, p1, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    .line 11
    .line 12
    iget-boolean v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    .line 13
    .line 14
    if-eqz v1, :cond_13

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->a(Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_74

    .line 20
    :cond_13
    iget-object v2, p1, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez v1, :cond_74

    .line 23
    .line 24
    iget v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->g0:I

    .line 25
    .line 26
    if-eqz v1, :cond_20

    .line 27
    .line 28
    iget-object v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->e0:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 31
    .line 32
    .line 33
    :cond_20
    iget-boolean v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    .line 34
    .line 35
    if-eqz v1, :cond_36

    .line 36
    .line 37
    iget-object v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    .line 38
    .line 39
    if-eqz v1, :cond_2c

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 42
    .line 43
    .line 44
    goto :goto_36

    .line 45
    :cond_2c
    iget-object v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 53
    .line 54
    .line 55
    :cond_36
    :goto_36
    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p1, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sub-int/2addr v3, v1

    .line 63
    const/4 v4, 0x0

    .line 64
    move v5, v4

    .line 65
    :goto_40
    if-ltz v3, :cond_66

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    instance-of v7, v6, Lcom/github/clans/fab/FloatingActionButton;

    .line 72
    .line 73
    if-eqz v7, :cond_63

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const/16 v8, 0x8

    .line 80
    .line 81
    if-eq v7, v8, :cond_63

    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    check-cast v6, Lcom/github/clans/fab/FloatingActionButton;

    .line 86
    .line 87
    new-instance v7, Lz1/g;

    .line 88
    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-direct {v7, p1, v6, v0, v8}, Lz1/g;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;ZI)V

    .line 91
    .line 92
    .line 93
    int-to-long v8, v5

    .line 94
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    .line 96
    .line 97
    iget v6, p1, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    .line 98
    .line 99
    add-int/2addr v5, v6

    .line 100
    :cond_63
    add-int/lit8 v3, v3, -0x1

    .line 101
    .line 102
    goto :goto_40

    .line 103
    :cond_66
    new-instance v0, Lz1/h;

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    invoke-direct {v0, p1, v3}, Lz1/h;-><init>(Lcom/github/clans/fab/FloatingActionMenu;I)V

    .line 107
    .line 108
    .line 109
    add-int/2addr v4, v1

    .line 110
    iget p1, p1, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    .line 111
    .line 112
    mul-int/2addr v4, p1

    .line 113
    int-to-long v3, v4

    .line 114
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    .line 116
    .line 117
    :cond_74
    :goto_74
    return-void

    .line 118
    :pswitch_75
    iget-object p1, p0, Lcom/google/android/material/datepicker/m;->c:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Lcom/github/clans/fab/FloatingActionButton;

    .line 121
    .line 122
    iget-object v0, p1, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/view/View$OnClickListener;

    .line 123
    .line 124
    if-eqz v0, :cond_80

    .line 125
    .line 126
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    :cond_80
    return-void

    .line 130
    :pswitch_81
    iget-object p1, p0, Lcom/google/android/material/datepicker/m;->c:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p1, Ljava/lang/Runnable;

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_89
    iget-object p1, p0, Lcom/google/android/material/datepicker/m;->c:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Lcom/google/android/material/datepicker/n;

    .line 141
    .line 142
    iget v0, p1, Lcom/google/android/material/datepicker/n;->f:I

    .line 143
    .line 144
    const/4 v1, 0x1

    .line 145
    const/4 v2, 0x2

    .line 146
    if-ne v0, v2, :cond_a3

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/n;->u(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p1, Lcom/google/android/material/datepicker/n;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    .line 153
    const v1, 0x7f130315

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    goto :goto_b4

    .line 164
    :cond_a3
    if-ne v0, v1, :cond_b4

    .line 165
    .line 166
    invoke-virtual {p1, v2}, Lcom/google/android/material/datepicker/n;->u(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p1, Lcom/google/android/material/datepicker/n;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    .line 171
    const v1, 0x7f130316

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    :cond_b4
    :goto_b4
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_89
        :pswitch_81
        :pswitch_75
    .end packed-switch
.end method
