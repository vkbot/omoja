.class public final synthetic Lm0/j3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p6, p0, Lm0/j3;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/j3;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lm0/j3;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object p3, p0, Lm0/j3;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lm0/j3;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lm0/j3;->g:Landroid/view/KeyEvent$Callback;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    .line 1
    iget p1, p0, Lm0/j3;->b:I

    .line 2
    .line 3
    iget-object p2, p0, Lm0/j3;->g:Landroid/view/KeyEvent$Callback;

    .line 4
    .line 5
    iget-object p4, p0, Lm0/j3;->f:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p5, p0, Lm0/j3;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p0, Lm0/j3;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lm0/j3;->d:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v1, Ls1/q0;

    .line 17
    .line 18
    check-cast p5, Ls1/i0;

    .line 19
    .line 20
    check-cast p4, Ljava/util/ArrayList;

    .line 21
    .line 22
    check-cast p2, Landroid/app/AlertDialog;

    .line 23
    .line 24
    iget-object p1, p5, Ls1/i0;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lj0/e;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 41
    .line 42
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 43
    .line 44
    iget-object p3, v1, Ls1/q0;->q:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    const/4 p5, 0x0

    .line 51
    move v0, p5

    .line 52
    :cond_0
    const/4 v2, 0x1

    .line 53
    if-ge v0, p4, :cond_1

    .line 54
    .line 55
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    check-cast v3, Ls1/j0;

    .line 62
    .line 63
    iget-object v4, v3, Ls1/j0;->b:Ls1/m0;

    .line 64
    .line 65
    sget-object v5, Ls1/m0;->h:Ls1/m0;

    .line 66
    .line 67
    if-ne v4, v5, :cond_0

    .line 68
    .line 69
    iget-object v3, v3, Ls1/j0;->g:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    new-array v2, v2, [B

    .line 84
    .line 85
    const/16 v5, -0x14

    .line 86
    .line 87
    aput-byte v5, v2, p5

    .line 88
    .line 89
    const/16 v5, 0x8

    .line 90
    .line 91
    new-array v6, v5, [B

    .line 92
    .line 93
    fill-array-data v6, :array_0

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_0

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/16 p2, 0x41

    .line 118
    .line 119
    new-array p2, p2, [B

    .line 120
    .line 121
    fill-array-data p2, :array_1

    .line 122
    .line 123
    .line 124
    new-array p3, v5, [B

    .line 125
    .line 126
    fill-array-data p3, :array_2

    .line 127
    .line 128
    .line 129
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-static {p1, p2}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    sget-object v3, Ls1/m0;->h:Ls1/m0;

    .line 138
    .line 139
    invoke-static {v3}, Ls1/q0;->i(Ls1/m0;)[F

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    aget v0, p4, p5

    .line 144
    .line 145
    aget v4, p4, v2

    .line 146
    .line 147
    invoke-virtual {v1, v0, v4}, Ls1/q0;->n(FF)[F

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    move v4, v2

    .line 152
    new-instance v2, Ls1/j0;

    .line 153
    .line 154
    move v5, v4

    .line 155
    aget v4, v0, p5

    .line 156
    .line 157
    aget v0, v0, v5

    .line 158
    .line 159
    aget v6, p4, p5

    .line 160
    .line 161
    aget v7, p4, v5

    .line 162
    .line 163
    new-instance p4, Landroid/content/ComponentName;

    .line 164
    .line 165
    iget-object p5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 166
    .line 167
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 168
    .line 169
    invoke-direct {p4, p5, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    move v5, v0

    .line 177
    invoke-direct/range {v2 .. v8}, Ls1/j0;-><init>(Ls1/m0;FFFFLjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    iget-object p1, v2, Ls1/j0;->a:Ljava/lang/String;

    .line 184
    .line 185
    iput-object p1, v1, Ls1/q0;->v:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v1}, Ls1/q0;->y()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ls1/q0;->A()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 194
    .line 195
    .line 196
    :goto_0
    return-void

    .line 197
    :pswitch_0
    check-cast v1, Lm0/n3;

    .line 198
    .line 199
    check-cast p5, Landroidx/appcompat/app/AlertDialog;

    .line 200
    .line 201
    check-cast p4, Landroid/widget/TextView;

    .line 202
    .line 203
    check-cast p2, Landroid/widget/ListView;

    .line 204
    .line 205
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Ljava/io/File;

    .line 210
    .line 211
    invoke-virtual {v1, p1, p5, p4, p2}, Lm0/n3;->v(Ljava/io/File;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ListView;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_0
    .array-data 1
        -0x3dt
        -0x1bt
        0x77t
        0x42t
        0x45t
        -0x4ct
        0x5ft
        -0x59t
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_1
    .array-data 1
        -0x48t
        0x19t
        -0x40t
        -0x36t
        0x74t
        0x48t
        0x42t
        0x26t
        -0x29t
        0x65t
        -0x6ft
        -0x68t
        0x1ct
        0x26t
        -0x27t
        0x26t
        -0x2at
        0x64t
        -0x59t
        -0x68t
        0x11t
        0x26t
        -0x21t
        0x26t
        -0x30t
        0x64t
        -0x5ct
        0x68t
        0x75t
        0x75t
        -0x4et
        0x40t
        -0x48t
        0x1t
        0x31t
        -0x68t
        0x10t
        0x26t
        -0x24t
        0x26t
        -0x27t
        0x64t
        -0x5ft
        -0x68t
        0x16t
        0x26t
        -0x27t
        0x26t
        -0x23t
        0x64t
        -0x54t
        -0x68t
        0x1at
        -0x2at
        -0x4et
        0x44t
        0x48t
        0x64t
        -0x51t
        -0x68t
        0x1et
        0x26t
        -0x21t
        0x26t
        -0x2at
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    nop

    .line 267
    :array_2
    .array-data 1
        0x68t
        -0x4ct
        0x11t
        0x48t
        -0x5ct
        -0xat
        0x62t
        -0xat
    .end array-data
.end method
