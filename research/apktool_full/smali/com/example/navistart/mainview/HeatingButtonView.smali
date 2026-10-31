.class public Lcom/example/navistart/mainview/HeatingButtonView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:I

.field public c:I

.field public final d:I

.field public e:Z

.field public f:I

.field public final g:Landroid/widget/ImageButton;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/ImageView;

.field public final j:Landroid/widget/ImageView;

.field public final k:Landroid/widget/ImageView;

.field public final l:Landroid/widget/TextView;

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->b:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->c:I

    .line 9
    .line 10
    iput v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->d:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 13
    .line 14
    iput v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->f:I

    .line 15
    .line 16
    const v2, 0x7f07015d

    .line 17
    .line 18
    .line 19
    iput v2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->m:I

    .line 20
    .line 21
    const v2, 0x7f07015f

    .line 22
    .line 23
    .line 24
    iput v2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->n:I

    .line 25
    .line 26
    const v2, 0x7f0c011c

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    const v2, 0x7f09022f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/widget/ImageButton;

    .line 40
    .line 41
    iput-object v2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->g:Landroid/widget/ImageButton;

    .line 42
    .line 43
    const v2, 0x7f090231

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->l:Landroid/widget/TextView;

    .line 53
    .line 54
    const v2, 0x7f09027c

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/widget/ImageView;

    .line 62
    .line 63
    iput-object v2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->h:Landroid/widget/ImageView;

    .line 64
    .line 65
    const v2, 0x7f09027d

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/widget/ImageView;

    .line 73
    .line 74
    iput-object v2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->i:Landroid/widget/ImageView;

    .line 75
    .line 76
    const v2, 0x7f09027e

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroid/widget/ImageView;

    .line 84
    .line 85
    iput-object v2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->j:Landroid/widget/ImageView;

    .line 86
    .line 87
    const v2, 0x7f090230

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/widget/ImageView;

    .line 95
    .line 96
    iput-object v2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->k:Landroid/widget/ImageView;

    .line 97
    .line 98
    if-eqz p2, :cond_1

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget-object v2, Le0/l2;->d:[I

    .line 105
    .line 106
    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/16 v2, 0x27

    .line 111
    .line 112
    :try_start_0
    new-array v2, v2, [B

    .line 113
    .line 114
    fill-array-data v2, :array_0

    .line 115
    .line 116
    .line 117
    const/16 v3, 0x8

    .line 118
    .line 119
    new-array v4, v3, [B

    .line 120
    .line 121
    fill-array-data v4, :array_1

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const/16 v4, 0xa

    .line 129
    .line 130
    new-array v4, v4, [B

    .line 131
    .line 132
    fill-array-data v4, :array_2

    .line 133
    .line 134
    .line 135
    new-array v3, v3, [B

    .line 136
    .line 137
    fill-array-data v3, :array_3

    .line 138
    .line 139
    .line 140
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-interface {p2, v2, v3, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    iput p2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->b:I

    .line 149
    .line 150
    const/4 p2, 0x2

    .line 151
    const/4 v0, -0x1

    .line 152
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    iput p2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->f:I

    .line 157
    .line 158
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    iput p2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->d:I

    .line 163
    .line 164
    const/4 p2, 0x3

    .line 165
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-eq p2, v0, :cond_0

    .line 170
    .line 171
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->k:Landroid/widget/ImageView;

    .line 172
    .line 173
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :catchall_0
    move-exception p2

    .line 178
    goto :goto_1

    .line 179
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    .line 185
    .line 186
    throw p2

    .line 187
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/example/navistart/mainview/HeatingButtonView;->b()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :array_0
    .array-data 1
        -0x1ct
        -0x3ft
        -0x73t
        -0x1ct
        0x53t
        -0x29t
        0x6at
        0x64t
        -0x11t
        -0x23t
        -0x64t
        -0x7t
        0x8t
        -0x75t
        0x6bt
        0x76t
        -0x1et
        -0x2ft
        -0x75t
        -0x5t
        0x0t
        -0x64t
        0x6bt
        0x74t
        -0x1dt
        -0x28t
        -0x2at
        -0xbt
        0x19t
        -0x6dt
        0x6at
        0x65t
        -0x17t
        -0x3at
        -0x2ct
        -0xbt
        0x1ct
        -0x74t
        0x2at
    .end array-data

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
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_1
    .array-data 1
        -0x74t
        -0x4bt
        -0x7t
        -0x6ct
        0x69t
        -0x8t
        0x45t
        0x17t
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_2
    .array-data 1
        0x18t
        0x26t
        0x5ct
        -0xet
        -0x4ct
        0x32t
        0x17t
        -0x19t
        0x1et
        0x36t
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    nop

    .line 233
    :array_3
    .array-data 1
        0x7at
        0x53t
        0x28t
        -0x7at
        -0x25t
        0x5ct
        0x5at
        -0x78t
    .end array-data
.end method

.method private setButtonText(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-le p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->f:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->f:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->l:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->d:I

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->l:Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 7
    .line 8
    xor-int/lit8 v2, v0, 0x1

    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v1}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-boolean v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    return v1

    .line 28
    :cond_2
    if-ne v0, v1, :cond_3

    .line 29
    .line 30
    iget v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->c:I

    .line 31
    .line 32
    rem-int/lit8 v0, v0, 0x4

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    iput v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->c:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->c:I

    .line 41
    .line 42
    return v0

    .line 43
    :cond_3
    const/4 v0, 0x0

    .line 44
    return v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->f:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/example/navistart/mainview/HeatingButtonView;->setButtonText(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->b:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->h:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->i:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->j:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v2, 0x1

    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->h:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->i:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->j:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->c:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget v1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->m:I

    .line 5
    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iget v2, p0, Lcom/example/navistart/mainview/HeatingButtonView;->n:I

    .line 10
    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->h:Landroid/widget/ImageView;

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->i:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->j:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->h:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->i:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->j:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->h:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->i:Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->j:Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->h:Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->i:Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->j:Landroid/widget/ImageView;

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final d(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public getButtonMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHeatingButton()Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->g:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public setButtonMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/example/navistart/mainview/HeatingButtonView;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/example/navistart/mainview/HeatingButtonView;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatingButtonView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
