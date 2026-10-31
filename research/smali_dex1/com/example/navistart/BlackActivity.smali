.class public Lcom/example/navistart/BlackActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lf0/c;


# static fields
.field public static final synthetic g:I


# instance fields
.field public final b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Float;

.field public d:Landroid/view/View;

.field public e:Landroid/appwidget/AppWidgetHost;

.field public f:Lb1/h;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/example/navistart/BlackActivity;->b:Ljava/lang/Boolean;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/example/navistart/BlackActivity;->c:Ljava/lang/Float;

    .line 10
    .line 11
    return-void
.end method

.method public static s()Ljava/lang/Boolean;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Le0/m;->j:[B

    .line 11
    .line 12
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_7c

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Le0/m;->f:[B

    .line 40
    .line 41
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_79

    .line 46
    .line 47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide v3, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    new-instance v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Le0/m;->g:[B

    .line 80
    .line 81
    invoke-static {v2, v5, v6}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v5, 0x1

    .line 86
    new-array v6, v5, [B

    .line 87
    .line 88
    const/16 v7, 0x2d

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    aput-byte v7, v6, v8

    .line 92
    .line 93
    const/16 v7, 0x8

    .line 94
    .line 95
    new-array v7, v7, [B

    .line 96
    .line 97
    fill-array-data v7, :array_86

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v7, v4, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    cmp-long v0, v0, v2

    .line 112
    .line 113
    if-gez v0, :cond_73

    .line 114
    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move v5, v8

    .line 117
    :goto_74
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :cond_79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    return-object v0

    .line 125
    :array_7c
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_86
    .array-data 1
        0x1dt
        0x76t
        -0x2et
        0x2ct
        0x63t
        0x3ct
        0x1dt
        0x51t
    .end array-data
.end method

.method public static t(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x400

    .line 10
    .line 11
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x106000d

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, -0x3

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/16 v0, 0x1706

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final c()V
    .registers 5

    .line 1
    const-class v0, Lm0/a0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ll0/a;->t(Ljava/lang/Class;Landroid/os/Bundle;)Ll0/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x9

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_22

    .line 17
    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    new-array v3, v3, [B

    .line 22
    .line 23
    fill-array-data v3, :array_2c

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_22
    .array-data 1
        0xdt
        0x75t
        0x20t
        -0x5et
        -0x75t
        0x13t
        -0x2t
        -0x23t
        0x7t
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    nop

    .line 45
    :array_2c
    .array-data 1
        0x60t
        0xct
        0x7ft
        -0x3at
        -0x1et
        0x72t
        -0x6et
        -0x4et
    .end array-data
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    const v0, 0x7f1402e3

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/example/navistart/BlackActivity;->c:Ljava/lang/Float;

    .line 11
    .line 12
    if-nez p1, :cond_1d

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/example/navistart/BlackActivity;->c:Ljava/lang/Float;

    .line 29
    .line 30
    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const v0, 0x3c23d70a    # 0.01f

    .line 39
    .line 40
    .line 41
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lcom/example/navistart/boot;->b(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 v0, 0x0

    .line 55
    if-eqz p1, :cond_42

    .line 56
    .line 57
    iget-object p1, p0, Lcom/example/navistart/BlackActivity;->b:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_41

    .line 64
    .line 65
    goto :goto_42

    .line 66
    :cond_41
    throw v0

    .line 67
    :cond_42
    :goto_42
    invoke-static {p0}, Lcom/example/navistart/BlackActivity;->t(Landroid/app/Activity;)V

    .line 68
    .line 69
    .line 70
    const p1, 0x7f0c0031

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Landroid/appwidget/AppWidgetHost;

    .line 77
    .line 78
    const/16 v1, 0x400

    .line 79
    .line 80
    invoke-direct {p1, p0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lcom/example/navistart/BlackActivity;->e:Landroid/appwidget/AppWidgetHost;

    .line 84
    .line 85
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 86
    .line 87
    .line 88
    const p1, 0x7f0901bb

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/example/navistart/BlackActivity;->d:Landroid/view/View;

    .line 96
    .line 97
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const/16 v1, 0x19

    .line 102
    .line 103
    new-array v1, v1, [B

    .line 104
    .line 105
    fill-array-data v1, :array_12e

    .line 106
    .line 107
    .line 108
    const/16 v2, 0x8

    .line 109
    .line 110
    new-array v3, v2, [B

    .line 111
    .line 112
    fill-array-data v3, :array_140

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/16 v3, 0x64

    .line 120
    .line 121
    invoke-virtual {p1, v1, v3}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    int-to-float p1, p1

    .line 126
    const/high16 v1, 0x42c80000    # 100.0f

    .line 127
    .line 128
    div-float/2addr p1, v1

    .line 129
    iget-object v1, p0, Lcom/example/navistart/BlackActivity;->d:Landroid/view/View;

    .line 130
    .line 131
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const/16 v1, 0x15

    .line 139
    .line 140
    new-array v1, v1, [B

    .line 141
    .line 142
    fill-array-data v1, :array_148

    .line 143
    .line 144
    .line 145
    new-array v2, v2, [B

    .line 146
    .line 147
    fill-array-data v2, :array_158

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p1, v1, v0}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    sget-object v0, Lf0/b;->e:Lf0/b;

    .line 159
    .line 160
    if-eqz p1, :cond_a5

    .line 161
    .line 162
    :try_start_a1
    invoke-static {p1}, Lf0/b;->valueOf(Ljava/lang/String;)Lf0/b;

    .line 163
    .line 164
    .line 165
    move-result-object v0
    :try_end_a5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a1 .. :try_end_a5} :catch_a5

    .line 166
    :catch_a5
    :cond_a5
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iget-object p1, p1, Lv1/c;->a:Landroidx/lifecycle/MutableLiveData;

    .line 175
    .line 176
    new-instance v1, Le0/l;

    .line 177
    .line 178
    const/4 v2, 0x0

    .line 179
    invoke-direct {v1, p0, v2}, Le0/l;-><init>(Lcom/example/navistart/BlackActivity;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object p1, p1, Lv1/c;->b:Landroidx/lifecycle/MutableLiveData;

    .line 194
    .line 195
    new-instance v1, Le0/l;

    .line 196
    .line 197
    const/4 v2, 0x1

    .line 198
    invoke-direct {v1, p0, v2}, Le0/l;-><init>(Lcom/example/navistart/BlackActivity;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object p1, p1, Lv1/c;->c:Landroidx/lifecycle/MutableLiveData;

    .line 213
    .line 214
    new-instance v1, Le0/l;

    .line 215
    .line 216
    const/4 v2, 0x2

    .line 217
    invoke-direct {v1, p0, v2}, Le0/l;-><init>(Lcom/example/navistart/BlackActivity;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 221
    .line 222
    .line 223
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iget-object p1, p1, Lv1/c;->d:Landroidx/lifecycle/MutableLiveData;

    .line 232
    .line 233
    new-instance v1, Le0/l;

    .line 234
    .line 235
    const/4 v2, 0x3

    .line 236
    invoke-direct {v1, p0, v2}, Le0/l;-><init>(Lcom/example/navistart/BlackActivity;I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 240
    .line 241
    .line 242
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iget-object p1, p1, Lv1/c;->e:Landroidx/lifecycle/MutableLiveData;

    .line 251
    .line 252
    new-instance v1, Le0/l;

    .line 253
    .line 254
    const/4 v2, 0x4

    .line 255
    invoke-direct {v1, p0, v2}, Le0/l;-><init>(Lcom/example/navistart/BlackActivity;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 259
    .line 260
    .line 261
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    iget-object p1, p1, Lv1/c;->f:Landroidx/lifecycle/MutableLiveData;

    .line 270
    .line 271
    new-instance v1, Le0/l;

    .line 272
    .line 273
    const/4 v2, 0x5

    .line 274
    invoke-direct {v1, p0, v2}, Le0/l;-><init>(Lcom/example/navistart/BlackActivity;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lv1/d;->d()Lv1/c;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iget-object p1, p1, Lv1/c;->g:Landroidx/lifecycle/MutableLiveData;

    .line 289
    .line 290
    new-instance v1, Le0/l;

    .line 291
    .line 292
    const/4 v2, 0x6

    .line 293
    invoke-direct {v1, p0, v2}, Le0/l;-><init>(Lcom/example/navistart/BlackActivity;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v0}, Lcom/example/navistart/BlackActivity;->u(Lf0/b;)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :array_12e
    .array-data 1
        0x3t
        0x70t
        -0x17t
        -0x58t
        0x57t
        -0x33t
        -0x47t
        0x11t
        0x20t
        0x76t
        -0x1ct
        -0x45t
        0x64t
        -0x24t
        -0x4et
        0x3ft
        0x36t
        0x74t
        -0x13t
        -0x47t
        0x53t
        -0x3et
        -0x51t
        0x23t
        0x38t
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    nop

    .line 321
    :array_140
    .array-data 1
        0x4ct
        0x6t
        -0x74t
        -0x26t
        0x3bt
        -0x54t
        -0x40t
        0x50t
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_148
    .array-data 1
        -0x80t
        0x7at
        -0x4t
        -0x1bt
        0x65t
        0x33t
        -0x20t
        -0x2ct
        -0x7ft
        0x7at
        -0xet
        -0x1bt
        0x65t
        0x34t
        -0xft
        -0x3ft
        -0x5bt
        0x7bt
        -0x8t
        -0x18t
        0x7at
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    nop

    .line 345
    :array_158
    .array-data 1
        -0x3et
        0x16t
        -0x63t
        -0x7at
        0xet
        0x72t
        -0x7dt
        -0x60t
    .end array-data
.end method

.method public final onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/BlackActivity;->c:Ljava/lang/Float;

    .line 5
    .line 6
    if-eqz v0, :cond_21

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/example/navistart/BlackActivity;->c:Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/example/navistart/BlackActivity;->c:Ljava/lang/Float;

    .line 33
    .line 34
    :cond_21
    return-void
.end method

.method public final onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/BlackActivity;->e:Landroid/appwidget/AppWidgetHost;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final u(Lf0/b;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 3
    .line 4
    sget-object v0, Lf0/b;->d:Lf0/b;

    .line 5
    .line 6
    const v1, 0x7f09020e

    .line 7
    .line 8
    .line 9
    if-ne p1, v0, :cond_68

    .line 10
    .line 11
    const/16 p1, 0x11

    .line 12
    .line 13
    new-array v0, p1, [B

    .line 14
    .line 15
    fill-array-data v0, :array_88

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    new-array v3, v2, [B

    .line 21
    .line 22
    fill-array-data v3, :array_96

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v3, 0x1e

    .line 30
    .line 31
    new-array v3, v3, [B

    .line 32
    .line 33
    fill-array-data v3, :array_9e

    .line 34
    .line 35
    .line 36
    new-array v4, v2, [B

    .line 37
    .line 38
    fill-array-data v4, :array_b2

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-array p1, p1, [B

    .line 46
    .line 47
    fill-array-data p1, :array_ba

    .line 48
    .line 49
    .line 50
    new-array v2, v2, [B

    .line 51
    .line 52
    fill-array-data v2, :array_c8

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v2, Lb1/h;

    .line 60
    .line 61
    invoke-direct {v2}, Lb1/h;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v4, Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 67
    .line 68
    .line 69
    sget-object v5, Lb1/h;->g:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lb1/h;->h:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lb1/h;->i:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_68
    :try_start_68
    iget-object p1, p1, Lf0/b;->c:Ljava/lang/Class;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroidx/fragment/app/Fragment;
    :try_end_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_68 .. :try_end_70} :catch_82
    .catch Ljava/lang/InstantiationException; {:try_start_68 .. :try_end_70} :catch_80

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :catch_80
    move-exception p1

    .line 130
    goto :goto_83

    .line 131
    :catch_82
    move-exception p1

    .line 132
    :goto_83
    invoke-static {p1}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :array_88
    .array-data 1
        -0xct
        0x5ct
        0x33t
        -0x67t
        -0x50t
        -0x5bt
        -0x30t
        0x27t
        -0x2dt
        0x40t
        0x7t
        -0x78t
        -0x70t
        -0x67t
        -0x3dt
        0x2bt
        -0x2et
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    nop

    .line 151
    :array_96
    .array-data 1
        -0x47t
        0x25t
        0x64t
        -0x4t
        -0x2et
        -0xbt
        -0x5et
        0x48t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_9e
    .array-data 1
        -0x3dt
        0x69t
        -0x5bt
        -0x26t
        0x5bt
        -0x36t
        0x9t
        -0x32t
        -0x1ct
        0x75t
        -0x6ft
        -0x35t
        0x7bt
        -0xat
        0x1at
        -0x3et
        -0x1bt
        0x4ft
        -0x5ft
        -0x26t
        0x4dt
        -0x12t
        0x12t
        -0x31t
        -0x17t
        0x63t
        -0x53t
        -0xct
        0x5ct
        -0x1dt
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    nop

    .line 179
    :array_b2
    .array-data 1
        -0x72t
        0x10t
        -0xet
        -0x41t
        0x39t
        -0x66t
        0x7bt
        -0x5ft
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_ba
    .array-data 1
        0x7et
        -0x5dt
        -0x6bt
        0x5ft
        -0x10t
        0x65t
        0xct
        0x55t
        0x6dt
        -0x5dt
        -0x6ft
        0x61t
        -0x19t
        0x65t
        0x19t
        0x69t
        0x71t
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
    .line 197
    .line 198
    .line 199
    .line 200
    nop

    .line 201
    :array_c8
    .array-data 1
        0x1at
        -0x3at
        -0xdt
        0x3et
        -0x7bt
        0x9t
        0x78t
        0xat
    .end array-data
.end method
