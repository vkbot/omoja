.class public Lcom/example/navistart/ModernMainActivity;
.super Lcom/example/navistart/MainActivity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final B1:Ljava/lang/String;

.field public static final C1:Ljava/lang/String;


# instance fields
.field public A1:Ljava/lang/String;

.field public final m1:Ljava/util/HashSet;

.field public final n1:[I

.field public final o1:[I

.field public final p1:[I

.field public final q1:[I

.field public final r1:[I

.field public final s1:[I

.field public final t1:[I

.field public final u1:[I

.field public v1:I

.field public w1:I

.field public x1:Ljava/lang/Boolean;

.field public y1:Z

.field public z1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0xb

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_2

    .line 26
    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    fill-array-data v1, :array_3

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/example/navistart/ModernMainActivity;->C1:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 1
        -0x4bt
        -0x2at
        0x34t
        0x78t
        -0xft
        0x5et
        0x5ct
        0x33t
        -0x43t
        -0x26t
        0x24t
        0x74t
        -0x14t
        0x5et
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    nop

    .line 53
    :array_1
    .array-data 1
        -0x28t
        -0x47t
        0x50t
        0x1dt
        -0x7dt
        0x30t
        0x3t
        0x40t
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_2
    .array-data 1
        0x6ct
        -0x2et
        -0x25t
        -0x6t
        0x3t
        0x5ct
        0xft
        0x6t
        0x6et
        -0x2et
        -0x2dt
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_3
    .array-data 1
        0x1t
        -0x43t
        -0x41t
        -0x61t
        0x71t
        0x32t
        0x50t
        0x72t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/example/navistart/MainActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/example/navistart/ModernMainActivity;->m1:Ljava/util/HashSet;

    .line 10
    .line 11
    const v0, 0x7f09031c

    .line 12
    .line 13
    .line 14
    const v1, 0x7f09031f

    .line 15
    .line 16
    .line 17
    const v2, 0x7f09031d

    .line 18
    .line 19
    .line 20
    const v3, 0x7f09031e

    .line 21
    .line 22
    .line 23
    filled-new-array {v2, v3, v0, v1}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/example/navistart/ModernMainActivity;->n1:[I

    .line 28
    .line 29
    const v0, 0x7f090322

    .line 30
    .line 31
    .line 32
    const v1, 0x7f090328

    .line 33
    .line 34
    .line 35
    const v2, 0x7f090323

    .line 36
    .line 37
    .line 38
    const v3, 0x7f090326

    .line 39
    .line 40
    .line 41
    filled-new-array {v2, v3, v0, v1}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/example/navistart/ModernMainActivity;->o1:[I

    .line 46
    .line 47
    const/4 v0, 0x7

    .line 48
    new-array v1, v0, [I

    .line 49
    .line 50
    fill-array-data v1, :array_0

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/example/navistart/ModernMainActivity;->p1:[I

    .line 54
    .line 55
    new-array v0, v0, [I

    .line 56
    .line 57
    fill-array-data v0, :array_1

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/example/navistart/ModernMainActivity;->q1:[I

    .line 61
    .line 62
    const v0, 0x7f1302ac

    .line 63
    .line 64
    .line 65
    const v1, 0x7f1302d7

    .line 66
    .line 67
    .line 68
    const v2, 0x7f1302b7

    .line 69
    .line 70
    .line 71
    const v3, 0x7f1302cf

    .line 72
    .line 73
    .line 74
    filled-new-array {v2, v3, v0, v1}, [I

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/example/navistart/ModernMainActivity;->r1:[I

    .line 79
    .line 80
    const v0, 0x7f090339

    .line 81
    .line 82
    .line 83
    const v1, 0x7f090337

    .line 84
    .line 85
    .line 86
    const v2, 0x7f09033a

    .line 87
    .line 88
    .line 89
    const v3, 0x7f090338

    .line 90
    .line 91
    .line 92
    const v4, 0x7f090336

    .line 93
    .line 94
    .line 95
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/example/navistart/ModernMainActivity;->s1:[I

    .line 100
    .line 101
    const v0, 0x7f090334

    .line 102
    .line 103
    .line 104
    const v1, 0x7f090332

    .line 105
    .line 106
    .line 107
    const v2, 0x7f090335

    .line 108
    .line 109
    .line 110
    const v3, 0x7f090333

    .line 111
    .line 112
    .line 113
    const v4, 0x7f090331

    .line 114
    .line 115
    .line 116
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/example/navistart/ModernMainActivity;->t1:[I

    .line 121
    .line 122
    const v0, 0x7f1302d9

    .line 123
    .line 124
    .line 125
    const v1, 0x7f1302ad

    .line 126
    .line 127
    .line 128
    const v2, 0x7f1301b6

    .line 129
    .line 130
    .line 131
    const v3, 0x7f1301d2

    .line 132
    .line 133
    .line 134
    const v4, 0x7f1301ae

    .line 135
    .line 136
    .line 137
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/example/navistart/ModernMainActivity;->u1:[I

    .line 142
    .line 143
    return-void

    .line 144
    nop

    .line 145
    :array_0
    .array-data 4
        0x7f090305
        0x7f090308
        0x7f09030a
        0x7f090309
        0x7f090307
        0x7f090304
        0x7f090303
    .end array-data

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
    .line 161
    .line 162
    .line 163
    :array_1
    .array-data 4
        0x7f0900cb
        0x7f0902e3
        0x7f0902e6
        0x7f0902e5
        0x7f0902df
        0x7f0900cc
        0x7f0902de
    .end array-data
.end method


# virtual methods
.method public final H(Ln0/c;)V
    .locals 1

    .line 1
    sget-object v0, Ln0/c;->k:Ln0/c;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/example/navistart/ModernMainActivity;->z1:Z

    .line 9
    .line 10
    const p1, 0x7f09031b

    .line 11
    .line 12
    .line 13
    const v0, 0x7f090044

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/example/navistart/ModernMainActivity;->a0(II)V

    .line 17
    .line 18
    .line 19
    const p1, 0x7f090319

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0902b9

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/example/navistart/ModernMainActivity;->a0(II)V

    .line 26
    .line 27
    .line 28
    const p1, 0x7f0902b5

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/example/navistart/ModernMainActivity;->a0(II)V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/example/navistart/ModernMainActivity;->y1:Z

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/example/navistart/ModernMainActivity;->c0()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final J(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/example/navistart/MainActivity;->J(Z)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc7/e;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lc7/e;-><init>(Ljava/lang/Object;ZI)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final R(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    if-lez v1, :cond_11

    .line 6
    .line 7
    if-gtz p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_e

    .line 10
    .line 11
    :cond_0
    int-to-float v1, v1

    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    div-float/2addr v1, v2

    .line 23
    const v2, 0x44548000    # 850.0f

    .line 24
    .line 25
    .line 26
    cmpg-float v1, v1, v2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-gez v1, :cond_1

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v3

    .line 35
    :goto_0
    iget-object v4, v0, Lcom/example/navistart/ModernMainActivity;->x1:Ljava/lang/Boolean;

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ne v4, v1, :cond_2

    .line 44
    .line 45
    goto/16 :goto_e

    .line 46
    .line 47
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iput-object v4, v0, Lcom/example/navistart/ModernMainActivity;->x1:Ljava/lang/Boolean;

    .line 52
    .line 53
    const v4, 0x7f090320

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const/16 v6, 0xa4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/16 v6, 0xdc

    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0, v6}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    const v4, 0x7f09030e

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const/16 v5, 0x8

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    move v6, v5

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move v6, v3

    .line 96
    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    const v4, 0x7f09030b

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Landroid/widget/LinearLayout;

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    const v2, 0x800003

    .line 112
    .line 113
    .line 114
    :goto_3
    const/16 v6, 0x10

    .line 115
    .line 116
    or-int/2addr v2, v6

    .line 117
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 118
    .line 119
    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    move v2, v3

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    const/16 v2, 0x12

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    :goto_4
    if-eqz v1, :cond_7

    .line 131
    .line 132
    move v7, v3

    .line 133
    goto :goto_5

    .line 134
    :cond_7
    const/16 v7, 0xe

    .line 135
    .line 136
    invoke-virtual {v0, v7}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    :goto_5
    invoke-virtual {v4, v2, v3, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 141
    .line 142
    .line 143
    move v2, v3

    .line 144
    :goto_6
    iget-object v4, v0, Lcom/example/navistart/ModernMainActivity;->n1:[I

    .line 145
    .line 146
    array-length v7, v4

    .line 147
    const/16 v8, 0x36

    .line 148
    .line 149
    const/4 v9, -0x2

    .line 150
    const/high16 v12, 0x41700000    # 15.0f

    .line 151
    .line 152
    const/high16 v13, 0x41500000    # 13.0f

    .line 153
    .line 154
    const/4 v14, 0x3

    .line 155
    const/4 v15, 0x2

    .line 156
    const/4 v10, 0x6

    .line 157
    if-ge v2, v7, :cond_b

    .line 158
    .line 159
    aget v4, v4, v2

    .line 160
    .line 161
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Landroid/widget/TextView;

    .line 166
    .line 167
    iget-object v7, v0, Lcom/example/navistart/ModernMainActivity;->r1:[I

    .line 168
    .line 169
    aget v11, v7, v2

    .line 170
    .line 171
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 185
    .line 186
    .line 187
    if-eqz v1, :cond_8

    .line 188
    .line 189
    move v12, v13

    .line 190
    :cond_8
    invoke-virtual {v4, v15, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    .line 192
    .line 193
    if-eqz v1, :cond_9

    .line 194
    .line 195
    const/16 v11, 0xa

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_9
    move v11, v6

    .line 199
    :goto_7
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    invoke-virtual {v0, v5}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    invoke-virtual {v4, v11, v12, v13, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 216
    .line 217
    .line 218
    if-eqz v1, :cond_a

    .line 219
    .line 220
    move v10, v5

    .line 221
    goto :goto_8

    .line 222
    :cond_a
    const/16 v10, 0xc

    .line 223
    .line 224
    :goto_8
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 236
    .line 237
    invoke-virtual {v0, v8}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    invoke-virtual {v4, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 242
    .line 243
    .line 244
    aget v7, v7, v2

    .line 245
    .line 246
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v2, v2, 0x1

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_b
    move v2, v3

    .line 257
    :goto_9
    iget-object v4, v0, Lcom/example/navistart/ModernMainActivity;->s1:[I

    .line 258
    .line 259
    array-length v7, v4

    .line 260
    if-ge v2, v7, :cond_f

    .line 261
    .line 262
    aget v4, v4, v2

    .line 263
    .line 264
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    check-cast v4, Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v7, v0, Lcom/example/navistart/ModernMainActivity;->u1:[I

    .line 271
    .line 272
    aget v11, v7, v2

    .line 273
    .line 274
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 288
    .line 289
    .line 290
    if-eqz v1, :cond_c

    .line 291
    .line 292
    move v11, v13

    .line 293
    goto :goto_a

    .line 294
    :cond_c
    move v11, v12

    .line 295
    :goto_a
    invoke-virtual {v4, v15, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 296
    .line 297
    .line 298
    if-eqz v1, :cond_d

    .line 299
    .line 300
    const/16 v11, 0xa

    .line 301
    .line 302
    goto :goto_b

    .line 303
    :cond_d
    move v11, v6

    .line 304
    :goto_b
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    invoke-virtual {v0, v5}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    invoke-virtual {v4, v11, v3, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 321
    .line 322
    .line 323
    if-eqz v1, :cond_e

    .line 324
    .line 325
    const/16 v3, 0x8

    .line 326
    .line 327
    goto :goto_c

    .line 328
    :cond_e
    const/16 v3, 0xc

    .line 329
    .line 330
    :goto_c
    invoke-virtual {v0, v3}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 342
    .line 343
    invoke-virtual {v0, v8}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    invoke-virtual {v4, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 348
    .line 349
    .line 350
    aget v3, v7, v2

    .line 351
    .line 352
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-virtual {v4, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    add-int/lit8 v2, v2, 0x1

    .line 360
    .line 361
    const/4 v3, 0x0

    .line 362
    const/16 v5, 0x8

    .line 363
    .line 364
    const/16 v6, 0x10

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_f
    const v2, 0x7f090327

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    check-cast v2, Landroid/widget/TextView;

    .line 375
    .line 376
    if-eqz v1, :cond_10

    .line 377
    .line 378
    const/high16 v1, 0x41a80000    # 21.0f

    .line 379
    .line 380
    goto :goto_d

    .line 381
    :cond_10
    const/high16 v1, 0x41c00000    # 24.0f

    .line 382
    .line 383
    :goto_d
    invoke-virtual {v2, v15, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 384
    .line 385
    .line 386
    :cond_11
    :goto_e
    return-void
.end method

.method public final S(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    invoke-virtual {p0, v0}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    invoke-virtual {p0, v0}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final T(Landroid/view/View;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_28

    .line 8
    .line 9
    :cond_0
    const v2, 0x7f050381

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0x7f050382

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const v4, 0x7f05037f

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const v5, 0x7f050380

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const v6, 0x7f05037b

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const v7, 0x7f05037c

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    const v9, 0x7f09057c

    .line 56
    .line 57
    .line 58
    if-ne v8, v9, :cond_1

    .line 59
    .line 60
    const/16 v8, 0x8

    .line 61
    .line 62
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const v9, 0x7f090040

    .line 70
    .line 71
    .line 72
    const v11, 0x800013

    .line 73
    .line 74
    .line 75
    const/16 v12, 0x14

    .line 76
    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v14, 0x1

    .line 79
    const/4 v15, 0x2

    .line 80
    const/4 v10, 0x0

    .line 81
    if-eq v8, v9, :cond_2

    .line 82
    .line 83
    const v9, 0x7f090043

    .line 84
    .line 85
    .line 86
    if-eq v8, v9, :cond_2

    .line 87
    .line 88
    const v9, 0x7f090041

    .line 89
    .line 90
    .line 91
    if-eq v8, v9, :cond_2

    .line 92
    .line 93
    const v9, 0x7f09003f

    .line 94
    .line 95
    .line 96
    if-ne v8, v9, :cond_3

    .line 97
    .line 98
    :cond_2
    move-object v8, v1

    .line 99
    check-cast v8, Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    const v9, 0x7f0701a2

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    invoke-virtual {v8, v9, v10, v11, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 122
    .line 123
    .line 124
    invoke-static {v8, v10}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    .line 125
    .line 126
    .line 127
    const/high16 v9, 0x41900000    # 18.0f

    .line 128
    .line 129
    invoke-virtual {v8, v15, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v13, v13, v13, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-virtual {v8, v9, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    const/16 v11, 0x34

    .line 150
    .line 151
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    iput v14, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    .line 157
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    :cond_3
    instance-of v8, v1, Landroidx/cardview/widget/CardView;

    .line 161
    .line 162
    const/4 v9, 0x0

    .line 163
    if-eqz v8, :cond_6

    .line 164
    .line 165
    move-object v8, v1

    .line 166
    check-cast v8, Landroidx/cardview/widget/CardView;

    .line 167
    .line 168
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    const v14, 0x7f0902b2

    .line 176
    .line 177
    .line 178
    if-eq v11, v14, :cond_5

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    const v14, 0x7f0902b1

    .line 185
    .line 186
    .line 187
    if-ne v11, v14, :cond_4

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {v8, v4}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    int-to-float v11, v11

    .line 198
    invoke-virtual {v8, v11}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8, v13}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_5
    :goto_0
    invoke-virtual {v8, v10}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8, v13}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v13}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 212
    .line 213
    .line 214
    :cond_6
    :goto_1
    instance-of v8, v1, Lcom/google/android/flexbox/FlexboxLayout;

    .line 215
    .line 216
    const/16 v13, 0x36

    .line 217
    .line 218
    const/4 v11, 0x6

    .line 219
    const/4 v15, -0x1

    .line 220
    const/16 v12, 0xe

    .line 221
    .line 222
    if-eqz v8, :cond_f

    .line 223
    .line 224
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    const v8, 0x7f0900ed

    .line 235
    .line 236
    .line 237
    if-ne v4, v8, :cond_7

    .line 238
    .line 239
    const/4 v4, 0x1

    .line 240
    goto :goto_2

    .line 241
    :cond_7
    move v4, v10

    .line 242
    :goto_2
    if-eqz v4, :cond_8

    .line 243
    .line 244
    move v8, v10

    .line 245
    goto :goto_3

    .line 246
    :cond_8
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    :goto_3
    if-eqz v4, :cond_9

    .line 251
    .line 252
    move v9, v10

    .line 253
    goto :goto_4

    .line 254
    :cond_9
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 255
    .line 256
    .line 257
    move-result v16

    .line 258
    move/from16 v9, v16

    .line 259
    .line 260
    :goto_4
    if-eqz v4, :cond_a

    .line 261
    .line 262
    move v14, v10

    .line 263
    goto :goto_5

    .line 264
    :cond_a
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 265
    .line 266
    .line 267
    move-result v16

    .line 268
    move/from16 v14, v16

    .line 269
    .line 270
    :goto_5
    if-eqz v4, :cond_b

    .line 271
    .line 272
    move v12, v10

    .line 273
    goto :goto_6

    .line 274
    :cond_b
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 275
    .line 276
    .line 277
    move-result v16

    .line 278
    move/from16 v12, v16

    .line 279
    .line 280
    :goto_6
    invoke-virtual {v1, v8, v9, v14, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 288
    .line 289
    if-eqz v9, :cond_d

    .line 290
    .line 291
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 292
    .line 293
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 294
    .line 295
    const/16 v12, 0x20

    .line 296
    .line 297
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 298
    .line 299
    .line 300
    move-result v12

    .line 301
    if-lt v9, v12, :cond_c

    .line 302
    .line 303
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 304
    .line 305
    .line 306
    move-result v9

    .line 307
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 308
    .line 309
    :cond_c
    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .line 311
    .line 312
    :cond_d
    if-eqz v4, :cond_10

    .line 313
    .line 314
    move-object v4, v1

    .line 315
    check-cast v4, Lcom/google/android/flexbox/FlexboxLayout;

    .line 316
    .line 317
    move v8, v10

    .line 318
    :goto_7
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    if-ge v8, v9, :cond_f

    .line 323
    .line 324
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 329
    .line 330
    .line 331
    move-result-object v12

    .line 332
    iput v15, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 333
    .line 334
    instance-of v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 335
    .line 336
    if-eqz v14, :cond_e

    .line 337
    .line 338
    move-object v14, v12

    .line 339
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 340
    .line 341
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 342
    .line 343
    .line 344
    move-result v13

    .line 345
    invoke-virtual {v14, v10, v10, v10, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 346
    .line 347
    .line 348
    :cond_e
    const/16 v13, 0x3a

    .line 349
    .line 350
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    invoke-virtual {v9, v13}, Landroid/view/View;->setMinimumHeight(I)V

    .line 355
    .line 356
    .line 357
    const v13, 0x7f070184

    .line 358
    .line 359
    .line 360
    invoke-virtual {v9, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 361
    .line 362
    .line 363
    const/16 v13, 0x12

    .line 364
    .line 365
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 366
    .line 367
    .line 368
    move-result v14

    .line 369
    const/16 v13, 0xe

    .line 370
    .line 371
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    invoke-virtual {v9, v14, v10, v11, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v9, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    .line 380
    .line 381
    add-int/lit8 v8, v8, 0x1

    .line 382
    .line 383
    const/4 v11, 0x6

    .line 384
    const/16 v13, 0x36

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_f
    move/from16 v20, v6

    .line 388
    .line 389
    goto/16 :goto_f

    .line 390
    .line 391
    :cond_10
    move-object v4, v1

    .line 392
    check-cast v4, Lcom/google/android/flexbox/FlexboxLayout;

    .line 393
    .line 394
    const/4 v8, 0x2

    .line 395
    invoke-virtual {v4, v8}, Lcom/google/android/flexbox/FlexboxLayout;->setAlignItems(I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4, v10}, Lcom/google/android/flexbox/FlexboxLayout;->setJustifyContent(I)V

    .line 399
    .line 400
    .line 401
    move v8, v10

    .line 402
    :goto_8
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 403
    .line 404
    .line 405
    move-result v9

    .line 406
    if-ge v8, v9, :cond_1e

    .line 407
    .line 408
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 413
    .line 414
    .line 415
    move-result-object v11

    .line 416
    instance-of v12, v9, Lcom/example/navistart/mainview/HeatManSetView;

    .line 417
    .line 418
    if-eqz v12, :cond_11

    .line 419
    .line 420
    move/from16 v20, v6

    .line 421
    .line 422
    move/from16 v17, v8

    .line 423
    .line 424
    goto/16 :goto_d

    .line 425
    .line 426
    :cond_11
    instance-of v12, v9, Landroid/widget/LinearLayout;

    .line 427
    .line 428
    if-eqz v12, :cond_18

    .line 429
    .line 430
    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 431
    .line 432
    const/4 v13, -0x2

    .line 433
    if-ne v12, v13, :cond_12

    .line 434
    .line 435
    iput v15, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 436
    .line 437
    :cond_12
    move-object v12, v9

    .line 438
    check-cast v12, Landroid/widget/LinearLayout;

    .line 439
    .line 440
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 441
    .line 442
    .line 443
    move-result v13

    .line 444
    const/16 v14, 0x3c

    .line 445
    .line 446
    if-nez v13, :cond_14

    .line 447
    .line 448
    const v13, 0x800013

    .line 449
    .line 450
    .line 451
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v14}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 455
    .line 456
    .line 457
    move-result v13

    .line 458
    invoke-virtual {v12, v13}, Landroid/view/View;->setMinimumHeight(I)V

    .line 459
    .line 460
    .line 461
    const/4 v13, 0x6

    .line 462
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 463
    .line 464
    .line 465
    move-result v14

    .line 466
    const/4 v10, 0x4

    .line 467
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 468
    .line 469
    .line 470
    move-result v15

    .line 471
    move/from16 v17, v8

    .line 472
    .line 473
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 474
    .line 475
    .line 476
    move-result v8

    .line 477
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 478
    .line 479
    .line 480
    move-result v13

    .line 481
    invoke-virtual {v12, v14, v15, v8, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 482
    .line 483
    .line 484
    :cond_13
    move/from16 v20, v6

    .line 485
    .line 486
    goto/16 :goto_b

    .line 487
    .line 488
    :cond_14
    move/from16 v17, v8

    .line 489
    .line 490
    const/4 v8, 0x0

    .line 491
    :goto_9
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    .line 492
    .line 493
    .line 494
    move-result v10

    .line 495
    if-ge v8, v10, :cond_13

    .line 496
    .line 497
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 498
    .line 499
    .line 500
    move-result-object v10

    .line 501
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 502
    .line 503
    .line 504
    move-result-object v13

    .line 505
    instance-of v15, v10, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 506
    .line 507
    if-eqz v15, :cond_17

    .line 508
    .line 509
    const/4 v15, -0x1

    .line 510
    iput v15, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 511
    .line 512
    instance-of v15, v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 513
    .line 514
    if-eqz v15, :cond_15

    .line 515
    .line 516
    move-object v15, v13

    .line 517
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 518
    .line 519
    const v14, 0x800003

    .line 520
    .line 521
    .line 522
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 523
    .line 524
    :cond_15
    const/16 v14, 0xc

    .line 525
    .line 526
    invoke-virtual {v0, v14}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 527
    .line 528
    .line 529
    move-result v15

    .line 530
    move/from16 v18, v8

    .line 531
    .line 532
    move-object/from16 v19, v12

    .line 533
    .line 534
    const/4 v8, 0x4

    .line 535
    invoke-virtual {v0, v8}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 536
    .line 537
    .line 538
    move-result v12

    .line 539
    move/from16 v20, v6

    .line 540
    .line 541
    invoke-virtual {v0, v14}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    invoke-virtual {v0, v8}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 546
    .line 547
    .line 548
    move-result v14

    .line 549
    invoke-virtual {v10, v15, v12, v6, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 550
    .line 551
    .line 552
    const/16 v6, 0x3c

    .line 553
    .line 554
    invoke-virtual {v0, v6}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 555
    .line 556
    .line 557
    move-result v8

    .line 558
    invoke-virtual {v10, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v10, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    .line 563
    .line 564
    :cond_16
    const/16 v8, 0x3c

    .line 565
    .line 566
    goto :goto_a

    .line 567
    :cond_17
    move/from16 v20, v6

    .line 568
    .line 569
    move/from16 v18, v8

    .line 570
    .line 571
    move-object/from16 v19, v12

    .line 572
    .line 573
    instance-of v6, v10, Landroid/widget/LinearLayout;

    .line 574
    .line 575
    if-eqz v6, :cond_16

    .line 576
    .line 577
    move-object v6, v10

    .line 578
    check-cast v6, Landroid/widget/LinearLayout;

    .line 579
    .line 580
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 581
    .line 582
    .line 583
    move-result v8

    .line 584
    if-nez v8, :cond_16

    .line 585
    .line 586
    const/4 v15, -0x1

    .line 587
    iput v15, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 588
    .line 589
    invoke-virtual {v10, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    .line 591
    .line 592
    const v13, 0x800013

    .line 593
    .line 594
    .line 595
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 596
    .line 597
    .line 598
    const/16 v8, 0x3c

    .line 599
    .line 600
    invoke-virtual {v0, v8}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 601
    .line 602
    .line 603
    move-result v10

    .line 604
    invoke-virtual {v6, v10}, Landroid/view/View;->setMinimumHeight(I)V

    .line 605
    .line 606
    .line 607
    const/4 v13, 0x6

    .line 608
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 609
    .line 610
    .line 611
    move-result v10

    .line 612
    const/4 v12, 0x4

    .line 613
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 614
    .line 615
    .line 616
    move-result v14

    .line 617
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 618
    .line 619
    .line 620
    move-result v15

    .line 621
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 622
    .line 623
    .line 624
    move-result v13

    .line 625
    invoke-virtual {v6, v10, v14, v15, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 626
    .line 627
    .line 628
    :goto_a
    add-int/lit8 v6, v18, 0x1

    .line 629
    .line 630
    move v14, v8

    .line 631
    move-object/from16 v12, v19

    .line 632
    .line 633
    move v8, v6

    .line 634
    move/from16 v6, v20

    .line 635
    .line 636
    goto/16 :goto_9

    .line 637
    .line 638
    :goto_b
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->S(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    .line 643
    .line 644
    goto :goto_d

    .line 645
    :cond_18
    move/from16 v20, v6

    .line 646
    .line 647
    move/from16 v17, v8

    .line 648
    .line 649
    instance-of v6, v9, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 650
    .line 651
    if-eqz v6, :cond_1a

    .line 652
    .line 653
    const/4 v13, -0x2

    .line 654
    iput v13, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 655
    .line 656
    instance-of v6, v11, Lo2/e;

    .line 657
    .line 658
    if-eqz v6, :cond_19

    .line 659
    .line 660
    move-object v6, v11

    .line 661
    check-cast v6, Lo2/e;

    .line 662
    .line 663
    const/high16 v8, 0x3f800000    # 1.0f

    .line 664
    .line 665
    iput v8, v6, Lo2/e;->c:F

    .line 666
    .line 667
    :cond_19
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->S(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    .line 672
    .line 673
    goto :goto_d

    .line 674
    :cond_1a
    instance-of v6, v9, Landroid/widget/FrameLayout;

    .line 675
    .line 676
    if-eqz v6, :cond_1d

    .line 677
    .line 678
    move-object v6, v9

    .line 679
    check-cast v6, Landroid/view/ViewGroup;

    .line 680
    .line 681
    const/4 v8, 0x0

    .line 682
    :goto_c
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 683
    .line 684
    .line 685
    move-result v10

    .line 686
    if-ge v8, v10, :cond_1d

    .line 687
    .line 688
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 689
    .line 690
    .line 691
    move-result-object v10

    .line 692
    instance-of v10, v10, Landroid/widget/Spinner;

    .line 693
    .line 694
    if-eqz v10, :cond_1c

    .line 695
    .line 696
    const/4 v10, 0x0

    .line 697
    iput v10, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 698
    .line 699
    instance-of v6, v11, Lo2/e;

    .line 700
    .line 701
    if-eqz v6, :cond_1b

    .line 702
    .line 703
    move-object v6, v11

    .line 704
    check-cast v6, Lo2/e;

    .line 705
    .line 706
    const/high16 v8, 0x3f800000    # 1.0f

    .line 707
    .line 708
    iput v8, v6, Lo2/e;->c:F

    .line 709
    .line 710
    const/16 v8, 0xdc

    .line 711
    .line 712
    invoke-virtual {v0, v8}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 713
    .line 714
    .line 715
    move-result v8

    .line 716
    iput v8, v6, Lo2/e;->g:I

    .line 717
    .line 718
    :cond_1b
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->S(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    .line 723
    .line 724
    goto :goto_d

    .line 725
    :cond_1c
    add-int/lit8 v8, v8, 0x1

    .line 726
    .line 727
    goto :goto_c

    .line 728
    :cond_1d
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->S(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    .line 733
    .line 734
    :goto_d
    add-int/lit8 v8, v17, 0x1

    .line 735
    .line 736
    move/from16 v6, v20

    .line 737
    .line 738
    const/4 v10, 0x0

    .line 739
    const/4 v15, -0x1

    .line 740
    goto/16 :goto_8

    .line 741
    .line 742
    :cond_1e
    move/from16 v20, v6

    .line 743
    .line 744
    const/4 v6, 0x0

    .line 745
    :goto_e
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 746
    .line 747
    .line 748
    move-result v8

    .line 749
    if-ge v6, v8, :cond_21

    .line 750
    .line 751
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 752
    .line 753
    .line 754
    move-result-object v8

    .line 755
    instance-of v8, v8, Lcom/example/navistart/mainview/HeatManSetView;

    .line 756
    .line 757
    if-eqz v8, :cond_20

    .line 758
    .line 759
    iget-object v6, v0, Lcom/example/navistart/ModernMainActivity;->m1:Ljava/util/HashSet;

    .line 760
    .line 761
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    move-result v6

    .line 765
    if-eqz v6, :cond_1f

    .line 766
    .line 767
    new-instance v6, Le0/p1;

    .line 768
    .line 769
    invoke-direct {v6, v0, v4}, Le0/p1;-><init>(Lcom/example/navistart/ModernMainActivity;Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v4, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 773
    .line 774
    .line 775
    :cond_1f
    new-instance v6, La1/a;

    .line 776
    .line 777
    const/16 v8, 0x12

    .line 778
    .line 779
    invoke-direct {v6, v8, v0, v4}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v4, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 783
    .line 784
    .line 785
    goto :goto_f

    .line 786
    :cond_20
    add-int/lit8 v6, v6, 0x1

    .line 787
    .line 788
    goto :goto_e

    .line 789
    :cond_21
    :goto_f
    move-object v4, v1

    .line 790
    :goto_10
    const v6, 0x7f0902b6

    .line 791
    .line 792
    .line 793
    const/16 v8, 0xa

    .line 794
    .line 795
    if-eqz v4, :cond_27

    .line 796
    .line 797
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 798
    .line 799
    .line 800
    move-result v9

    .line 801
    if-ne v9, v6, :cond_25

    .line 802
    .line 803
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 804
    .line 805
    .line 806
    move-result v4

    .line 807
    const v9, 0x7f090292

    .line 808
    .line 809
    .line 810
    if-eq v4, v9, :cond_22

    .line 811
    .line 812
    const v9, 0x7f090291

    .line 813
    .line 814
    .line 815
    if-ne v4, v9, :cond_23

    .line 816
    .line 817
    :cond_22
    const/4 v10, 0x4

    .line 818
    const v13, 0x7f070184

    .line 819
    .line 820
    .line 821
    goto :goto_11

    .line 822
    :cond_23
    instance-of v4, v1, Landroid/widget/RadioGroup;

    .line 823
    .line 824
    if-eqz v4, :cond_27

    .line 825
    .line 826
    const/4 v10, 0x4

    .line 827
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 828
    .line 829
    .line 830
    move-result v4

    .line 831
    const/4 v13, 0x6

    .line 832
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 833
    .line 834
    .line 835
    move-result v9

    .line 836
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 837
    .line 838
    .line 839
    move-result v11

    .line 840
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 841
    .line 842
    .line 843
    move-result v12

    .line 844
    invoke-virtual {v1, v4, v9, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 845
    .line 846
    .line 847
    goto :goto_12

    .line 848
    :goto_11
    invoke-virtual {v1, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 849
    .line 850
    .line 851
    const/16 v4, 0x42

    .line 852
    .line 853
    invoke-virtual {v0, v4}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 854
    .line 855
    .line 856
    move-result v4

    .line 857
    invoke-virtual {v1, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v0, v8}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 861
    .line 862
    .line 863
    move-result v4

    .line 864
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 865
    .line 866
    .line 867
    move-result v9

    .line 868
    const/16 v14, 0xc

    .line 869
    .line 870
    invoke-virtual {v0, v14}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 871
    .line 872
    .line 873
    move-result v11

    .line 874
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 875
    .line 876
    .line 877
    move-result v12

    .line 878
    invoke-virtual {v1, v4, v9, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 882
    .line 883
    .line 884
    move-result-object v4

    .line 885
    const/4 v15, -0x1

    .line 886
    iput v15, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 887
    .line 888
    instance-of v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 889
    .line 890
    if-eqz v9, :cond_24

    .line 891
    .line 892
    move-object v9, v4

    .line 893
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 894
    .line 895
    const/4 v10, 0x0

    .line 896
    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 897
    .line 898
    const/4 v13, 0x6

    .line 899
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 900
    .line 901
    .line 902
    move-result v10

    .line 903
    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 904
    .line 905
    :cond_24
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    .line 907
    .line 908
    goto :goto_12

    .line 909
    :cond_25
    const v13, 0x7f070184

    .line 910
    .line 911
    .line 912
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 913
    .line 914
    .line 915
    move-result-object v9

    .line 916
    instance-of v9, v9, Landroid/view/View;

    .line 917
    .line 918
    if-nez v9, :cond_26

    .line 919
    .line 920
    goto :goto_12

    .line 921
    :cond_26
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 922
    .line 923
    .line 924
    move-result-object v4

    .line 925
    check-cast v4, Landroid/view/View;

    .line 926
    .line 927
    goto/16 :goto_10

    .line 928
    .line 929
    :cond_27
    :goto_12
    instance-of v4, v1, Landroid/widget/FrameLayout;

    .line 930
    .line 931
    if-eqz v4, :cond_29

    .line 932
    .line 933
    move-object v4, v1

    .line 934
    check-cast v4, Landroid/view/ViewGroup;

    .line 935
    .line 936
    const/4 v9, 0x0

    .line 937
    :goto_13
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 938
    .line 939
    .line 940
    move-result v10

    .line 941
    if-ge v9, v10, :cond_29

    .line 942
    .line 943
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 944
    .line 945
    .line 946
    move-result-object v10

    .line 947
    instance-of v10, v10, Landroid/widget/Spinner;

    .line 948
    .line 949
    if-eqz v10, :cond_28

    .line 950
    .line 951
    const v4, 0x7f07018a

    .line 952
    .line 953
    .line 954
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 955
    .line 956
    .line 957
    goto :goto_14

    .line 958
    :cond_28
    add-int/lit8 v9, v9, 0x1

    .line 959
    .line 960
    goto :goto_13

    .line 961
    :cond_29
    :goto_14
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 962
    .line 963
    .line 964
    move-result-object v4

    .line 965
    instance-of v9, v4, Landroid/graphics/drawable/ColorDrawable;

    .line 966
    .line 967
    if-eqz v9, :cond_2b

    .line 968
    .line 969
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    .line 970
    .line 971
    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 972
    .line 973
    .line 974
    move-result v4

    .line 975
    const/4 v15, -0x1

    .line 976
    if-ne v4, v15, :cond_2a

    .line 977
    .line 978
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 979
    .line 980
    .line 981
    goto :goto_15

    .line 982
    :cond_2a
    const v9, 0x7f050069

    .line 983
    .line 984
    .line 985
    invoke-static {v0, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 986
    .line 987
    .line 988
    move-result v9

    .line 989
    if-ne v4, v9, :cond_2b

    .line 990
    .line 991
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 992
    .line 993
    .line 994
    :cond_2b
    :goto_15
    move-object v4, v1

    .line 995
    :goto_16
    const v9, 0x7f050379

    .line 996
    .line 997
    .line 998
    const/16 v10, 0x28

    .line 999
    .line 1000
    if-eqz v4, :cond_2d

    .line 1001
    .line 1002
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 1003
    .line 1004
    .line 1005
    move-result v11

    .line 1006
    const v12, 0x7f0902b4

    .line 1007
    .line 1008
    .line 1009
    if-eq v11, v12, :cond_2f

    .line 1010
    .line 1011
    const v12, 0x7f0902b3

    .line 1012
    .line 1013
    .line 1014
    if-ne v11, v12, :cond_2c

    .line 1015
    .line 1016
    goto :goto_17

    .line 1017
    :cond_2c
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v11

    .line 1021
    instance-of v11, v11, Landroid/view/View;

    .line 1022
    .line 1023
    if-nez v11, :cond_2e

    .line 1024
    .line 1025
    :cond_2d
    move/from16 v12, v20

    .line 1026
    .line 1027
    goto/16 :goto_1c

    .line 1028
    .line 1029
    :cond_2e
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v4

    .line 1033
    check-cast v4, Landroid/view/View;

    .line 1034
    .line 1035
    goto :goto_16

    .line 1036
    :cond_2f
    :goto_17
    instance-of v4, v1, Lcom/google/android/material/tabs/TabLayout;

    .line 1037
    .line 1038
    const v11, 0x7f09016c

    .line 1039
    .line 1040
    .line 1041
    if-eqz v4, :cond_30

    .line 1042
    .line 1043
    move-object v4, v1

    .line 1044
    check-cast v4, Lcom/google/android/material/tabs/TabLayout;

    .line 1045
    .line 1046
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1047
    .line 1048
    .line 1049
    invoke-static {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->g(II)Landroid/content/res/ColorStateList;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v12

    .line 1053
    invoke-virtual {v4, v12}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 1054
    .line 1055
    .line 1056
    move/from16 v12, v20

    .line 1057
    .line 1058
    invoke-virtual {v4, v12}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 1059
    .line 1060
    .line 1061
    const/4 v13, 0x0

    .line 1062
    invoke-static {v13}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v14

    .line 1066
    invoke-virtual {v4, v14}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v4

    .line 1073
    check-cast v4, Landroid/view/ViewGroup;

    .line 1074
    .line 1075
    new-instance v14, Landroid/content/res/ColorStateList;

    .line 1076
    .line 1077
    const v15, 0x10100a1

    .line 1078
    .line 1079
    .line 1080
    filled-new-array {v15}, [I

    .line 1081
    .line 1082
    .line 1083
    move-result-object v15

    .line 1084
    new-array v8, v13, [I

    .line 1085
    .line 1086
    filled-new-array {v15, v8}, [[I

    .line 1087
    .line 1088
    .line 1089
    move-result-object v8

    .line 1090
    filled-new-array {v7, v5}, [I

    .line 1091
    .line 1092
    .line 1093
    move-result-object v5

    .line 1094
    invoke-direct {v14, v8, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1095
    .line 1096
    .line 1097
    const/4 v5, 0x0

    .line 1098
    :goto_18
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1099
    .line 1100
    .line 1101
    move-result v8

    .line 1102
    if-ge v5, v8, :cond_33

    .line 1103
    .line 1104
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v8

    .line 1108
    invoke-virtual {v8, v14}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1109
    .line 1110
    .line 1111
    add-int/lit8 v5, v5, 0x1

    .line 1112
    .line 1113
    goto :goto_18

    .line 1114
    :cond_30
    move/from16 v12, v20

    .line 1115
    .line 1116
    instance-of v4, v1, Landroid/widget/GridLayout;

    .line 1117
    .line 1118
    if-eqz v4, :cond_33

    .line 1119
    .line 1120
    move-object v4, v1

    .line 1121
    check-cast v4, Landroid/widget/GridLayout;

    .line 1122
    .line 1123
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v8

    .line 1127
    if-eqz v8, :cond_31

    .line 1128
    .line 1129
    const/4 v8, 0x1

    .line 1130
    goto :goto_19

    .line 1131
    :cond_31
    const/4 v8, 0x0

    .line 1132
    :goto_19
    if-eqz v8, :cond_32

    .line 1133
    .line 1134
    move v5, v7

    .line 1135
    :cond_32
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1136
    .line 1137
    .line 1138
    if-eqz v8, :cond_33

    .line 1139
    .line 1140
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v5

    .line 1144
    invoke-virtual {v0, v10}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1145
    .line 1146
    .line 1147
    move-result v8

    .line 1148
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1149
    .line 1150
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    .line 1152
    .line 1153
    const/4 v8, 0x2

    .line 1154
    invoke-virtual {v0, v8}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1155
    .line 1156
    .line 1157
    move-result v5

    .line 1158
    int-to-float v5, v5

    .line 1159
    invoke-virtual {v4, v5}, Landroid/view/View;->setElevation(F)V

    .line 1160
    .line 1161
    .line 1162
    :cond_33
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 1163
    .line 1164
    .line 1165
    move-result v4

    .line 1166
    instance-of v5, v1, Landroid/widget/ImageView;

    .line 1167
    .line 1168
    if-eqz v5, :cond_38

    .line 1169
    .line 1170
    move-object v5, v1

    .line 1171
    check-cast v5, Landroid/widget/ImageView;

    .line 1172
    .line 1173
    const v8, 0x7f090442

    .line 1174
    .line 1175
    .line 1176
    if-eq v4, v8, :cond_37

    .line 1177
    .line 1178
    const v8, 0x7f09050d

    .line 1179
    .line 1180
    .line 1181
    if-ne v4, v8, :cond_34

    .line 1182
    .line 1183
    goto :goto_1a

    .line 1184
    :cond_34
    const v8, 0x7f090312

    .line 1185
    .line 1186
    .line 1187
    if-ne v4, v8, :cond_35

    .line 1188
    .line 1189
    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v8

    .line 1193
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1194
    .line 1195
    .line 1196
    goto :goto_1b

    .line 1197
    :cond_35
    const v8, 0x7f090228

    .line 1198
    .line 1199
    .line 1200
    if-ne v4, v8, :cond_38

    .line 1201
    .line 1202
    const/4 v8, 0x0

    .line 1203
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1204
    .line 1205
    .line 1206
    const v8, 0x7f070084

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1210
    .line 1211
    .line 1212
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v8

    .line 1216
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v8

    .line 1223
    instance-of v8, v8, Landroid/view/View;

    .line 1224
    .line 1225
    if-eqz v8, :cond_36

    .line 1226
    .line 1227
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v8

    .line 1231
    check-cast v8, Landroid/view/View;

    .line 1232
    .line 1233
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v8

    .line 1237
    check-cast v8, Landroid/widget/TextView;

    .line 1238
    .line 1239
    if-eqz v8, :cond_36

    .line 1240
    .line 1241
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v8

    .line 1245
    invoke-virtual {v5, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1246
    .line 1247
    .line 1248
    :cond_36
    new-instance v8, Le0/o1;

    .line 1249
    .line 1250
    const/4 v11, 0x0

    .line 1251
    invoke-direct {v8, v11}, Le0/o1;-><init>(I)V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1255
    .line 1256
    .line 1257
    goto :goto_1b

    .line 1258
    :cond_37
    :goto_1a
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v8

    .line 1262
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1263
    .line 1264
    .line 1265
    :cond_38
    :goto_1b
    instance-of v5, v1, Landroid/widget/ProgressBar;

    .line 1266
    .line 1267
    if-eqz v5, :cond_3a

    .line 1268
    .line 1269
    const v5, 0x7f090575

    .line 1270
    .line 1271
    .line 1272
    if-eq v4, v5, :cond_39

    .line 1273
    .line 1274
    const v5, 0x7f09050c

    .line 1275
    .line 1276
    .line 1277
    if-ne v4, v5, :cond_3a

    .line 1278
    .line 1279
    :cond_39
    move-object v4, v1

    .line 1280
    check-cast v4, Landroid/widget/ProgressBar;

    .line 1281
    .line 1282
    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v5

    .line 1286
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-static {v0, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1290
    .line 1291
    .line 1292
    move-result v5

    .line 1293
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v5

    .line 1297
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1298
    .line 1299
    .line 1300
    instance-of v4, v1, Landroid/widget/SeekBar;

    .line 1301
    .line 1302
    if-eqz v4, :cond_3a

    .line 1303
    .line 1304
    move-object v4, v1

    .line 1305
    check-cast v4, Landroid/widget/SeekBar;

    .line 1306
    .line 1307
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v5

    .line 1311
    invoke-virtual {v4, v5}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1312
    .line 1313
    .line 1314
    :cond_3a
    :goto_1c
    instance-of v4, v1, Landroid/widget/EditText;

    .line 1315
    .line 1316
    if-eqz v4, :cond_3b

    .line 1317
    .line 1318
    move-object v4, v1

    .line 1319
    check-cast v4, Landroid/widget/EditText;

    .line 1320
    .line 1321
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1325
    .line 1326
    .line 1327
    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v5

    .line 1331
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1332
    .line 1333
    .line 1334
    goto :goto_1d

    .line 1335
    :cond_3b
    instance-of v4, v1, Landroid/widget/TextView;

    .line 1336
    .line 1337
    if-eqz v4, :cond_3c

    .line 1338
    .line 1339
    move-object v4, v1

    .line 1340
    check-cast v4, Landroid/widget/TextView;

    .line 1341
    .line 1342
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1343
    .line 1344
    .line 1345
    :cond_3c
    :goto_1d
    move-object v4, v1

    .line 1346
    :goto_1e
    const/high16 v5, 0x41800000    # 16.0f

    .line 1347
    .line 1348
    const/high16 v8, 0x41700000    # 15.0f

    .line 1349
    .line 1350
    if-eqz v4, :cond_41

    .line 1351
    .line 1352
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 1353
    .line 1354
    .line 1355
    move-result v11

    .line 1356
    const v13, 0x7f090311

    .line 1357
    .line 1358
    .line 1359
    if-ne v11, v13, :cond_3f

    .line 1360
    .line 1361
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 1362
    .line 1363
    .line 1364
    move-result v4

    .line 1365
    const v11, 0x7f09052c

    .line 1366
    .line 1367
    .line 1368
    if-ne v4, v11, :cond_3d

    .line 1369
    .line 1370
    move-object v4, v1

    .line 1371
    check-cast v4, Landroid/widget/TextView;

    .line 1372
    .line 1373
    const/4 v11, 0x2

    .line 1374
    invoke-virtual {v4, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1378
    .line 1379
    .line 1380
    goto :goto_1f

    .line 1381
    :cond_3d
    const/4 v11, 0x2

    .line 1382
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 1383
    .line 1384
    .line 1385
    move-result v4

    .line 1386
    const v13, 0x7f09004d

    .line 1387
    .line 1388
    .line 1389
    if-ne v4, v13, :cond_3e

    .line 1390
    .line 1391
    move-object v4, v1

    .line 1392
    check-cast v4, Landroid/widget/TextView;

    .line 1393
    .line 1394
    invoke-virtual {v4, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1398
    .line 1399
    .line 1400
    goto :goto_1f

    .line 1401
    :cond_3e
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 1402
    .line 1403
    .line 1404
    move-result v4

    .line 1405
    const v11, 0x7f09004e

    .line 1406
    .line 1407
    .line 1408
    if-ne v4, v11, :cond_41

    .line 1409
    .line 1410
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v4

    .line 1414
    check-cast v4, Landroid/view/View;

    .line 1415
    .line 1416
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v11

    .line 1420
    const/16 v13, 0xaa

    .line 1421
    .line 1422
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1423
    .line 1424
    .line 1425
    move-result v14

    .line 1426
    iput v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1427
    .line 1428
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1429
    .line 1430
    .line 1431
    move-result v13

    .line 1432
    iput v13, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1433
    .line 1434
    invoke-virtual {v4, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    .line 1436
    .line 1437
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1438
    .line 1439
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1440
    .line 1441
    const/4 v13, 0x0

    .line 1442
    const/4 v15, -0x1

    .line 1443
    invoke-direct {v4, v15, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1447
    .line 1448
    .line 1449
    goto :goto_1f

    .line 1450
    :cond_3f
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1451
    .line 1452
    const/4 v15, -0x1

    .line 1453
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v13

    .line 1457
    instance-of v13, v13, Landroid/view/View;

    .line 1458
    .line 1459
    if-nez v13, :cond_40

    .line 1460
    .line 1461
    goto :goto_1f

    .line 1462
    :cond_40
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v4

    .line 1466
    check-cast v4, Landroid/view/View;

    .line 1467
    .line 1468
    goto :goto_1e

    .line 1469
    :cond_41
    :goto_1f
    instance-of v4, v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 1470
    .line 1471
    const/16 v11, 0x10

    .line 1472
    .line 1473
    if-nez v4, :cond_42

    .line 1474
    .line 1475
    instance-of v4, v1, Landroid/widget/Switch;

    .line 1476
    .line 1477
    if-eqz v4, :cond_44

    .line 1478
    .line 1479
    :cond_42
    const/4 v13, 0x0

    .line 1480
    invoke-virtual {v1, v13}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1481
    .line 1482
    .line 1483
    move-object v4, v1

    .line 1484
    check-cast v4, Landroid/widget/TextView;

    .line 1485
    .line 1486
    const v13, 0x800013

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1490
    .line 1491
    .line 1492
    const/4 v13, 0x5

    .line 1493
    invoke-virtual {v4, v13}, Landroid/view/View;->setTextDirection(I)V

    .line 1494
    .line 1495
    .line 1496
    const/16 v14, 0xc

    .line 1497
    .line 1498
    invoke-virtual {v0, v14}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1499
    .line 1500
    .line 1501
    move-result v13

    .line 1502
    const/4 v15, 0x4

    .line 1503
    invoke-virtual {v0, v15}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1504
    .line 1505
    .line 1506
    move-result v10

    .line 1507
    invoke-virtual {v0, v14}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1508
    .line 1509
    .line 1510
    move-result v14

    .line 1511
    invoke-virtual {v0, v15}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1512
    .line 1513
    .line 1514
    move-result v15

    .line 1515
    invoke-virtual {v4, v13, v10, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1516
    .line 1517
    .line 1518
    instance-of v10, v4, Landroidx/appcompat/widget/SwitchCompat;

    .line 1519
    .line 1520
    if-eqz v10, :cond_43

    .line 1521
    .line 1522
    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    .line 1523
    .line 1524
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1525
    .line 1526
    .line 1527
    move-result v10

    .line 1528
    invoke-virtual {v4, v10}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchPadding(I)V

    .line 1529
    .line 1530
    .line 1531
    goto :goto_20

    .line 1532
    :cond_43
    check-cast v4, Landroid/widget/Switch;

    .line 1533
    .line 1534
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1535
    .line 1536
    .line 1537
    move-result v10

    .line 1538
    invoke-virtual {v4, v10}, Landroid/widget/Switch;->setSwitchPadding(I)V

    .line 1539
    .line 1540
    .line 1541
    :cond_44
    :goto_20
    instance-of v4, v1, Landroid/widget/RadioButton;

    .line 1542
    .line 1543
    const/16 v10, 0x11

    .line 1544
    .line 1545
    if-eqz v4, :cond_48

    .line 1546
    .line 1547
    move-object v4, v1

    .line 1548
    :goto_21
    if-eqz v4, :cond_48

    .line 1549
    .line 1550
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 1551
    .line 1552
    .line 1553
    move-result v13

    .line 1554
    if-ne v13, v6, :cond_46

    .line 1555
    .line 1556
    move-object v2, v1

    .line 1557
    check-cast v2, Landroid/widget/RadioButton;

    .line 1558
    .line 1559
    const/4 v8, 0x0

    .line 1560
    invoke-virtual {v2, v8}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1561
    .line 1562
    .line 1563
    const v3, 0x7f07019b

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1567
    .line 1568
    .line 1569
    const v3, 0x7f05037d

    .line 1570
    .line 1571
    .line 1572
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v3

    .line 1576
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1580
    .line 1581
    .line 1582
    const/16 v3, 0x36

    .line 1583
    .line 1584
    invoke-virtual {v0, v3}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1585
    .line 1586
    .line 1587
    move-result v3

    .line 1588
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1589
    .line 1590
    .line 1591
    const/16 v13, 0xa

    .line 1592
    .line 1593
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1594
    .line 1595
    .line 1596
    move-result v3

    .line 1597
    const/4 v14, 0x6

    .line 1598
    invoke-virtual {v0, v14}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1599
    .line 1600
    .line 1601
    move-result v4

    .line 1602
    invoke-virtual {v0, v13}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1603
    .line 1604
    .line 1605
    move-result v5

    .line 1606
    invoke-virtual {v0, v14}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1607
    .line 1608
    .line 1609
    move-result v6

    .line 1610
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1611
    .line 1612
    .line 1613
    const/high16 v3, 0x41600000    # 14.0f

    .line 1614
    .line 1615
    const/4 v8, 0x2

    .line 1616
    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1620
    .line 1621
    .line 1622
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v3

    .line 1626
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1627
    .line 1628
    if-eqz v4, :cond_45

    .line 1629
    .line 1630
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1631
    .line 1632
    const/4 v4, 0x3

    .line 1633
    invoke-virtual {v0, v4}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1634
    .line 1635
    .line 1636
    move-result v5

    .line 1637
    invoke-virtual {v0, v4}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1638
    .line 1639
    .line 1640
    move-result v6

    .line 1641
    invoke-virtual {v0, v4}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1642
    .line 1643
    .line 1644
    move-result v7

    .line 1645
    invoke-virtual {v0, v4}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1646
    .line 1647
    .line 1648
    move-result v4

    .line 1649
    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1653
    .line 1654
    .line 1655
    :cond_45
    :goto_22
    const/4 v13, 0x0

    .line 1656
    goto/16 :goto_26

    .line 1657
    .line 1658
    :cond_46
    const/16 v13, 0xa

    .line 1659
    .line 1660
    const/4 v14, 0x6

    .line 1661
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v15

    .line 1665
    instance-of v15, v15, Landroid/view/View;

    .line 1666
    .line 1667
    if-nez v15, :cond_47

    .line 1668
    .line 1669
    goto :goto_23

    .line 1670
    :cond_47
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v4

    .line 1674
    check-cast v4, Landroid/view/View;

    .line 1675
    .line 1676
    goto/16 :goto_21

    .line 1677
    .line 1678
    :cond_48
    :goto_23
    instance-of v4, v1, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 1679
    .line 1680
    if-eqz v4, :cond_49

    .line 1681
    .line 1682
    move-object v2, v1

    .line 1683
    check-cast v2, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 1684
    .line 1685
    const/4 v8, 0x2

    .line 1686
    invoke-virtual {v2, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1687
    .line 1688
    .line 1689
    const/16 v4, 0x36

    .line 1690
    .line 1691
    invoke-virtual {v0, v4}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1692
    .line 1693
    .line 1694
    move-result v4

    .line 1695
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1696
    .line 1697
    .line 1698
    const v4, 0x10100a0

    .line 1699
    .line 1700
    .line 1701
    filled-new-array {v4}, [I

    .line 1702
    .line 1703
    .line 1704
    move-result-object v4

    .line 1705
    const/4 v13, 0x0

    .line 1706
    new-array v5, v13, [I

    .line 1707
    .line 1708
    filled-new-array {v4, v5}, [[I

    .line 1709
    .line 1710
    .line 1711
    move-result-object v4

    .line 1712
    new-instance v5, Landroid/content/res/ColorStateList;

    .line 1713
    .line 1714
    filled-new-array {v12, v3}, [I

    .line 1715
    .line 1716
    .line 1717
    move-result-object v3

    .line 1718
    invoke-direct {v5, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {v2, v5}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1722
    .line 1723
    .line 1724
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 1725
    .line 1726
    invoke-static {v0, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1727
    .line 1728
    .line 1729
    move-result v5

    .line 1730
    filled-new-array {v7, v5}, [I

    .line 1731
    .line 1732
    .line 1733
    move-result-object v5

    .line 1734
    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {v2, v3}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 1738
    .line 1739
    .line 1740
    goto :goto_22

    .line 1741
    :cond_49
    instance-of v3, v1, Landroid/widget/Button;

    .line 1742
    .line 1743
    if-eqz v3, :cond_4e

    .line 1744
    .line 1745
    move-object v3, v1

    .line 1746
    check-cast v3, Landroid/widget/Button;

    .line 1747
    .line 1748
    const/4 v13, 0x0

    .line 1749
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1750
    .line 1751
    .line 1752
    move-object v4, v1

    .line 1753
    :goto_24
    const v5, 0x7f070186

    .line 1754
    .line 1755
    .line 1756
    if-eqz v4, :cond_4c

    .line 1757
    .line 1758
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 1759
    .line 1760
    .line 1761
    move-result v6

    .line 1762
    const v7, 0x7f0902ba

    .line 1763
    .line 1764
    .line 1765
    if-ne v6, v7, :cond_4b

    .line 1766
    .line 1767
    const/4 v6, 0x2

    .line 1768
    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v4

    .line 1775
    const/4 v6, 0x1

    .line 1776
    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1777
    .line 1778
    .line 1779
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1780
    .line 1781
    .line 1782
    const/16 v7, 0x34

    .line 1783
    .line 1784
    invoke-virtual {v0, v7}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1785
    .line 1786
    .line 1787
    move-result v2

    .line 1788
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1789
    .line 1790
    .line 1791
    const v13, 0x800013

    .line 1792
    .line 1793
    .line 1794
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1795
    .line 1796
    .line 1797
    const/16 v9, 0x12

    .line 1798
    .line 1799
    invoke-virtual {v0, v9}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1800
    .line 1801
    .line 1802
    move-result v2

    .line 1803
    invoke-virtual {v0, v9}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1804
    .line 1805
    .line 1806
    move-result v4

    .line 1807
    const/4 v13, 0x0

    .line 1808
    invoke-virtual {v3, v2, v13, v4, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1809
    .line 1810
    .line 1811
    const/16 v12, 0xe

    .line 1812
    .line 1813
    invoke-virtual {v0, v12}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1814
    .line 1815
    .line 1816
    move-result v2

    .line 1817
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1818
    .line 1819
    .line 1820
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1821
    .line 1822
    .line 1823
    const/4 v8, 0x0

    .line 1824
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1825
    .line 1826
    .line 1827
    const/16 v2, 0x1a

    .line 1828
    .line 1829
    invoke-virtual {v0, v2}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1830
    .line 1831
    .line 1832
    move-result v2

    .line 1833
    invoke-virtual {v0, v3, v2}, Lcom/example/navistart/ModernMainActivity;->U(Landroid/widget/Button;I)V

    .line 1834
    .line 1835
    .line 1836
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 1837
    .line 1838
    .line 1839
    move-result v2

    .line 1840
    const v4, 0x7f090033

    .line 1841
    .line 1842
    .line 1843
    if-eq v2, v4, :cond_4a

    .line 1844
    .line 1845
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 1846
    .line 1847
    .line 1848
    move-result v2

    .line 1849
    const v4, 0x7f090032

    .line 1850
    .line 1851
    .line 1852
    if-eq v2, v4, :cond_4a

    .line 1853
    .line 1854
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 1855
    .line 1856
    .line 1857
    move-result v2

    .line 1858
    const v4, 0x7f090035

    .line 1859
    .line 1860
    .line 1861
    if-ne v2, v4, :cond_45

    .line 1862
    .line 1863
    :cond_4a
    const/high16 v2, 0x41a00000    # 20.0f

    .line 1864
    .line 1865
    const/4 v8, 0x2

    .line 1866
    invoke-virtual {v3, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1867
    .line 1868
    .line 1869
    const/16 v2, 0x50

    .line 1870
    .line 1871
    invoke-virtual {v0, v2}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1872
    .line 1873
    .line 1874
    move-result v2

    .line 1875
    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1876
    .line 1877
    .line 1878
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v2

    .line 1882
    const/4 v14, -0x2

    .line 1883
    iput v14, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1884
    .line 1885
    const/16 v2, 0x16

    .line 1886
    .line 1887
    invoke-virtual {v0, v2}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1888
    .line 1889
    .line 1890
    move-result v4

    .line 1891
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1892
    .line 1893
    .line 1894
    move-result v5

    .line 1895
    invoke-virtual {v0, v2}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1896
    .line 1897
    .line 1898
    move-result v2

    .line 1899
    invoke-virtual {v0, v11}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1900
    .line 1901
    .line 1902
    move-result v6

    .line 1903
    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1904
    .line 1905
    .line 1906
    const/16 v15, 0x28

    .line 1907
    .line 1908
    invoke-virtual {v0, v15}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1909
    .line 1910
    .line 1911
    move-result v2

    .line 1912
    invoke-virtual {v0, v3, v2}, Lcom/example/navistart/ModernMainActivity;->U(Landroid/widget/Button;I)V

    .line 1913
    .line 1914
    .line 1915
    goto/16 :goto_22

    .line 1916
    .line 1917
    :cond_4b
    const/16 v7, 0x34

    .line 1918
    .line 1919
    const/16 v9, 0x12

    .line 1920
    .line 1921
    const/16 v12, 0xe

    .line 1922
    .line 1923
    const v13, 0x800013

    .line 1924
    .line 1925
    .line 1926
    const/4 v14, -0x2

    .line 1927
    const/16 v15, 0x28

    .line 1928
    .line 1929
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v6

    .line 1933
    instance-of v6, v6, Landroid/view/View;

    .line 1934
    .line 1935
    if-nez v6, :cond_4d

    .line 1936
    .line 1937
    :cond_4c
    const/4 v6, 0x2

    .line 1938
    goto :goto_25

    .line 1939
    :cond_4d
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v4

    .line 1943
    check-cast v4, Landroid/view/View;

    .line 1944
    .line 1945
    goto/16 :goto_24

    .line 1946
    .line 1947
    :goto_25
    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1948
    .line 1949
    .line 1950
    const/16 v4, 0x32

    .line 1951
    .line 1952
    invoke-virtual {v0, v4}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1953
    .line 1954
    .line 1955
    move-result v4

    .line 1956
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1957
    .line 1958
    .line 1959
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1960
    .line 1961
    .line 1962
    const/4 v13, 0x0

    .line 1963
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1967
    .line 1968
    .line 1969
    const/16 v2, 0x14

    .line 1970
    .line 1971
    invoke-virtual {v0, v2}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1972
    .line 1973
    .line 1974
    move-result v4

    .line 1975
    invoke-virtual {v0, v2}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 1976
    .line 1977
    .line 1978
    move-result v2

    .line 1979
    invoke-virtual {v3, v4, v13, v2, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1980
    .line 1981
    .line 1982
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1983
    .line 1984
    .line 1985
    const/4 v8, 0x0

    .line 1986
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1987
    .line 1988
    .line 1989
    goto :goto_26

    .line 1990
    :cond_4e
    const/4 v13, 0x0

    .line 1991
    instance-of v2, v1, Landroid/widget/Spinner;

    .line 1992
    .line 1993
    if-eqz v2, :cond_4f

    .line 1994
    .line 1995
    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v2

    .line 1999
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2000
    .line 2001
    .line 2002
    :cond_4f
    :goto_26
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 2003
    .line 2004
    if-eqz v2, :cond_50

    .line 2005
    .line 2006
    check-cast v1, Landroid/view/ViewGroup;

    .line 2007
    .line 2008
    move v10, v13

    .line 2009
    :goto_27
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2010
    .line 2011
    .line 2012
    move-result v2

    .line 2013
    if-ge v10, v2, :cond_50

    .line 2014
    .line 2015
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v2

    .line 2019
    invoke-virtual {v0, v2}, Lcom/example/navistart/ModernMainActivity;->T(Landroid/view/View;)V

    .line 2020
    .line 2021
    .line 2022
    add-int/lit8 v10, v10, 0x1

    .line 2023
    .line 2024
    goto :goto_27

    .line 2025
    :cond_50
    :goto_28
    return-void
.end method

.method public final U(Landroid/widget/Button;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f09026c

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const v0, 0x7f0701a0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v1, 0x7f090315

    .line 15
    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    const v0, 0x7f070116

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const v1, 0x7f090316

    .line 24
    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    const v0, 0x7f0701a1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const v1, 0x7f09030f

    .line 33
    .line 34
    .line 35
    if-ne v0, v1, :cond_3

    .line 36
    .line 37
    const v0, 0x7f07019e

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const v1, 0x7f090033

    .line 42
    .line 43
    .line 44
    if-ne v0, v1, :cond_4

    .line 45
    .line 46
    const v0, 0x7f0f000f

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const v1, 0x7f090032

    .line 51
    .line 52
    .line 53
    if-ne v0, v1, :cond_5

    .line 54
    .line 55
    const v0, 0x7f0f0009

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    const v1, 0x7f090035

    .line 60
    .line 61
    .line 62
    if-ne v0, v1, :cond_6

    .line 63
    .line 64
    const v0, 0x7f07011f

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    const v1, 0x7f090034

    .line 69
    .line 70
    .line 71
    if-ne v0, v1, :cond_8

    .line 72
    .line 73
    const v0, 0x7f07019f

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-nez v0, :cond_7

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_7
    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, v0, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    :cond_8
    :goto_1
    return-void
.end method

.method public final V(Lcom/example/navistart/mainview/YMovLay;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/example/navistart/mainview/YMovLay;->getYLayMovX()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move v0, v1

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/example/navistart/mainview/YMovLay;->getYLayMovY()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    :catch_1
    add-int/lit16 v2, v0, -0xc8

    .line 21
    .line 22
    const/16 v3, -0x1f4

    .line 23
    .line 24
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/16 v4, 0x9c4

    .line 29
    .line 30
    add-int/lit16 v0, v0, 0xc8

    .line 31
    .line 32
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/lit16 v4, v1, -0xc8

    .line 37
    .line 38
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/16 v4, 0x5dc

    .line 43
    .line 44
    add-int/lit16 v1, v1, 0xc8

    .line 45
    .line 46
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/example/navistart/mainview/YMovLay;->a(IIII)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Le0/r1;

    .line 54
    .line 55
    invoke-direct {v0, p0, p2, p3, p1}, Le0/r1;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/example/navistart/mainview/YMovLay;->setOnSliderValueChangeListener(Lt1/p;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final W(Lcom/example/navistart/mainview/YMovLay;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/example/navistart/mainview/YMovLay;->getYLayMovX()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/example/navistart/MainActivity;->s:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    add-int/lit8 v0, v1, -0x28

    .line 16
    .line 17
    const/16 v2, 0x50

    .line 18
    .line 19
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v2, 0x280

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x28

    .line 26
    .line 27
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/example/navistart/mainview/YMovLay;->a(IIII)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroidx/transition/a;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/transition/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/example/navistart/mainview/YMovLay;->setOnSliderValueChangeListener(Lt1/p;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final X(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final varargs Y([I)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return v1
.end method

.method public final Z(Lcom/google/android/flexbox/FlexboxLayout;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setJustifyContent(I)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x104

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x4

    .line 30
    invoke-virtual {p0, v3}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    mul-int/lit8 v4, v4, 0x2

    .line 35
    .line 36
    add-int/2addr v4, v2

    .line 37
    div-int v4, v0, v4

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    div-int/2addr v0, v4

    .line 45
    sub-int/2addr v0, v2

    .line 46
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    div-int/lit8 v4, v0, 0x2

    .line 51
    .line 52
    sub-int/2addr v0, v4

    .line 53
    move v5, v1

    .line 54
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-ge v5, v6, :cond_5

    .line 59
    .line 60
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    instance-of v7, v6, Lcom/example/navistart/mainview/HeatManSetView;

    .line 65
    .line 66
    if-nez v7, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Lo2/e;

    .line 74
    .line 75
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 76
    .line 77
    if-ne v8, v2, :cond_2

    .line 78
    .line 79
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 80
    .line 81
    if-ne v8, v4, :cond_2

    .line 82
    .line 83
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 84
    .line 85
    if-ne v8, v0, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iput v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    iput v8, v7, Lo2/e;->c:F

    .line 92
    .line 93
    iput v8, v7, Lo2/e;->d:F

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    invoke-virtual {p0, v3}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    move-object v7, v6

    .line 113
    check-cast v7, Landroid/view/ViewGroup;

    .line 114
    .line 115
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-lez v8, :cond_3

    .line 120
    .line 121
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    const/4 v9, -0x1

    .line 130
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    .line 132
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    const v7, 0x7f09016c

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    if-eqz v6, :cond_4

    .line 143
    .line 144
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    const/16 v8, 0xdc

    .line 149
    .line 150
    invoke-virtual {p0, v8}, Lcom/example/navistart/ModernMainActivity;->X(I)I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    .line 156
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_5
    :goto_2
    return-void
.end method

.method public final a0(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Le0/m;->x(Landroid/content/Context;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 29
    .line 30
    iput p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 31
    .line 32
    :cond_0
    invoke-super {p0, v0}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Le0/m;->x(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b0(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, -0x2

    .line 29
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final c0()V
    .locals 13

    .line 1
    const v0, 0x7f090042

    .line 2
    .line 3
    .line 4
    const v1, 0x7f0902b1

    .line 5
    .line 6
    .line 7
    const v2, 0x7f0902b2

    .line 8
    .line 9
    .line 10
    filled-new-array {v2, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/example/navistart/ModernMainActivity;->Y([I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const v1, 0x7f0902b4

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0902b3

    .line 22
    .line 23
    .line 24
    filled-new-array {v1, v2}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Lcom/example/navistart/ModernMainActivity;->Y([I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const v2, 0x7f09031e

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/16 v3, 0x8

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    move v5, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v5, v3

    .line 47
    :goto_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    const v2, 0x7f09031c

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    move v5, v4

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v5, v3

    .line 62
    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    const v2, 0x7f0902ba

    .line 66
    .line 67
    .line 68
    filled-new-array {v2}, [I

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p0, v2}, Lcom/example/navistart/ModernMainActivity;->Y([I)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const v5, 0x7f0902b7

    .line 77
    .line 78
    .line 79
    filled-new-array {v5}, [I

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {p0, v5}, Lcom/example/navistart/ModernMainActivity;->Y([I)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const v6, 0x7f0902b6

    .line 88
    .line 89
    .line 90
    filled-new-array {v6}, [I

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {p0, v6}, Lcom/example/navistart/ModernMainActivity;->Y([I)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    const v7, 0x7f090039

    .line 99
    .line 100
    .line 101
    const v8, 0x7f0902b9

    .line 102
    .line 103
    .line 104
    const v9, 0x7f09031b

    .line 105
    .line 106
    .line 107
    const v10, 0x7f090044

    .line 108
    .line 109
    .line 110
    const v11, 0x7f090319

    .line 111
    .line 112
    .line 113
    filled-new-array {v9, v10, v11, v7, v8}, [I

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {p0, v7}, Lcom/example/navistart/ModernMainActivity;->Y([I)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    iget-boolean v8, p0, Lcom/example/navistart/ModernMainActivity;->z1:Z

    .line 122
    .line 123
    const/4 v9, 0x1

    .line 124
    if-nez v8, :cond_2

    .line 125
    .line 126
    const v8, 0x7f09018d

    .line 127
    .line 128
    .line 129
    const v10, 0x7f090313

    .line 130
    .line 131
    .line 132
    const v11, 0x7f0902b8

    .line 133
    .line 134
    .line 135
    const v12, 0x7f0902b5

    .line 136
    .line 137
    .line 138
    filled-new-array {v11, v12, v8, v10}, [I

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {p0, v8}, Lcom/example/navistart/ModernMainActivity;->Y([I)Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_2

    .line 147
    .line 148
    move v8, v9

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    move v8, v4

    .line 151
    :goto_2
    const/4 v10, 0x5

    .line 152
    new-array v11, v10, [Z

    .line 153
    .line 154
    aput-boolean v2, v11, v4

    .line 155
    .line 156
    aput-boolean v5, v11, v9

    .line 157
    .line 158
    const/4 v2, 0x2

    .line 159
    aput-boolean v6, v11, v2

    .line 160
    .line 161
    const/4 v5, 0x3

    .line 162
    aput-boolean v7, v11, v5

    .line 163
    .line 164
    const/4 v5, 0x4

    .line 165
    aput-boolean v8, v11, v5

    .line 166
    .line 167
    move v5, v4

    .line 168
    :goto_3
    iget-object v6, p0, Lcom/example/navistart/ModernMainActivity;->s1:[I

    .line 169
    .line 170
    array-length v7, v6

    .line 171
    if-ge v5, v7, :cond_4

    .line 172
    .line 173
    aget v6, v6, v5

    .line 174
    .line 175
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    aget-boolean v7, v11, v5

    .line 180
    .line 181
    if-eqz v7, :cond_3

    .line 182
    .line 183
    move v7, v4

    .line 184
    goto :goto_4

    .line 185
    :cond_3
    move v7, v3

    .line 186
    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    add-int/lit8 v5, v5, 0x1

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_4
    iget v3, p0, Lcom/example/navistart/ModernMainActivity;->v1:I

    .line 193
    .line 194
    if-ne v3, v9, :cond_5

    .line 195
    .line 196
    if-eqz v0, :cond_6

    .line 197
    .line 198
    :cond_5
    if-ne v3, v2, :cond_7

    .line 199
    .line 200
    if-nez v1, :cond_7

    .line 201
    .line 202
    :cond_6
    iput v4, p0, Lcom/example/navistart/ModernMainActivity;->v1:I

    .line 203
    .line 204
    invoke-virtual {p0, v4}, Lcom/example/navistart/ModernMainActivity;->d0(I)V

    .line 205
    .line 206
    .line 207
    :cond_7
    iget v0, p0, Lcom/example/navistart/ModernMainActivity;->w1:I

    .line 208
    .line 209
    aget-boolean v0, v11, v0

    .line 210
    .line 211
    if-nez v0, :cond_a

    .line 212
    .line 213
    :goto_5
    if-ge v4, v10, :cond_9

    .line 214
    .line 215
    aget-boolean v0, v11, v4

    .line 216
    .line 217
    if-eqz v0, :cond_8

    .line 218
    .line 219
    iput v4, p0, Lcom/example/navistart/ModernMainActivity;->w1:I

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_9
    :goto_6
    iget v0, p0, Lcom/example/navistart/ModernMainActivity;->v1:I

    .line 226
    .line 227
    iget-object v1, p0, Lcom/example/navistart/ModernMainActivity;->o1:[I

    .line 228
    .line 229
    array-length v1, v1

    .line 230
    sub-int/2addr v1, v9

    .line 231
    if-ne v0, v1, :cond_a

    .line 232
    .line 233
    iget v0, p0, Lcom/example/navistart/ModernMainActivity;->w1:I

    .line 234
    .line 235
    invoke-virtual {p0, v0}, Lcom/example/navistart/ModernMainActivity;->e0(I)V

    .line 236
    .line 237
    .line 238
    :cond_a
    return-void
.end method

.method public final d0(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/example/navistart/ModernMainActivity;->o1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-lt p1, v2, :cond_1

    .line 8
    .line 9
    :cond_0
    move p1, v1

    .line 10
    :cond_1
    iput p1, p0, Lcom/example/navistart/ModernMainActivity;->v1:I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v1

    .line 14
    :goto_0
    array-length v4, v0

    .line 15
    const v5, 0x7f050382

    .line 16
    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    if-ge v3, v4, :cond_6

    .line 20
    .line 21
    aget v4, v0, v3

    .line 22
    .line 23
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-ne v3, p1, :cond_2

    .line 28
    .line 29
    move v7, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/16 v7, 0x8

    .line 32
    .line 33
    :goto_1
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    if-ne v3, p1, :cond_3

    .line 37
    .line 38
    move-object v2, v4

    .line 39
    :cond_3
    iget-object v4, p0, Lcom/example/navistart/ModernMainActivity;->n1:[I

    .line 40
    .line 41
    aget v7, v4, v3

    .line 42
    .line 43
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-ne v3, p1, :cond_4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    move v6, v1

    .line 51
    :goto_2
    invoke-virtual {v7, v6}, Landroid/view/View;->setSelected(Z)V

    .line 52
    .line 53
    .line 54
    aget v4, v4, v3

    .line 55
    .line 56
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroid/widget/TextView;

    .line 61
    .line 62
    if-ne v3, p1, :cond_5

    .line 63
    .line 64
    const v5, 0x7f05037b

    .line 65
    .line 66
    .line 67
    :cond_5
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_6
    const v3, 0x7f090327

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Landroid/widget/TextView;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/example/navistart/ModernMainActivity;->r1:[I

    .line 91
    .line 92
    aget v4, v4, p1

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .line 96
    .line 97
    if-eqz v2, :cond_7

    .line 98
    .line 99
    invoke-virtual {p0, v2}, Lcom/example/navistart/ModernMainActivity;->T(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Le0/l1;

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-direct {v3, p0, v2, v4}, Le0/l1;-><init>(Lcom/example/navistart/ModernMainActivity;Landroid/view/View;I)V

    .line 106
    .line 107
    .line 108
    const-wide/16 v7, 0x96

    .line 109
    .line 110
    invoke-virtual {v2, v3, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    .line 112
    .line 113
    :cond_7
    array-length v0, v0

    .line 114
    sub-int/2addr v0, v6

    .line 115
    if-eq p1, v0, :cond_8

    .line 116
    .line 117
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iget-object v0, p0, Lcom/example/navistart/ModernMainActivity;->s1:[I

    .line 122
    .line 123
    array-length v2, v0

    .line 124
    move v3, v1

    .line 125
    :goto_3
    if-ge v3, v2, :cond_8

    .line 126
    .line 127
    aget v4, v0, v3

    .line 128
    .line 129
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_8
    return-void
.end method

.method public final e0(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/example/navistart/ModernMainActivity;->t1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-lt p1, v2, :cond_1

    .line 8
    .line 9
    :cond_0
    move p1, v1

    .line 10
    :cond_1
    iget-boolean v2, p0, Lcom/example/navistart/ModernMainActivity;->z1:Z

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    sub-int/2addr v2, v3

    .line 17
    if-ne p1, v2, :cond_2

    .line 18
    .line 19
    move p1, v1

    .line 20
    :cond_2
    iput p1, p0, Lcom/example/navistart/ModernMainActivity;->w1:I

    .line 21
    .line 22
    const v2, 0x7f090327

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/example/navistart/ModernMainActivity;->u1:[I

    .line 32
    .line 33
    aget v4, v4, p1

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 36
    .line 37
    .line 38
    const v2, 0x7f05037b

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const v4, 0x7f050382

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    move v5, v1

    .line 53
    :goto_0
    array-length v6, v0

    .line 54
    if-ge v5, v6, :cond_8

    .line 55
    .line 56
    aget v6, v0, v5

    .line 57
    .line 58
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-ne v5, p1, :cond_3

    .line 63
    .line 64
    move v7, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v7, v1

    .line 67
    :goto_1
    if-eqz v7, :cond_4

    .line 68
    .line 69
    move v8, v1

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/16 v8, 0x8

    .line 72
    .line 73
    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v8, p0, Lcom/example/navistart/ModernMainActivity;->s1:[I

    .line 77
    .line 78
    aget v8, v8, v5

    .line 79
    .line 80
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 87
    .line 88
    .line 89
    if-eqz v7, :cond_5

    .line 90
    .line 91
    move v9, v2

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    move v9, v4

    .line 94
    :goto_3
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    if-eqz v7, :cond_6

    .line 98
    .line 99
    move v9, v2

    .line 100
    goto :goto_4

    .line 101
    :cond_6
    move v9, v4

    .line 102
    :goto_4
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 107
    .line 108
    .line 109
    if-eqz v7, :cond_7

    .line 110
    .line 111
    invoke-virtual {p0, v6}, Lcom/example/navistart/ModernMainActivity;->T(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_8
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0902b0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Le0/l1;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, p0, p1, v1}, Le0/l1;-><init>(Lcom/example/navistart/ModernMainActivity;Landroid/view/View;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/example/navistart/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    move v1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget-object v1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    iput v1, p0, Lcom/example/navistart/ModernMainActivity;->v1:I

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    move p1, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    sget-object v1, Lcom/example/navistart/ModernMainActivity;->C1:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :goto_1
    iput p1, p0, Lcom/example/navistart/ModernMainActivity;->w1:I

    .line 35
    .line 36
    move p1, v0

    .line 37
    :goto_2
    iget-object v1, p0, Lcom/example/navistart/ModernMainActivity;->n1:[I

    .line 38
    .line 39
    array-length v2, v1

    .line 40
    const/4 v3, 0x2

    .line 41
    if-ge p1, v2, :cond_3

    .line 42
    .line 43
    aget v1, v1, p1

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Le0/m1;

    .line 50
    .line 51
    invoke-direct {v2, p0, p1, v3}, Le0/m1;-><init>(Lcom/example/navistart/ModernMainActivity;II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const p1, 0x7f090306

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v1, Le0/n1;

    .line 68
    .line 69
    invoke-direct {v1, p0, v0}, Le0/n1;-><init>(Lcom/example/navistart/ModernMainActivity;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    move p1, v0

    .line 76
    :goto_3
    iget-object v1, p0, Lcom/example/navistart/ModernMainActivity;->p1:[I

    .line 77
    .line 78
    array-length v2, v1

    .line 79
    const/4 v4, 0x1

    .line 80
    if-ge p1, v2, :cond_4

    .line 81
    .line 82
    iget-object v2, p0, Lcom/example/navistart/ModernMainActivity;->q1:[I

    .line 83
    .line 84
    aget v2, v2, p1

    .line 85
    .line 86
    aget v1, v1, p1

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v5, Le0/m1;

    .line 93
    .line 94
    invoke-direct {v5, p0, v2, v4}, Le0/m1;-><init>(Lcom/example/navistart/ModernMainActivity;II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 p1, p1, 0x1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    move p1, v0

    .line 104
    :goto_4
    iget-object v1, p0, Lcom/example/navistart/ModernMainActivity;->s1:[I

    .line 105
    .line 106
    array-length v2, v1

    .line 107
    if-ge p1, v2, :cond_5

    .line 108
    .line 109
    aget v1, v1, p1

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    new-instance v2, Le0/m1;

    .line 116
    .line 117
    invoke-direct {v2, p0, p1, v0}, Le0/m1;-><init>(Lcom/example/navistart/ModernMainActivity;II)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 p1, p1, 0x1

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    iget-object p1, p0, Lcom/example/navistart/MainActivity;->R0:Lcom/example/navistart/mainview/YMovLay;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/example/navistart/MainActivity;->g:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/example/navistart/MainActivity;->h:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p0, p1, v1, v2}, Lcom/example/navistart/ModernMainActivity;->V(Lcom/example/navistart/mainview/YMovLay;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/example/navistart/MainActivity;->S0:Lcom/example/navistart/mainview/YMovLay;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/example/navistart/MainActivity;->k:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/example/navistart/MainActivity;->l:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p0, p1, v1, v2}, Lcom/example/navistart/ModernMainActivity;->V(Lcom/example/navistart/mainview/YMovLay;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/example/navistart/MainActivity;->T0:Lcom/example/navistart/mainview/YMovLay;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/example/navistart/MainActivity;->o:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/example/navistart/MainActivity;->p:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p0, p1, v1, v2}, Lcom/example/navistart/ModernMainActivity;->V(Lcom/example/navistart/mainview/YMovLay;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/example/navistart/MainActivity;->U0:Lcom/example/navistart/mainview/YMovLay;

    .line 154
    .line 155
    const/16 v1, 0x10

    .line 156
    .line 157
    new-array v1, v1, [B

    .line 158
    .line 159
    fill-array-data v1, :array_0

    .line 160
    .line 161
    .line 162
    const/16 v2, 0x8

    .line 163
    .line 164
    new-array v5, v2, [B

    .line 165
    .line 166
    fill-array-data v5, :array_1

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {p0, p1, v1}, Lcom/example/navistart/ModernMainActivity;->W(Lcom/example/navistart/mainview/YMovLay;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/example/navistart/MainActivity;->V0:Lcom/example/navistart/mainview/YMovLay;

    .line 177
    .line 178
    const/16 v1, 0x13

    .line 179
    .line 180
    new-array v1, v1, [B

    .line 181
    .line 182
    fill-array-data v1, :array_2

    .line 183
    .line 184
    .line 185
    new-array v5, v2, [B

    .line 186
    .line 187
    fill-array-data v5, :array_3

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p0, p1, v1}, Lcom/example/navistart/ModernMainActivity;->W(Lcom/example/navistart/mainview/YMovLay;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const p1, 0x7f090315

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    new-instance v1, Le0/n1;

    .line 205
    .line 206
    invoke-direct {v1, p0, v3}, Le0/n1;-><init>(Lcom/example/navistart/ModernMainActivity;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    const p1, 0x7f090316

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    new-instance v1, Le0/n1;

    .line 220
    .line 221
    const/4 v5, 0x3

    .line 222
    invoke-direct {v1, p0, v5}, Le0/n1;-><init>(Lcom/example/navistart/ModernMainActivity;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    const p1, 0x7f09030f

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    new-instance v1, Le0/n1;

    .line 236
    .line 237
    const/4 v5, 0x4

    .line 238
    invoke-direct {v1, p0, v5}, Le0/n1;-><init>(Lcom/example/navistart/ModernMainActivity;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    .line 243
    .line 244
    const p1, 0x7f09026c

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    new-instance v1, Le0/n1;

    .line 252
    .line 253
    const/4 v5, 0x5

    .line 254
    invoke-direct {v1, p0, v5}, Le0/n1;-><init>(Lcom/example/navistart/ModernMainActivity;I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    const p1, 0x7f0904dc

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    if-eqz p1, :cond_6

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    instance-of v1, v1, Landroid/view/View;

    .line 274
    .line 275
    if-eqz v1, :cond_6

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    check-cast p1, Landroid/view/View;

    .line 282
    .line 283
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    :cond_6
    const p1, 0x7f090314

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    if-nez v1, :cond_7

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    const/16 v5, 0x19

    .line 301
    .line 302
    new-array v6, v5, [B

    .line 303
    .line 304
    fill-array-data v6, :array_4

    .line 305
    .line 306
    .line 307
    new-array v7, v2, [B

    .line 308
    .line 309
    fill-array-data v7, :array_5

    .line 310
    .line 311
    .line 312
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-virtual {v1, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    if-nez v1, :cond_8

    .line 321
    .line 322
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    new-instance v6, Lo0/a;

    .line 331
    .line 332
    invoke-direct {v6}, Lo0/a;-><init>()V

    .line 333
    .line 334
    .line 335
    new-array v5, v5, [B

    .line 336
    .line 337
    fill-array-data v5, :array_6

    .line 338
    .line 339
    .line 340
    new-array v7, v2, [B

    .line 341
    .line 342
    fill-array-data v7, :array_7

    .line 343
    .line 344
    .line 345
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v1, p1, v6, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 354
    .line 355
    .line 356
    :cond_8
    :goto_5
    const p1, 0x7f0904c0

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    check-cast p1, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 364
    .line 365
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    const/16 v5, 0x15

    .line 370
    .line 371
    new-array v5, v5, [B

    .line 372
    .line 373
    fill-array-data v5, :array_8

    .line 374
    .line 375
    .line 376
    new-array v6, v2, [B

    .line 377
    .line 378
    fill-array-data v6, :array_9

    .line 379
    .line 380
    .line 381
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-virtual {v1, v5, v0}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 390
    .line 391
    .line 392
    new-instance v1, Le0/s0;

    .line 393
    .line 394
    invoke-direct {v1, v3, p0}, Le0/s0;-><init>(ILjava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 398
    .line 399
    .line 400
    const p1, 0x7f0904c1

    .line 401
    .line 402
    .line 403
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    new-instance v1, Le0/n1;

    .line 408
    .line 409
    invoke-direct {v1, p0, v4}, Le0/n1;-><init>(Lcom/example/navistart/ModernMainActivity;I)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    .line 414
    .line 415
    const p1, 0x7f090311

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0, p1}, Lcom/example/navistart/ModernMainActivity;->b0(I)V

    .line 419
    .line 420
    .line 421
    const p1, 0x7f090310

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, p1}, Lcom/example/navistart/ModernMainActivity;->b0(I)V

    .line 425
    .line 426
    .line 427
    const p1, 0x7f09033b

    .line 428
    .line 429
    .line 430
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    check-cast p1, Landroid/widget/TextView;

    .line 435
    .line 436
    const/4 v1, 0x5

    .line 437
    new-array v1, v1, [B

    .line 438
    .line 439
    fill-array-data v1, :array_a

    .line 440
    .line 441
    .line 442
    new-array v2, v2, [B

    .line 443
    .line 444
    fill-array-data v2, :array_b

    .line 445
    .line 446
    .line 447
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    const p1, 0x7f0902b0

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {p0, v1}, Lcom/example/navistart/ModernMainActivity;->T(Landroid/view/View;)V

    .line 462
    .line 463
    .line 464
    iput-boolean v4, p0, Lcom/example/navistart/ModernMainActivity;->y1:Z

    .line 465
    .line 466
    invoke-virtual {p0}, Lcom/example/navistart/ModernMainActivity;->c0()V

    .line 467
    .line 468
    .line 469
    iget v1, p0, Lcom/example/navistart/ModernMainActivity;->v1:I

    .line 470
    .line 471
    invoke-virtual {p0, v1}, Lcom/example/navistart/ModernMainActivity;->d0(I)V

    .line 472
    .line 473
    .line 474
    iget v1, p0, Lcom/example/navistart/ModernMainActivity;->v1:I

    .line 475
    .line 476
    iget-object v2, p0, Lcom/example/navistart/ModernMainActivity;->o1:[I

    .line 477
    .line 478
    array-length v2, v2

    .line 479
    sub-int/2addr v2, v4

    .line 480
    if-ne v1, v2, :cond_9

    .line 481
    .line 482
    iget v1, p0, Lcom/example/navistart/ModernMainActivity;->w1:I

    .line 483
    .line 484
    invoke-virtual {p0, v1}, Lcom/example/navistart/ModernMainActivity;->e0(I)V

    .line 485
    .line 486
    .line 487
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    new-instance v1, Le0/q1;

    .line 492
    .line 493
    invoke-direct {v1, v0, p0}, Le0/q1;-><init>(ILjava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 497
    .line 498
    .line 499
    new-instance v0, Le0/l1;

    .line 500
    .line 501
    invoke-direct {v0, p0, p1, v4}, Le0/l1;-><init>(Lcom/example/navistart/ModernMainActivity;Landroid/view/View;I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    nop

    .line 509
    :array_0
    .array-data 1
        0x2bt
        0x7et
        0x2et
        0x0t
        0x3at
        -0x27t
        0x38t
        -0x21t
        0x10t
        0x76t
        0x2at
        0x26t
        0x24t
        -0x2t
        0x1ct
        -0x1t
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :array_1
    .array-data 1
        0x66t
        0x1ft
        0x5et
        0x5ft
        0x7bt
        -0x46t
        0x4ct
        -0x4at
    .end array-data

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    :array_2
    .array-data 1
        -0x5ft
        -0x60t
        0x2ct
        0x7et
        0x23t
        -0x1at
        -0x57t
        0x5dt
        -0x66t
        -0x58t
        0x28t
        0x58t
        0x3dt
        -0x3ft
        -0x73t
        0x7dt
        -0x4dt
        -0x7at
        0x9t
    .end array-data

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_3
    .array-data 1
        -0x14t
        -0x3ft
        0x5ct
        0x21t
        0x62t
        -0x7bt
        -0x23t
        0x34t
    .end array-data

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_4
    .array-data 1
        0x3bt
        0x1ct
        -0x58t
        0x66t
        0x5ft
        0x72t
        -0x48t
        0x18t
        0x32t
        0x14t
        -0x57t
        0x5ct
        0x4at
        0x79t
        -0x6ct
        0x9t
        0x23t
        0x1t
        -0x57t
        0x5ct
        0x57t
        0x73t
        -0x77t
        0x18t
        0x25t
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    nop

    .line 569
    :array_5
    .array-data 1
        0x56t
        0x73t
        -0x34t
        0x3t
        0x2dt
        0x1ct
        -0x19t
        0x7dt
    .end array-data

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :array_6
    .array-data 1
        0x61t
        0x15t
        0x3t
        -0x56t
        -0x2dt
        0x77t
        -0x41t
        0x79t
        0x68t
        0x1dt
        0x2t
        -0x70t
        -0x3at
        0x7ct
        -0x6dt
        0x68t
        0x79t
        0x8t
        0x2t
        -0x70t
        -0x25t
        0x76t
        -0x72t
        0x79t
        0x7ft
    .end array-data

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    nop

    .line 595
    :array_7
    .array-data 1
        0xct
        0x7at
        0x67t
        -0x31t
        -0x5ft
        0x19t
        -0x20t
        0x1ct
    .end array-data

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :array_8
    .array-data 1
        0x11t
        -0x1et
        -0x5ft
        0x65t
        0x7at
        0x4at
        -0x77t
        0x45t
        0x6t
        -0x10t
        -0x4ct
        0x74t
        0x7bt
        0x4at
        -0x65t
        0x42t
        0x3t
        -0xbt
        -0x43t
        0x65t
        0x6ct
    .end array-data

    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    nop

    .line 619
    :array_9
    .array-data 1
        0x62t
        -0x69t
        -0x2ft
        0x0t
        0x8t
        0x15t
        -0x2t
        0x2ct
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :array_a
    .array-data 1
        0x5bt
        0xat
        0x4t
        -0x3et
        -0x76t
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    nop

    .line 635
    :array_b
    .array-data 1
        0x69t
        0x24t
        0x34t
        -0x14t
        -0x42t
        -0x59t
        -0x16t
        -0x46t
    .end array-data
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/example/navistart/MainActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/ModernMainActivity;->A1:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Le0/g0;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/example/navistart/ModernMainActivity;->v1:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/example/navistart/ModernMainActivity;->C1:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Lcom/example/navistart/ModernMainActivity;->w1:I

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final z()I
    .locals 3

    .line 1
    invoke-static {p0}, Le0/m;->x(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/res/Configuration;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 27
    .line 28
    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 29
    .line 30
    invoke-static {}, Le0/g0;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/example/navistart/ModernMainActivity;->A1:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v0, Ljava/util/Locale;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/example/navistart/ModernMainActivity;->A1:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 62
    .line 63
    .line 64
    const v0, 0x7f0c0024

    .line 65
    .line 66
    .line 67
    return v0
.end method
