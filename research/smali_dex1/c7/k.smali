.class public final Lc7/k;
.super Lc7/n;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc7/k;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lb7/u;Lb7/u;)F
    .registers 10

    .line 1
    iget v0, p0, Lc7/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_ba

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lb7/u;->b:I

    .line 7
    .line 8
    iget p1, p1, Lb7/u;->c:I

    .line 9
    .line 10
    if-lez v0, :cond_3e

    .line 11
    .line 12
    if-gtz p1, :cond_e

    .line 13
    .line 14
    goto :goto_3e

    .line 15
    :cond_e
    int-to-float v1, v0

    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    mul-float/2addr v1, v2

    .line 19
    iget v3, p2, Lb7/u;->b:I

    .line 20
    .line 21
    iget p2, p2, Lb7/u;->c:I

    .line 22
    .line 23
    int-to-float v4, v3

    .line 24
    div-float/2addr v1, v4

    .line 25
    cmpg-float v4, v1, v2

    .line 26
    .line 27
    if-gez v4, :cond_1e

    .line 28
    .line 29
    div-float v1, v2, v1

    .line 30
    .line 31
    :cond_1e
    int-to-float p1, p1

    .line 32
    mul-float v4, p1, v2

    .line 33
    .line 34
    int-to-float p2, p2

    .line 35
    div-float/2addr v4, p2

    .line 36
    cmpg-float v5, v4, v2

    .line 37
    .line 38
    if-gez v5, :cond_29

    .line 39
    .line 40
    div-float v4, v2, v4

    .line 41
    .line 42
    :cond_29
    div-float v1, v2, v1

    .line 43
    .line 44
    div-float/2addr v1, v4

    .line 45
    int-to-float v0, v0

    .line 46
    mul-float/2addr v0, v2

    .line 47
    div-float/2addr v0, p1

    .line 48
    int-to-float p1, v3

    .line 49
    mul-float/2addr p1, v2

    .line 50
    div-float/2addr p1, p2

    .line 51
    div-float/2addr v0, p1

    .line 52
    cmpg-float p1, v0, v2

    .line 53
    .line 54
    if-gez p1, :cond_39

    .line 55
    .line 56
    div-float v0, v2, v0

    .line 57
    .line 58
    :cond_39
    div-float/2addr v2, v0

    .line 59
    div-float/2addr v2, v0

    .line 60
    div-float/2addr v2, v0

    .line 61
    mul-float/2addr v2, v1

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    :goto_3e
    const/4 v2, 0x0

    .line 64
    :goto_3f
    return v2

    .line 65
    :pswitch_40
    iget v0, p1, Lb7/u;->b:I

    .line 66
    .line 67
    if-lez v0, :cond_7c

    .line 68
    .line 69
    iget v0, p1, Lb7/u;->c:I

    .line 70
    .line 71
    if-gtz v0, :cond_49

    .line 72
    .line 73
    goto :goto_7c

    .line 74
    :cond_49
    invoke-virtual {p1, p2}, Lb7/u;->b(Lb7/u;)Lb7/u;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget v1, v0, Lb7/u;->b:I

    .line 79
    .line 80
    int-to-float v1, v1

    .line 81
    const/high16 v2, 0x3f800000    # 1.0f

    .line 82
    .line 83
    mul-float v3, v1, v2

    .line 84
    .line 85
    iget p1, p1, Lb7/u;->b:I

    .line 86
    .line 87
    int-to-float p1, p1

    .line 88
    div-float/2addr v3, p1

    .line 89
    cmpl-float p1, v3, v2

    .line 90
    .line 91
    if-lez p1, :cond_69

    .line 92
    .line 93
    div-float p1, v2, v3

    .line 94
    .line 95
    float-to-double v3, p1

    .line 96
    const-wide v5, 0x3ff199999999999aL    # 1.1

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    double-to-float v3, v3

    .line 106
    :cond_69
    iget p1, p2, Lb7/u;->b:I

    .line 107
    .line 108
    int-to-float p1, p1

    .line 109
    mul-float/2addr p1, v2

    .line 110
    div-float/2addr p1, v1

    .line 111
    iget p2, p2, Lb7/u;->c:I

    .line 112
    .line 113
    int-to-float p2, p2

    .line 114
    mul-float/2addr p2, v2

    .line 115
    iget v0, v0, Lb7/u;->c:I

    .line 116
    .line 117
    int-to-float v0, v0

    .line 118
    div-float/2addr p2, v0

    .line 119
    mul-float/2addr p2, p1

    .line 120
    div-float/2addr v2, p2

    .line 121
    div-float/2addr v2, p2

    .line 122
    div-float/2addr v2, p2

    .line 123
    mul-float/2addr v2, v3

    .line 124
    goto :goto_7d

    .line 125
    :cond_7c
    :goto_7c
    const/4 v2, 0x0

    .line 126
    :goto_7d
    return v2

    .line 127
    :pswitch_7e
    iget v0, p1, Lb7/u;->b:I

    .line 128
    .line 129
    if-lez v0, :cond_b8

    .line 130
    .line 131
    iget v0, p1, Lb7/u;->c:I

    .line 132
    .line 133
    if-gtz v0, :cond_87

    .line 134
    .line 135
    goto :goto_b8

    .line 136
    :cond_87
    invoke-virtual {p1, p2}, Lb7/u;->a(Lb7/u;)Lb7/u;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget v1, v0, Lb7/u;->b:I

    .line 141
    .line 142
    int-to-float v1, v1

    .line 143
    const/high16 v2, 0x3f800000    # 1.0f

    .line 144
    .line 145
    mul-float/2addr v1, v2

    .line 146
    iget p1, p1, Lb7/u;->b:I

    .line 147
    .line 148
    int-to-float p1, p1

    .line 149
    div-float p1, v1, p1

    .line 150
    .line 151
    cmpl-float v3, p1, v2

    .line 152
    .line 153
    if-lez v3, :cond_a7

    .line 154
    .line 155
    div-float p1, v2, p1

    .line 156
    .line 157
    float-to-double v3, p1

    .line 158
    const-wide v5, 0x3ff199999999999aL    # 1.1

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 164
    .line 165
    .line 166
    move-result-wide v3

    .line 167
    double-to-float p1, v3

    .line 168
    :cond_a7
    iget v3, p2, Lb7/u;->b:I

    .line 169
    .line 170
    int-to-float v3, v3

    .line 171
    div-float/2addr v1, v3

    .line 172
    iget v0, v0, Lb7/u;->c:I

    .line 173
    .line 174
    int-to-float v0, v0

    .line 175
    mul-float/2addr v0, v2

    .line 176
    iget p2, p2, Lb7/u;->c:I

    .line 177
    .line 178
    int-to-float p2, p2

    .line 179
    div-float/2addr v0, p2

    .line 180
    add-float/2addr v0, v1

    .line 181
    div-float/2addr v2, v0

    .line 182
    div-float/2addr v2, v0

    .line 183
    mul-float/2addr v2, p1

    .line 184
    goto :goto_b9

    .line 185
    :cond_b8
    :goto_b8
    const/4 v2, 0x0

    .line 186
    :goto_b9
    return v2

    .line 187
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_40
    .end packed-switch
.end method

.method public final b(Lb7/u;Lb7/u;)Landroid/graphics/Rect;
    .registers 9

    .line 1
    iget v0, p0, Lc7/k;->a:I

    .line 2
    .line 3
    const-string v1, "; Want: "

    .line 4
    .line 5
    const-string v2, "; Scaled: "

    .line 6
    .line 7
    const-string v3, "Preview: "

    .line 8
    .line 9
    const-string v4, "k"

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_8a

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v0, p2, Lb7/u;->b:I

    .line 17
    .line 18
    iget p2, p2, Lb7/u;->c:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p1, v1, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_18
    invoke-virtual {p1, p2}, Lb7/u;->b(Lb7/u;)Lb7/u;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget p1, v0, Lb7/u;->b:I

    .line 57
    .line 58
    iget v1, p2, Lb7/u;->b:I

    .line 59
    .line 60
    sub-int v1, p1, v1

    .line 61
    .line 62
    div-int/lit8 v1, v1, 0x2

    .line 63
    .line 64
    iget v0, v0, Lb7/u;->c:I

    .line 65
    .line 66
    iget p2, p2, Lb7/u;->c:I

    .line 67
    .line 68
    sub-int p2, v0, p2

    .line 69
    .line 70
    div-int/lit8 p2, p2, 0x2

    .line 71
    .line 72
    new-instance v2, Landroid/graphics/Rect;

    .line 73
    .line 74
    neg-int v3, v1

    .line 75
    neg-int v4, p2

    .line 76
    sub-int/2addr p1, v1

    .line 77
    sub-int/2addr v0, p2

    .line 78
    invoke-direct {v2, v3, v4, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :pswitch_51
    invoke-virtual {p1, p2}, Lb7/u;->a(Lb7/u;)Lb7/u;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget p1, v0, Lb7/u;->b:I

    .line 114
    .line 115
    iget v1, p2, Lb7/u;->b:I

    .line 116
    .line 117
    sub-int v1, p1, v1

    .line 118
    .line 119
    div-int/lit8 v1, v1, 0x2

    .line 120
    .line 121
    iget v0, v0, Lb7/u;->c:I

    .line 122
    .line 123
    iget p2, p2, Lb7/u;->c:I

    .line 124
    .line 125
    sub-int p2, v0, p2

    .line 126
    .line 127
    div-int/lit8 p2, p2, 0x2

    .line 128
    .line 129
    new-instance v2, Landroid/graphics/Rect;

    .line 130
    .line 131
    neg-int v3, v1

    .line 132
    neg-int v4, p2

    .line 133
    sub-int/2addr p1, v1

    .line 134
    sub-int/2addr v0, p2

    .line 135
    invoke-direct {v2, v3, v4, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .line 137
    .line 138
    return-object v2

    .line 139
    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_51
        :pswitch_18
    .end packed-switch
.end method
