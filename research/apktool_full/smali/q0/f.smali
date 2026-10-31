.class public final synthetic Lq0/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ls1/w;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lt4/c;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lq0/f;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lq0/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ld2/h;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lq0/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget v0, p0, Lq0/f;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lq0/f;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Ls1/f0;

    .line 10
    .line 11
    iget-object v0, p1, Ls1/f0;->c:Ls1/q0;

    .line 12
    .line 13
    iget-boolean v0, v0, Ls1/q0;->E:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const-wide/32 v2, 0xea60

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p1, Ls1/f0;->c:Ls1/q0;

    .line 25
    .line 26
    iget-wide v2, v0, Ls1/q0;->o:J

    .line 27
    .line 28
    :goto_0
    iget-object v0, p1, Ls1/f0;->c:Ls1/q0;

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    const-wide/16 v4, 0x3a98

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-wide v4, v0, Ls1/q0;->o:J

    .line 36
    .line 37
    const-wide/16 v6, 0x2

    .line 38
    .line 39
    mul-long/2addr v4, v6

    .line 40
    const-wide/32 v6, 0x493e0

    .line 41
    .line 42
    .line 43
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    :goto_1
    iput-wide v4, v0, Ls1/q0;->o:J

    .line 48
    .line 49
    :goto_2
    iget-object v0, p1, Ls1/f0;->c:Ls1/q0;

    .line 50
    .line 51
    iget-object v0, v0, Ls1/q0;->e:Ls1/o0;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v4, p1, Ls1/f0;->c:Ls1/q0;

    .line 58
    .line 59
    if-ge v1, v0, :cond_4

    .line 60
    .line 61
    iget-object v0, v4, Ls1/q0;->e:Ls1/o0;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ls1/l0;

    .line 68
    .line 69
    iget-object v0, v0, Ls1/l0;->f:Ls1/b;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ls1/b;->e(Z)V

    .line 74
    .line 75
    .line 76
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget-object p2, v4, Ls1/q0;->r:Landroid/os/Handler;

    .line 80
    .line 81
    iget-object v0, v4, Ls1/q0;->p:Ls1/f0;

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p1, Ls1/f0;->c:Ls1/q0;

    .line 87
    .line 88
    iget-boolean v0, p2, Ls1/q0;->n:Z

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_5

    .line 97
    .line 98
    iget-object p1, p1, Ls1/f0;->c:Ls1/q0;

    .line 99
    .line 100
    iget-object p2, p1, Ls1/q0;->r:Landroid/os/Handler;

    .line 101
    .line 102
    iget-object p1, p1, Ls1/q0;->p:Ls1/f0;

    .line 103
    .line 104
    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_3
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lq0/f;->c:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Ls1/b;

    .line 111
    .line 112
    iput-boolean v1, v0, Ls1/b;->n:Z

    .line 113
    .line 114
    iget-boolean v1, v0, Ls1/b;->j:Z

    .line 115
    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    xor-int/lit8 v1, p2, 0x1

    .line 120
    .line 121
    iput-boolean v1, v0, Ls1/b;->m:Z

    .line 122
    .line 123
    const/16 v1, 0x8

    .line 124
    .line 125
    if-eqz p2, :cond_7

    .line 126
    .line 127
    iget-object p1, v0, Ls1/b;->e:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const/16 v2, 0x38

    .line 139
    .line 140
    new-array v2, v2, [B

    .line 141
    .line 142
    fill-array-data v2, :array_0

    .line 143
    .line 144
    .line 145
    new-array v1, v1, [B

    .line 146
    .line 147
    fill-array-data v1, :array_1

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {v0, p1}, Ls1/b;->f(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_4
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_0
    .array-data 1
        -0x1bt
        -0x1dt
        0x64t
        0x49t
        0x44t
        -0x1bt
        -0x3et
        0x2bt
        -0x7ft
        -0x52t
        0x4t
        0x2ct
        -0x21t
        -0x1ct
        -0x1t
        0x2at
        -0x4ct
        -0x51t
        0x38t
        -0x24t
        -0x4ct
        -0x76t
        -0x70t
        0x79t
        -0x1bt
        -0x3ct
        0x65t
        0x7ct
        -0x4bt
        -0x41t
        -0x70t
        0x79t
        -0x1ct
        -0xet
        -0x6ct
        0x2ct
        -0x25t
        -0x1bt
        -0x3ft
        0x2bt
        -0x73t
        -0x52t
        0xft
        0x2ct
        -0x26t
        -0x1ct
        -0x9t
        0x2bt
        -0x80t
        -0x52t
        0x9t
        0x2ct
        -0x24t
        -0x1ct
        -0xct
        -0xft
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_1
    .array-data 1
        0x35t
        0x7et
        -0x4ct
        -0x4t
        0x64t
        0x34t
        0x41t
        -0x5t
    .end array-data
.end method

.method public c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/example/navistart/MockGPS/MockGpsService;

    .line 4
    .line 5
    sget-object v1, Lcom/example/navistart/MockGPS/MockGpsService;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    sget-boolean v1, Lcom/example/navistart/MockGPS/MockGpsService;->z:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean p1, v0, Lcom/example/navistart/MockGPS/MockGpsService;->e:Z

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-object v1, v0, Lcom/example/navistart/MockGPS/MockGpsService;->b:Lq0/e;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lq0/e;->d()V

    .line 27
    .line 28
    .line 29
    :cond_1
    const v1, 0x7f130272

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/example/navistart/MockGPS/MockGpsService;->l(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, v0, Lcom/example/navistart/MockGPS/MockGpsService;->c:Lq0/h;

    .line 40
    .line 41
    instance-of v1, v0, Lq0/p;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    check-cast v0, Lq0/p;

    .line 46
    .line 47
    iput-boolean p1, v0, Lq0/p;->j:Z

    .line 48
    .line 49
    invoke-virtual {v0}, Lq0/p;->e()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    iget-object p1, p0, Lq0/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/example/navistart/home/WebLauncherActivity;

    .line 4
    .line 5
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    or-int/2addr v0, v1

    .line 16
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/example/navistart/home/WebLauncherActivity;->k:Landroidx/core/graphics/Insets;

    .line 21
    .line 22
    iget-object v1, p1, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 30
    .line 31
    :cond_0
    iput-object v0, v1, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 32
    .line 33
    invoke-virtual {v1}, Ls1/k;->d()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/example/navistart/home/WebLauncherActivity;->s()V

    .line 37
    .line 38
    .line 39
    return-object p2
.end method
