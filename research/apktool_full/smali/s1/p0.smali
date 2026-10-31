.class public final Ls1/p0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final b:Ls1/l0;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public final synthetic g:Ls1/q0;


# direct methods
.method public constructor <init>(Ls1/q0;Ls1/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls1/p0;->g:Ls1/q0;

    .line 5
    .line 6
    iput-object p2, p0, Ls1/p0;->b:Ls1/l0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ls1/p0;->g:Ls1/q0;

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
    if-eqz v2, :cond_5

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lez v2, :cond_5

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-gtz v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Ls1/p0;->b:Ls1/l0;

    .line 25
    .line 26
    iget-object v4, v2, Ls1/l0;->b:Ls1/j0;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x1

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    iget-object v3, v4, Ls1/j0;->a:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v3, v0, Ls1/q0;->v:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iput v3, p0, Ls1/p0;->c:F

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iput p2, p0, Ls1/p0;->d:F

    .line 50
    .line 51
    iget p2, v4, Ls1/j0;->e:F

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    int-to-float v3, v3

    .line 58
    mul-float/2addr p2, v3

    .line 59
    iput p2, p0, Ls1/p0;->e:F

    .line 60
    .line 61
    iget p2, v4, Ls1/j0;->f:F

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    int-to-float v1, v1

    .line 68
    mul-float/2addr p2, v1

    .line 69
    iput p2, p0, Ls1/p0;->f:F

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ls1/q0;->e(Ls1/l0;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ls1/q0;->U()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 82
    .line 83
    .line 84
    return v6

    .line 85
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/4 v5, 0x2

    .line 90
    if-ne v2, v5, :cond_2

    .line 91
    .line 92
    iget p1, p0, Ls1/p0;->e:F

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    add-float/2addr v2, p1

    .line 99
    iget p1, p0, Ls1/p0;->c:F

    .line 100
    .line 101
    sub-float/2addr v2, p1

    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    int-to-float p1, p1

    .line 107
    div-float/2addr v2, p1

    .line 108
    iget p1, v4, Ls1/j0;->c:F

    .line 109
    .line 110
    const/high16 v3, 0x3f800000    # 1.0f

    .line 111
    .line 112
    sub-float p1, v3, p1

    .line 113
    .line 114
    const/16 v5, 0x78

    .line 115
    .line 116
    invoke-virtual {v0, v5}, Ls1/q0;->l(I)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    int-to-float v5, v5

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    int-to-float v7, v7

    .line 126
    div-float/2addr v5, v7

    .line 127
    const v7, 0x3e19999a    # 0.15f

    .line 128
    .line 129
    .line 130
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    iget v5, v4, Ls1/j0;->c:F

    .line 139
    .line 140
    sub-float v5, v3, v5

    .line 141
    .line 142
    invoke-static {v2, p1, v5}, Ls1/q0;->g(FFF)F

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput p1, v4, Ls1/j0;->e:F

    .line 147
    .line 148
    iget p1, p0, Ls1/p0;->f:F

    .line 149
    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    add-float/2addr p2, p1

    .line 155
    iget p1, p0, Ls1/p0;->d:F

    .line 156
    .line 157
    sub-float/2addr p2, p1

    .line 158
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    int-to-float p1, p1

    .line 163
    div-float/2addr p2, p1

    .line 164
    iget p1, v4, Ls1/j0;->d:F

    .line 165
    .line 166
    sub-float p1, v3, p1

    .line 167
    .line 168
    const/16 v2, 0x64

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ls1/q0;->l(I)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    int-to-float v2, v2

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    int-to-float v1, v1

    .line 180
    div-float/2addr v2, v1

    .line 181
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    iget v1, v4, Ls1/j0;->d:F

    .line 190
    .line 191
    sub-float/2addr v3, v1

    .line 192
    invoke-static {p2, p1, v3}, Ls1/q0;->g(FFF)F

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    iput p1, v4, Ls1/j0;->f:F

    .line 197
    .line 198
    invoke-virtual {v0}, Ls1/q0;->s()V

    .line 199
    .line 200
    .line 201
    return v6

    .line 202
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eq v1, v6, :cond_4

    .line 207
    .line 208
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    const/4 v1, 0x3

    .line 213
    if-ne p2, v1, :cond_3

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_3
    return v6

    .line 217
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ls1/q0;->y()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 225
    .line 226
    .line 227
    return v6

    .line 228
    :cond_5
    :goto_1
    return v3
.end method
