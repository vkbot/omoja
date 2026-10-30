.class public final synthetic Le0/x0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/example/navistart/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/x0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/x0;->b:Lcom/example/navistart/MainActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget v0, p0, Le0/x0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Le0/x0;->b:Lcom/example/navistart/MainActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Le0/p;

    .line 9
    .line 10
    sget-object v0, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iget v0, p1, Le0/p;->e:I

    .line 15
    .line 16
    iget-object v2, v1, Lcom/example/navistart/MainActivity;->x:Lcom/google/android/material/tabs/TabLayout;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x2

    .line 35
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/16 v8, 0x9

    .line 40
    .line 41
    const/4 v9, 0x3

    .line 42
    const/16 v10, 0x8

    .line 43
    .line 44
    if-eq v0, v5, :cond_2

    .line 45
    .line 46
    if-eq v0, v7, :cond_1

    .line 47
    .line 48
    if-eq v0, v9, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    .line 56
    .line 57
    new-array v0, v8, [B

    .line 58
    .line 59
    fill-array-data v0, :array_0

    .line 60
    .line 61
    .line 62
    new-array v3, v10, [B

    .line 63
    .line 64
    fill-array-data v3, :array_1

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    .line 81
    .line 82
    new-array v0, v8, [B

    .line 83
    .line 84
    fill-array-data v0, :array_2

    .line 85
    .line 86
    .line 87
    new-array v4, v10, [B

    .line 88
    .line 89
    fill-array-data v4, :array_3

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    new-array v0, v8, [B

    .line 108
    .line 109
    fill-array-data v0, :array_4

    .line 110
    .line 111
    .line 112
    new-array v5, v10, [B

    .line 113
    .line 114
    fill-array-data v5, :array_5

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    .line 133
    .line 134
    :goto_0
    iget-object v0, v1, Lcom/example/navistart/MainActivity;->c:Landroid/widget/TextView;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    iget p1, p1, Le0/p;->d:I

    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    new-array p1, v9, [B

    .line 147
    .line 148
    fill-array-data p1, :array_6

    .line 149
    .line 150
    .line 151
    new-array v2, v10, [B

    .line 152
    .line 153
    fill-array-data v2, :array_7

    .line 154
    .line 155
    .line 156
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    return-void

    .line 171
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-virtual {v1, p1}, Lcom/example/navistart/MainActivity;->J(Z)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_0
    .array-data 1
        0x1t
        -0x1bt
        -0x3ft
        0x71t
        0x11t
        0x60t
        0x52t
        -0x21t
        0x63t
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    nop

    .line 197
    :array_1
    .array-data 1
        0x22t
        -0x23t
        -0x7t
        0x30t
        0x50t
        0x21t
        0x13t
        -0x62t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_2
    .array-data 1
        -0x2t
        -0x61t
        -0x35t
        -0x4et
        0x1ct
        -0x3bt
        0x45t
        -0x74t
        -0x64t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    nop

    .line 215
    :array_3
    .array-data 1
        -0x23t
        -0x59t
        -0xdt
        -0xdt
        0x5dt
        -0x7ct
        0x4t
        -0x33t
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_4
    .array-data 1
        0x23t
        0x5ct
        0x48t
        0x6bt
        0x6ct
        -0x40t
        0x0t
        -0x2dt
        0x41t
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
    :array_5
    .array-data 1
        0x0t
        0x64t
        0x70t
        0x2at
        0x2dt
        -0x7ft
        0x41t
        -0x6et
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_6
    .array-data 1
        0x4ft
        0x56t
        0x40t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_7
    .array-data 1
        -0x73t
        -0x1at
        0x3t
        -0x1at
        -0x30t
        -0x55t
        0x66t
        0x48t
    .end array-data
.end method
