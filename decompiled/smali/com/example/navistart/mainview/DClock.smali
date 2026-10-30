.class public Lcom/example/navistart/mainview/DClock;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:Z

.field public d:Ljava/time/LocalDateTime;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/widget/ImageView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/ImageView;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const p2, 0x7f0c004c

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/example/navistart/mainview/DClock;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    const v1, 0x7f0700e7

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    const v1, 0x7f0700e2

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 31
    .line 32
    const v1, 0x7f0700e6

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 43
    .line 44
    const v1, 0x7f0700e5

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 55
    .line 56
    const v1, 0x7f0700e0

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 67
    .line 68
    const v1, 0x7f0700df

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 79
    .line 80
    const v1, 0x7f0700e4

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 91
    .line 92
    const v1, 0x7f0700e3

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 103
    .line 104
    const v1, 0x7f0700de

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 115
    .line 116
    const v1, 0x7f0700e1

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    const v0, 0x7f090273

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .line 135
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->j:Landroid/widget/ImageView;

    .line 136
    .line 137
    const v0, 0x7f090272

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/widget/ImageView;

    .line 145
    .line 146
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->k:Landroid/widget/ImageView;

    .line 147
    .line 148
    const v0, 0x7f090275

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->l:Landroid/widget/ImageView;

    .line 158
    .line 159
    const v0, 0x7f090274

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .line 168
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->m:Landroid/widget/ImageView;

    .line 169
    .line 170
    const v0, 0x7f090277

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroid/widget/ImageView;

    .line 178
    .line 179
    const v0, 0x7f090276

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Landroid/widget/ImageView;

    .line 187
    .line 188
    const v0, 0x7f0901a0

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/ImageView;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->o:Landroid/widget/ImageView;

    .line 198
    .line 199
    const v0, 0x7f0901a1

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/widget/ImageView;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->n:Landroid/widget/ImageView;

    .line 209
    .line 210
    const v0, 0x7f0901a4

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/widget/ImageView;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->p:Landroid/widget/ImageView;

    .line 220
    .line 221
    const v0, 0x7f0901a5

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroid/widget/ImageView;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->q:Landroid/widget/ImageView;

    .line 231
    .line 232
    const v0, 0x7f0901a2

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/ImageView;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->r:Landroid/widget/ImageView;

    .line 242
    .line 243
    const v0, 0x7f0901a3

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/widget/ImageView;

    .line 251
    .line 252
    iput-object v0, p0, Lcom/example/navistart/mainview/DClock;->s:Landroid/widget/ImageView;

    .line 253
    .line 254
    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 256
    .line 257
    .line 258
    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/example/navistart/mainview/DClock;->c:Z

    .line 260
    .line 261
    return-void
.end method

.method public final b(Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    div-int/lit8 v1, p3, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/example/navistart/mainview/DClock;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    rem-int/lit8 p3, p3, 0xa

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/example/navistart/mainview/DClock;->c:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/example/navistart/mainview/DClock;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v0, 0x1a

    .line 17
    .line 18
    if-lt p1, v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lorg/apache/commons/net/util/a;->o()Ljava/time/LocalDateTime;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/example/navistart/mainview/DClock;->d:Ljava/time/LocalDateTime;

    .line 25
    .line 26
    invoke-static {p1}, Lorg/apache/commons/net/util/a;->d(Ljava/time/LocalDateTime;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/example/navistart/mainview/DClock;->e:I

    .line 31
    .line 32
    iget-object p1, p0, Lcom/example/navistart/mainview/DClock;->d:Ljava/time/LocalDateTime;

    .line 33
    .line 34
    invoke-static {p1}, Lorg/apache/commons/net/util/a;->y(Ljava/time/LocalDateTime;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/example/navistart/mainview/DClock;->f:I

    .line 39
    .line 40
    iget-object p1, p0, Lcom/example/navistart/mainview/DClock;->d:Ljava/time/LocalDateTime;

    .line 41
    .line 42
    invoke-static {p1}, Lorg/apache/commons/net/util/a;->A(Ljava/time/LocalDateTime;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lcom/example/navistart/mainview/DClock;->g:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/example/navistart/mainview/DClock;->d:Ljava/time/LocalDateTime;

    .line 49
    .line 50
    invoke-static {p1}, Lorg/apache/commons/net/util/a;->C(Ljava/time/LocalDateTime;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/example/navistart/mainview/DClock;->h:I

    .line 55
    .line 56
    iget-object p1, p0, Lcom/example/navistart/mainview/DClock;->d:Ljava/time/LocalDateTime;

    .line 57
    .line 58
    invoke-static {p1}, Lorg/apache/commons/net/util/a;->D(Ljava/time/LocalDateTime;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 v0, 0x2

    .line 67
    const/4 v1, 0x4

    .line 68
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lcom/example/navistart/mainview/DClock;->i:I

    .line 81
    .line 82
    :cond_1
    iget-object p1, p0, Lcom/example/navistart/mainview/DClock;->j:Landroid/widget/ImageView;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->k:Landroid/widget/ImageView;

    .line 85
    .line 86
    iget v1, p0, Lcom/example/navistart/mainview/DClock;->e:I

    .line 87
    .line 88
    invoke-virtual {p0, p1, v0, v1}, Lcom/example/navistart/mainview/DClock;->b(Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/example/navistart/mainview/DClock;->l:Landroid/widget/ImageView;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->m:Landroid/widget/ImageView;

    .line 94
    .line 95
    iget v1, p0, Lcom/example/navistart/mainview/DClock;->f:I

    .line 96
    .line 97
    invoke-virtual {p0, p1, v0, v1}, Lcom/example/navistart/mainview/DClock;->b(Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/example/navistart/mainview/DClock;->n:Landroid/widget/ImageView;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->o:Landroid/widget/ImageView;

    .line 103
    .line 104
    iget v1, p0, Lcom/example/navistart/mainview/DClock;->g:I

    .line 105
    .line 106
    invoke-virtual {p0, p1, v0, v1}, Lcom/example/navistart/mainview/DClock;->b(Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/example/navistart/mainview/DClock;->q:Landroid/widget/ImageView;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->p:Landroid/widget/ImageView;

    .line 112
    .line 113
    iget v1, p0, Lcom/example/navistart/mainview/DClock;->h:I

    .line 114
    .line 115
    invoke-virtual {p0, p1, v0, v1}, Lcom/example/navistart/mainview/DClock;->b(Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/example/navistart/mainview/DClock;->s:Landroid/widget/ImageView;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/example/navistart/mainview/DClock;->r:Landroid/widget/ImageView;

    .line 121
    .line 122
    iget v1, p0, Lcom/example/navistart/mainview/DClock;->i:I

    .line 123
    .line 124
    invoke-virtual {p0, p1, v0, v1}, Lcom/example/navistart/mainview/DClock;->b(Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 125
    .line 126
    .line 127
    const-wide/16 v0, 0x1388

    .line 128
    .line 129
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
