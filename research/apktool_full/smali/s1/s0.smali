.class public final synthetic Ls1/s0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/u0;


# direct methods
.method public synthetic constructor <init>(Ls1/u0;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls1/s0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/s0;->c:Ls1/u0;

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
    .locals 6

    .line 1
    iget p1, p0, Ls1/s0;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Ls1/s0;->c:Ls1/u0;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iput-object v0, v1, Ls1/u0;->q:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, v1, Ls1/u0;->d:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iget-object v0, v1, Ls1/u0;->i:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-boolean v2, v1, Ls1/u0;->f:Z

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    iget-object v2, v1, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    move v5, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 28
    .line 29
    :goto_0
    iput v5, v1, Ls1/u0;->g:I

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    move v2, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 36
    .line 37
    :goto_1
    iput v2, v1, Ls1/u0;->h:I

    .line 38
    .line 39
    iput-boolean v3, v1, Ls1/u0;->f:Z

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v2, v1, Ls1/u0;->b:Landroid/widget/ImageView;

    .line 45
    .line 46
    const/16 v5, 0x8

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v1, Ls1/u0;->e:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ls1/u0;->h()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ls1/u0;->i()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v1}, Ls1/u0;->j()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    iget v0, v1, Ls1/u0;->p:I

    .line 73
    .line 74
    add-int/2addr v0, v3

    .line 75
    iput v0, v1, Ls1/u0;->p:I

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 78
    .line 79
    .line 80
    const/16 v2, 0x28

    .line 81
    .line 82
    new-array v2, v2, [B

    .line 83
    .line 84
    fill-array-data v2, :array_0

    .line 85
    .line 86
    .line 87
    new-array v3, v5, [B

    .line 88
    .line 89
    fill-array-data v3, :array_1

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Ls1/u0;->k(Ljava/lang/String;)Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, v1, Ls1/u0;->k:Ljava/util/concurrent/ExecutorService;

    .line 104
    .line 105
    if-nez p1, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    new-instance v2, La4/c;

    .line 109
    .line 110
    const/16 v3, 0xb

    .line 111
    .line 112
    invoke-direct {v2, v1, v0, v3}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    return-void

    .line 119
    :pswitch_0
    iput-object v0, v1, Ls1/u0;->q:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v1}, Ls1/u0;->i()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ls1/u0;->n()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_1
    invoke-virtual {v1}, Ls1/u0;->l()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_0
    .array-data 1
        0x1et
        -0x49t
        -0x48t
        -0x6bt
        0x5t
        0x54t
        0x4ct
        0x76t
        0x1ft
        -0x5dt
        -0x48t
        -0x6et
        0x5t
        0x5dt
        0x4dt
        0x46t
        -0x12t
        -0x10t
        -0x29t
        -0xct
        0x55t
        0x37t
        0x25t
        0x26t
        0x75t
        -0x10t
        -0x2at
        -0xbt
        0x63t
        0x37t
        0x28t
        0x26t
        0x73t
        -0x10t
        -0x30t
        -0xbt
        0x6ct
        0x5t
        0x1dt
        0x50t
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    :array_1
    .array-data 1
        -0x32t
        0x20t
        0x68t
        0x25t
        -0x2bt
        -0x19t
        -0x63t
        -0xat
    .end array-data
.end method
