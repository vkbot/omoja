.class public final Ls1/k0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Z

.field public final synthetic g:Ls1/q0;


# direct methods
.method public constructor <init>(Ls1/q0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls1/k0;->g:Ls1/q0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Ls1/k0;->g:Ls1/q0;

    .line 2
    .line 3
    iget-object v1, v0, Ls1/q0;->e:Ls1/o0;

    .line 4
    .line 5
    iget-boolean v2, v0, Ls1/q0;->s:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_b

    .line 9
    .line 10
    goto/16 :goto_cc

    .line 11
    .line 12
    :cond_b
    instance-of v2, p1, Ls1/l0;

    .line 13
    .line 14
    if-nez v2, :cond_1d

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    instance-of v2, v2, Ls1/l0;

    .line 21
    .line 22
    if-eqz v2, :cond_1d

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/View;

    .line 29
    .line 30
    :cond_1d
    move-object v2, p1

    .line 31
    check-cast v2, Ls1/l0;

    .line 32
    .line 33
    iget-object v2, v2, Ls1/l0;->b:Ls1/j0;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x1

    .line 40
    if-nez v4, :cond_62

    .line 41
    .line 42
    iget-object v2, v2, Ls1/j0;->a:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v2, v0, Ls1/q0;->v:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0}, Ls1/q0;->U()V

    .line 47
    .line 48
    .line 49
    move v2, v3

    .line 50
    :goto_31
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-ge v2, v4, :cond_47

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    instance-of v6, v4, Ls1/l0;

    .line 61
    .line 62
    if-eqz v6, :cond_44

    .line 63
    .line 64
    check-cast v4, Ls1/l0;

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Ls1/q0;->e(Ls1/l0;)V

    .line 67
    .line 68
    .line 69
    :cond_44
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_31

    .line 72
    :cond_47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p0, Ls1/k0;->b:F

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    iput p2, p0, Ls1/k0;->c:F

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    iput p2, p0, Ls1/k0;->d:F

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Ls1/k0;->e:F

    .line 95
    .line 96
    iput-boolean v3, p0, Ls1/k0;->f:Z

    .line 97
    .line 98
    return v5

    .line 99
    :cond_62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    const/4 v6, 0x2

    .line 104
    if-ne v4, v6, :cond_be

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    iget v3, p0, Ls1/k0;->b:F

    .line 111
    .line 112
    sub-float/2addr v2, v3

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    iget v3, p0, Ls1/k0;->c:F

    .line 118
    .line 119
    sub-float/2addr p2, v3

    .line 120
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    const/4 v4, 0x4

    .line 125
    invoke-virtual {v0, v4}, Ls1/q0;->l(I)I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    int-to-float v6, v6

    .line 130
    cmpl-float v3, v3, v6

    .line 131
    .line 132
    if-gtz v3, :cond_92

    .line 133
    .line 134
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {v0, v4}, Ls1/q0;->l(I)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    int-to-float v0, v0

    .line 143
    cmpl-float v0, v3, v0

    .line 144
    .line 145
    if-lez v0, :cond_94

    .line 146
    .line 147
    :cond_92
    iput-boolean v5, p0, Ls1/k0;->f:Z

    .line 148
    .line 149
    :cond_94
    iget v0, p0, Ls1/k0;->d:F

    .line 150
    .line 151
    add-float/2addr v0, v2

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    sub-int/2addr v2, v3

    .line 161
    int-to-float v2, v2

    .line 162
    const/4 v3, 0x0

    .line 163
    invoke-static {v0, v3, v2}, Ls1/q0;->g(FFF)F

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 168
    .line 169
    .line 170
    iget v0, p0, Ls1/k0;->e:F

    .line 171
    .line 172
    add-float/2addr v0, p2

    .line 173
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    sub-int/2addr p2, v1

    .line 182
    int-to-float p2, p2

    .line 183
    invoke-static {v0, v3, p2}, Ls1/q0;->g(FFF)F

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 188
    .line 189
    .line 190
    return v5

    .line 191
    :cond_be
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eq v4, v5, :cond_cd

    .line 196
    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    const/4 v4, 0x3

    .line 202
    if-ne p2, v4, :cond_cc

    .line 203
    .line 204
    goto :goto_cd

    .line 205
    :cond_cc
    :goto_cc
    return v3

    .line 206
    :cond_cd
    :goto_cd
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    if-lez p2, :cond_f8

    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-lez p2, :cond_f8

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    int-to-float v3, v3

    .line 227
    div-float/2addr p2, v3

    .line 228
    iput p2, v2, Ls1/j0;->c:F

    .line 229
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    int-to-float p2, p2

    .line 239
    div-float/2addr p1, p2

    .line 240
    iput p1, v2, Ls1/j0;->d:F

    .line 241
    .line 242
    iget-boolean p1, v0, Ls1/q0;->t:Z

    .line 243
    .line 244
    if-eqz p1, :cond_f8

    .line 245
    .line 246
    invoke-static {v2}, Ls1/q0;->O(Ls1/j0;)V

    .line 247
    .line 248
    .line 249
    :cond_f8
    invoke-virtual {v0}, Ls1/q0;->y()V

    .line 250
    .line 251
    .line 252
    iget-boolean p1, p0, Ls1/k0;->f:Z

    .line 253
    .line 254
    if-nez p1, :cond_103

    .line 255
    .line 256
    invoke-virtual {v0}, Ls1/q0;->A()V

    .line 257
    .line 258
    .line 259
    return v5

    .line 260
    :cond_103
    invoke-virtual {v0}, Ls1/q0;->s()V

    .line 261
    .line 262
    .line 263
    return v5
.end method
