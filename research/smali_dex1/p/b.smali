.class public final Lp/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final a:Lq/w;

.field public final b:I

.field public final c:I

.field public final d:Lh/a;

.field public final e:Lq/o;

.field public final f:Z

.field public final g:Lh/i;


# direct methods
.method public constructor <init>(IILh/h;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lq/w;->a()Lq/w;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lp/b;->a:Lq/w;

    .line 9
    .line 10
    iput p1, p0, Lp/b;->b:I

    .line 11
    .line 12
    iput p2, p0, Lp/b;->c:I

    .line 13
    .line 14
    sget-object p1, Lq/q;->f:Lh/g;

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lh/a;

    .line 21
    .line 22
    iput-object p1, p0, Lp/b;->d:Lh/a;

    .line 23
    .line 24
    sget-object p1, Lq/o;->g:Lh/g;

    .line 25
    .line 26
    invoke-virtual {p3, p1}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lq/o;

    .line 31
    .line 32
    iput-object p1, p0, Lp/b;->e:Lq/o;

    .line 33
    .line 34
    sget-object p1, Lq/q;->i:Lh/g;

    .line 35
    .line 36
    invoke-virtual {p3, p1}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_37

    .line 41
    .line 42
    invoke-virtual {p3, p1}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_37

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    const/4 p1, 0x0

    .line 57
    :goto_38
    iput-boolean p1, p0, Lp/b;->f:Z

    .line 58
    .line 59
    sget-object p1, Lq/q;->g:Lh/g;

    .line 60
    .line 61
    invoke-virtual {p3, p1}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lh/i;

    .line 66
    .line 67
    iput-object p1, p0, Lp/b;->g:Lh/i;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 10

    .line 1
    iget-boolean p3, p0, Lp/b;->f:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lp/b;->a:Lq/w;

    .line 5
    .line 6
    iget v2, p0, Lp/b;->b:I

    .line 7
    .line 8
    iget v3, p0, Lp/b;->c:I

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3, p3, v0}, Lq/w;->c(IIZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_13

    .line 15
    .line 16
    invoke-static {p1}, Landroidx/core/view/accessibility/a;->l(Landroid/graphics/ImageDecoder;)V

    .line 17
    .line 18
    .line 19
    goto :goto_16

    .line 20
    :cond_13
    invoke-static {p1}, Landroidx/core/view/accessibility/a;->y(Landroid/graphics/ImageDecoder;)V

    .line 21
    .line 22
    .line 23
    :goto_16
    iget-object p3, p0, Lp/b;->d:Lh/a;

    .line 24
    .line 25
    sget-object v0, Lh/a;->c:Lh/a;

    .line 26
    .line 27
    if-ne p3, v0, :cond_1f

    .line 28
    .line 29
    invoke-static {p1}, Landroidx/core/view/accessibility/a;->C(Landroid/graphics/ImageDecoder;)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    new-instance p3, Lp/a;

    .line 33
    .line 34
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p3}, Landroidx/core/view/accessibility/a;->o(Landroid/graphics/ImageDecoder;Lp/a;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Landroidx/core/view/accessibility/a;->g(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const/high16 v0, -0x80000000

    .line 45
    .line 46
    iget v1, p0, Lp/b;->b:I

    .line 47
    .line 48
    if-ne v1, v0, :cond_35

    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :cond_35
    iget v2, p0, Lp/b;->c:I

    .line 55
    .line 56
    if-ne v2, v0, :cond_3d

    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :cond_3d
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget-object v4, p0, Lp/b;->e:Lq/o;

    .line 71
    .line 72
    invoke-virtual {v4, v0, v3, v1, v2}, Lq/o;->b(IIII)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    int-to-float v1, v1

    .line 81
    mul-float/2addr v1, v0

    .line 82
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    int-to-float v2, v2

    .line 91
    mul-float/2addr v2, v0

    .line 92
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const/4 v3, 0x2

    .line 97
    const-string v4, "ImageDecoder"

    .line 98
    .line 99
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_9f

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v5, "Resizing from ["

    .line 108
    .line 109
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v5, "x"

    .line 120
    .line 121
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p3, "] to ["

    .line 132
    .line 133
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p3, "] scaleFactor: "

    .line 146
    .line 147
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-static {v4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_9f
    invoke-static {p1, v1, v2}, Landroidx/core/view/accessibility/a;->m(Landroid/graphics/ImageDecoder;II)V

    .line 161
    .line 162
    .line 163
    iget-object p3, p0, Lp/b;->g:Lh/i;

    .line 164
    .line 165
    if-eqz p3, :cond_df

    .line 166
    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 168
    .line 169
    const/16 v1, 0x1c

    .line 170
    .line 171
    if-lt v0, v1, :cond_d1

    .line 172
    .line 173
    sget-object v0, Lh/i;->b:Lh/i;

    .line 174
    .line 175
    if-ne p3, v0, :cond_c5

    .line 176
    .line 177
    invoke-static {p2}, Landroidx/core/view/accessibility/a;->c(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    if-eqz p3, :cond_c5

    .line 182
    .line 183
    invoke-static {p2}, Landroidx/core/view/accessibility/a;->c(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-static {p2}, Lorg/apache/commons/net/util/a;->x(Landroid/graphics/ColorSpace;)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_c5

    .line 192
    .line 193
    invoke-static {}, Lorg/apache/commons/net/util/a;->i()Landroid/graphics/ColorSpace$Named;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    goto :goto_c9

    .line 198
    :cond_c5
    invoke-static {}, Lai/onnxruntime/c;->o()Landroid/graphics/ColorSpace$Named;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    :goto_c9
    invoke-static {p2}, Landroidx/core/graphics/a;->i(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-static {p1, p2}, Landroidx/core/view/accessibility/a;->n(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_d1
    const/16 p2, 0x1a

    .line 211
    .line 212
    if-lt v0, p2, :cond_df

    .line 213
    .line 214
    invoke-static {}, Lai/onnxruntime/c;->o()Landroid/graphics/ColorSpace$Named;

    .line 215
    .line 216
    .line 217
    invoke-static {}, Lai/onnxruntime/c;->p()Landroid/graphics/ColorSpace;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-static {p1, p2}, Landroidx/core/view/accessibility/a;->n(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    .line 222
    .line 223
    .line 224
    :cond_df
    return-void
.end method
