.class public Lcom/example/navistart/punto;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/Boolean;

.field public static u:Ljava/lang/String;

.field public static final v:[B

.field public static final w:[B


# instance fields
.field public b:Z

.field public c:Lcom/example/navistart/punto;

.field public final d:Landroid/os/Handler;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/Button;

.field public m:Landroid/widget/Button;

.field public n:Landroid/widget/Button;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/Switch;

.field public final q:Landroid/view/animation/AlphaAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    fill-array-data v3, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [B

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/16 v4, 0x31

    .line 26
    .line 27
    aput-byte v4, v1, v3

    .line 28
    .line 29
    new-array v2, v2, [B

    .line 30
    .line 31
    fill-array-data v2, :array_2

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sput-object v1, Lcom/example/navistart/punto;->s:Ljava/lang/String;

    .line 39
    .line 40
    const/16 v1, 0x17

    .line 41
    .line 42
    new-array v1, v1, [B

    .line 43
    .line 44
    fill-array-data v1, :array_3

    .line 45
    .line 46
    .line 47
    sput-object v1, Lcom/example/navistart/punto;->v:[B

    .line 48
    .line 49
    new-array v0, v0, [B

    .line 50
    .line 51
    fill-array-data v0, :array_4

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/example/navistart/punto;->w:[B

    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 1
        -0x62t
        0x25t
        0x26t
        0x36t
        -0x43t
        0x10t
        0x2dt
        -0x4bt
        -0x60t
        0x22t
        0x2et
        0x31t
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 1
        -0x1t
        0x52t
        0x47t
        0x5ft
        -0x37t
        0x79t
        0x43t
        -0x2et
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_2
    .array-data 1
        0x1t
        0x64t
        0x2bt
        0x3ct
        -0x72t
        0x40t
        -0x42t
        0x20t
    .end array-data

    .line 76
    :array_3
    .array-data 1
        0x6at
        0x63t
        0x61t
        0x72t
        0x74t
        0x6ft
        0x6ft
        0x6ct
        0x73t
        0x2et
        0x72t
        0x75t
        0x2ft
        0x6ft
        0x74t
        0x70t
        0x2ft
        0x6bt
        0x75t
        0x2et
        0x70t
        0x68t
        0x70t
    .end array-data

    :array_4
    .array-data 1
        0x6at
        0x63t
        0x61t
        0x72t
        0x74t
        0x6ft
        0x6ft
        0x6ct
        0x73t
        0x2et
        0x72t
        0x75t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/example/navistart/punto;->d:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/example/navistart/punto;->q:Landroid/view/animation/AlphaAnimation;

    .line 24
    .line 25
    return-void
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    fill-array-data v1, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 1
        0x57t
        0x16t
        -0x13t
        0x13t
        0x20t
        0x58t
        -0x4et
        -0xet
        0x5ft
        0x1ct
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    nop

    .line 39
    :array_1
    .array-data 1
        0x36t
        0x78t
        -0x77t
        0x61t
        0x4ft
        0x31t
        -0x2at
        -0x53t
    .end array-data
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x7

    .line 2
    :try_start_0
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    array-length v2, p0

    .line 37
    if-ge v1, v2, :cond_0

    .line 38
    .line 39
    aget-byte v2, p0, v1

    .line 40
    .line 41
    and-int/lit16 v2, v2, 0xff

    .line 42
    .line 43
    add-int/lit16 v2, v2, 0x100

    .line 44
    .line 45
    const/16 v3, 0x10

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    return-object p0

    .line 73
    :array_0
    .array-data 1
        0x14t
        -0x15t
        0x1dt
        -0x6ct
        -0x59t
        -0xet
        -0x1at
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 1
        0x47t
        -0x5dt
        0x5ct
        -0x47t
        -0x6et
        -0x3dt
        -0x2ct
        -0x4ct
    .end array-data
.end method


# virtual methods
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

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x7f050377

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 43
    .line 44
    .line 45
    iput-object p0, p0, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 46
    .line 47
    sget-object v1, Le0/z2;->a:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/String;

    .line 50
    .line 51
    sget-object v3, Lcom/example/navistart/punto;->v:[B

    .line 52
    .line 53
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 54
    .line 55
    .line 56
    sput-object v1, Lcom/example/navistart/punto;->u:Ljava/lang/String;

    .line 57
    .line 58
    const/16 v1, 0x8

    .line 59
    .line 60
    :try_start_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/16 v4, 0xa

    .line 68
    .line 69
    new-array v4, v4, [B

    .line 70
    .line 71
    fill-array-data v4, :array_0

    .line 72
    .line 73
    .line 74
    new-array v5, v1, [B

    .line 75
    .line 76
    fill-array-data v5, :array_1

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v3, v4}, Lcom/example/navistart/cores/ProBroProxy;->Ping(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    :catch_0
    const v3, 0x7f0c010b

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/4 v4, 0x2

    .line 97
    new-array v5, v4, [B

    .line 98
    .line 99
    fill-array-data v5, :array_2

    .line 100
    .line 101
    .line 102
    new-array v6, v1, [B

    .line 103
    .line 104
    fill-array-data v6, :array_3

    .line 105
    .line 106
    .line 107
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v3, v5, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    sput-object v3, Lcom/example/navistart/punto;->t:Ljava/lang/Boolean;

    .line 120
    .line 121
    const v3, 0x7f090538

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Landroid/widget/TextView;

    .line 129
    .line 130
    iput-object v3, p0, Lcom/example/navistart/punto;->e:Landroid/widget/TextView;

    .line 131
    .line 132
    const v3, 0x7f09053a

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Landroid/widget/TextView;

    .line 140
    .line 141
    iput-object v3, p0, Lcom/example/navistart/punto;->f:Landroid/widget/TextView;

    .line 142
    .line 143
    const v3, 0x7f09053b

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Landroid/widget/TextView;

    .line 151
    .line 152
    iput-object v3, p0, Lcom/example/navistart/punto;->g:Landroid/widget/TextView;

    .line 153
    .line 154
    const v3, 0x7f09053c

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Landroid/widget/TextView;

    .line 162
    .line 163
    iput-object v3, p0, Lcom/example/navistart/punto;->h:Landroid/widget/TextView;

    .line 164
    .line 165
    iget-object v3, p0, Lcom/example/navistart/punto;->e:Landroid/widget/TextView;

    .line 166
    .line 167
    iget-object v5, p0, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 168
    .line 169
    invoke-static {v5}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    const v3, 0x7f0901dc

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Landroid/widget/EditText;

    .line 184
    .line 185
    iput-object v3, p0, Lcom/example/navistart/punto;->j:Landroid/widget/EditText;

    .line 186
    .line 187
    const v3, 0x7f0901d6

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Landroid/widget/EditText;

    .line 195
    .line 196
    iput-object v3, p0, Lcom/example/navistart/punto;->k:Landroid/widget/EditText;

    .line 197
    .line 198
    const v3, 0x7f09013c

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    check-cast v3, Landroid/widget/Button;

    .line 206
    .line 207
    iput-object v3, p0, Lcom/example/navistart/punto;->l:Landroid/widget/Button;

    .line 208
    .line 209
    const v3, 0x7f09011a

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    check-cast v3, Landroid/widget/Button;

    .line 217
    .line 218
    iput-object v3, p0, Lcom/example/navistart/punto;->m:Landroid/widget/Button;

    .line 219
    .line 220
    const v3, 0x7f09011b

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Landroid/widget/Button;

    .line 228
    .line 229
    iput-object v3, p0, Lcom/example/navistart/punto;->n:Landroid/widget/Button;

    .line 230
    .line 231
    const v3, 0x7f0904e5

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Landroid/widget/Switch;

    .line 239
    .line 240
    iput-object v3, p0, Lcom/example/navistart/punto;->p:Landroid/widget/Switch;

    .line 241
    .line 242
    const v3, 0x7f090254

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Landroid/widget/ImageView;

    .line 250
    .line 251
    iput-object v3, p0, Lcom/example/navistart/punto;->o:Landroid/widget/ImageView;

    .line 252
    .line 253
    const v3, 0x7f090371

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Landroid/widget/TextView;

    .line 261
    .line 262
    iput-object v3, p0, Lcom/example/navistart/punto;->i:Landroid/widget/TextView;

    .line 263
    .line 264
    const v3, 0x7f090143

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Landroid/widget/Button;

    .line 272
    .line 273
    sget-object v5, Le0/g0;->a:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    sget-object v6, Le0/g0;->a:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    invoke-virtual {v5, v6, v7}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-static {}, Le0/f0;->values()[Le0/f0;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    array-length v7, v6

    .line 298
    move v8, v2

    .line 299
    :goto_0
    if-ge v8, v7, :cond_1

    .line 300
    .line 301
    aget-object v9, v6, v8

    .line 302
    .line 303
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    iget-object v10, v9, Le0/f0;->c:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    if-eqz v10, :cond_0

    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 316
    .line 317
    goto :goto_0

    .line 318
    :cond_1
    sget-object v9, Le0/f0;->d:Le0/f0;

    .line 319
    .line 320
    :goto_1
    iget-object v5, v9, Le0/f0;->b:Ljava/lang/String;

    .line 321
    .line 322
    const-string v6, ""

    .line 323
    .line 324
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    if-eqz v7, :cond_2

    .line 329
    .line 330
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    const/high16 v7, 0x7f130000

    .line 335
    .line 336
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    :cond_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    new-instance v5, Le0/q3;

    .line 344
    .line 345
    invoke-direct {v5, p0, v4}, Le0/q3;-><init>(Lcom/example/navistart/punto;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    .line 350
    .line 351
    const v3, 0x7f0900dc

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    check-cast v3, Landroid/widget/Button;

    .line 359
    .line 360
    new-instance v5, Le0/q3;

    .line 361
    .line 362
    const/4 v7, 0x3

    .line 363
    invoke-direct {v5, p0, v7}, Le0/q3;-><init>(Lcom/example/navistart/punto;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    new-array v5, v7, [B

    .line 374
    .line 375
    fill-array-data v5, :array_4

    .line 376
    .line 377
    .line 378
    new-array v7, v1, [B

    .line 379
    .line 380
    fill-array-data v7, :array_5

    .line 381
    .line 382
    .line 383
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v3, v5, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    iget-object v5, p0, Lcom/example/navistart/punto;->p:Landroid/widget/Switch;

    .line 392
    .line 393
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 394
    .line 395
    .line 396
    iget-object v5, p0, Lcom/example/navistart/punto;->j:Landroid/widget/EditText;

    .line 397
    .line 398
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 399
    .line 400
    .line 401
    iget-object v5, p0, Lcom/example/navistart/punto;->l:Landroid/widget/Button;

    .line 402
    .line 403
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 404
    .line 405
    .line 406
    const v5, 0x7f09012e

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Landroid/widget/Button;

    .line 414
    .line 415
    new-instance v7, Le0/q3;

    .line 416
    .line 417
    const/4 v8, 0x4

    .line 418
    invoke-direct {v7, p0, v8}, Le0/q3;-><init>(Lcom/example/navistart/punto;I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    .line 423
    .line 424
    const v5, 0x7f0900db

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    new-instance v7, Le0/q3;

    .line 432
    .line 433
    const/4 v9, 0x5

    .line 434
    invoke-direct {v7, p0, v9}, Le0/q3;-><init>(Lcom/example/navistart/punto;I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    .line 439
    .line 440
    sget-object v5, Lcom/example/navistart/punto;->t:Ljava/lang/Boolean;

    .line 441
    .line 442
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    if-eqz v5, :cond_3

    .line 447
    .line 448
    iget-object v5, p0, Lcom/example/navistart/punto;->j:Landroid/widget/EditText;

    .line 449
    .line 450
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    .line 452
    .line 453
    iget-object v5, p0, Lcom/example/navistart/punto;->l:Landroid/widget/Button;

    .line 454
    .line 455
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    .line 457
    .line 458
    iget-object v5, p0, Lcom/example/navistart/punto;->n:Landroid/widget/Button;

    .line 459
    .line 460
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0, v2}, Lcom/example/navistart/punto;->v(Z)V

    .line 464
    .line 465
    .line 466
    iget-object v1, p0, Lcom/example/navistart/punto;->f:Landroid/widget/TextView;

    .line 467
    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .line 472
    .line 473
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    const v9, 0x7f1300c7

    .line 478
    .line 479
    .line 480
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    iget-object v9, p0, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 492
    .line 493
    invoke-static {v9}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v9

    .line 497
    invoke-virtual {v7, v9, v6}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    .line 510
    .line 511
    iget-object v1, p0, Lcom/example/navistart/punto;->n:Landroid/widget/Button;

    .line 512
    .line 513
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 514
    .line 515
    .line 516
    iget-object v1, p0, Lcom/example/navistart/punto;->h:Landroid/widget/TextView;

    .line 517
    .line 518
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 519
    .line 520
    .line 521
    iget-object v1, p0, Lcom/example/navistart/punto;->p:Landroid/widget/Switch;

    .line 522
    .line 523
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 524
    .line 525
    .line 526
    goto :goto_2

    .line 527
    :cond_3
    invoke-virtual {p0}, Lcom/example/navistart/punto;->x()V

    .line 528
    .line 529
    .line 530
    :goto_2
    sget-object v1, Lcom/example/navistart/punto;->t:Ljava/lang/Boolean;

    .line 531
    .line 532
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-nez v1, :cond_4

    .line 537
    .line 538
    if-eqz p1, :cond_4

    .line 539
    .line 540
    sget-object v1, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 541
    .line 542
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 543
    .line 544
    .line 545
    move-result p1

    .line 546
    invoke-virtual {p0, p1}, Lcom/example/navistart/punto;->v(Z)V

    .line 547
    .line 548
    .line 549
    :cond_4
    const-wide/16 v5, 0x1f4

    .line 550
    .line 551
    iget-object p1, p0, Lcom/example/navistart/punto;->q:Landroid/view/animation/AlphaAnimation;

    .line 552
    .line 553
    invoke-virtual {p1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 557
    .line 558
    .line 559
    const/4 v1, -0x1

    .line 560
    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {p0, v3}, Lcom/example/navistart/punto;->s(Z)V

    .line 564
    .line 565
    .line 566
    iget-object p1, p0, Lcom/example/navistart/punto;->p:Landroid/widget/Switch;

    .line 567
    .line 568
    new-instance v1, Le0/s0;

    .line 569
    .line 570
    invoke-direct {v1, v8, p0}, Le0/s0;-><init>(ILjava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 574
    .line 575
    .line 576
    const p1, 0x7f090123

    .line 577
    .line 578
    .line 579
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    check-cast p1, Landroid/widget/Button;

    .line 584
    .line 585
    new-instance v1, Le0/q3;

    .line 586
    .line 587
    const/4 v3, 0x6

    .line 588
    invoke-direct {v1, p0, v3}, Le0/q3;-><init>(Lcom/example/navistart/punto;I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    .line 593
    .line 594
    iget-object p1, p0, Lcom/example/navistart/punto;->l:Landroid/widget/Button;

    .line 595
    .line 596
    new-instance v1, Le0/q3;

    .line 597
    .line 598
    const/4 v3, 0x7

    .line 599
    invoke-direct {v1, p0, v3}, Le0/q3;-><init>(Lcom/example/navistart/punto;I)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    .line 604
    .line 605
    iget-object p1, p0, Lcom/example/navistart/punto;->m:Landroid/widget/Button;

    .line 606
    .line 607
    new-instance v1, Le0/q3;

    .line 608
    .line 609
    invoke-direct {v1, p0, v2}, Le0/q3;-><init>(Lcom/example/navistart/punto;I)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    .line 614
    .line 615
    iget-object p1, p0, Lcom/example/navistart/punto;->n:Landroid/widget/Button;

    .line 616
    .line 617
    new-instance v1, Le0/q3;

    .line 618
    .line 619
    invoke-direct {v1, p0, v0}, Le0/q3;-><init>(Lcom/example/navistart/punto;I)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    .line 624
    .line 625
    return-void

    .line 626
    nop

    .line 627
    :array_0
    .array-data 1
        0x66t
        -0xft
        -0x3et
        0x0t
        0x3dt
        0x5et
        -0x70t
        -0x46t
        0x6et
        -0x5t
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    nop

    .line 637
    :array_1
    .array-data 1
        0x7t
        -0x61t
        -0x5at
        0x72t
        0x52t
        0x37t
        -0xct
        -0x1bt
    .end array-data

    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    :array_2
    .array-data 1
        -0x51t
        0x2dt
    .end array-data

    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    nop

    .line 651
    :array_3
    .array-data 1
        -0x32t
        0x58t
        -0x6ct
        0x2et
        -0x45t
        0x7bt
        0x76t
        0x33t
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_4
    .array-data 1
        -0x7ct
        -0x41t
        0x69t
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_5
    .array-data 1
        -0xct
        -0x25t
        0x7t
        -0x77t
        0x30t
        0x60t
        0x4ct
        0x6ct
    .end array-data
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final onResume()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/example/navistart/punto;->b:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/example/navistart/punto;->v(Z)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/example/navistart/punto;->s:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    const/16 v2, -0x4c

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-byte v2, v1, v3

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    new-array v4, v2, [B

    .line 24
    .line 25
    fill-array-data v4, :array_0

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/lang/String;

    .line 39
    .line 40
    sget-object v1, Lcom/example/navistart/punto;->s:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-wide v5, 0x7fffffffffffffffL

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-interface {v4, v5}, Lcom/example/navistart/cores/InterC;->l(Ljava/lang/Long;)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    sub-long/2addr v0, v4

    .line 79
    const-wide/32 v4, 0x15180

    .line 80
    .line 81
    .line 82
    div-long/2addr v0, v4

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-lez v1, :cond_0

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v1, p0, Lcom/example/navistart/punto;->h:Landroid/widget/TextView;

    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    const v6, 0x7f130209

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const v5, 0x7f130208

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/example/navistart/punto;->h:Landroid/widget/TextView;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const v4, 0x7f130352

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    :cond_1
    :goto_0
    new-instance v0, Lc7/e;

    .line 166
    .line 167
    const/4 v1, 0x5

    .line 168
    invoke-direct {v0, p0, v3, v1}, Lc7/e;-><init>(Ljava/lang/Object;ZI)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/example/navistart/punto;->d:Landroid/os/Handler;

    .line 172
    .line 173
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    .line 175
    .line 176
    new-instance v3, Le0/s3;

    .line 177
    .line 178
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const/4 v1, 0x3

    .line 183
    new-array v1, v1, [B

    .line 184
    .line 185
    fill-array-data v1, :array_1

    .line 186
    .line 187
    .line 188
    new-array v4, v2, [B

    .line 189
    .line 190
    fill-array-data v4, :array_2

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const-string v4, ""

    .line 198
    .line 199
    invoke-virtual {v0, v1, v4}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    iget-object v0, p0, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 204
    .line 205
    invoke-static {v0}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    sget-object v0, Le0/x1;->q:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v0}, Lcom/example/navistart/punto;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    const/4 v0, 0x2

    .line 216
    new-array v0, v0, [B

    .line 217
    .line 218
    fill-array-data v0, :array_3

    .line 219
    .line 220
    .line 221
    new-array v1, v2, [B

    .line 222
    .line 223
    fill-array-data v1, :array_4

    .line 224
    .line 225
    .line 226
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    const/4 v9, 0x0

    .line 231
    const-string v7, ""

    .line 232
    .line 233
    invoke-direct/range {v3 .. v9}, Le0/s3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v3}, Lcom/example/navistart/punto;->u(Le0/s3;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    nop

    .line 241
    :array_0
    .array-data 1
        -0x7ct
        0x2et
        -0x1ft
        0x5dt
        -0x35t
        0x79t
        -0x49t
        0x6dt
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_1
    .array-data 1
        -0x6dt
        -0x5at
        -0x37t
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_2
    .array-data 1
        -0x2t
        -0x2dt
        -0x45t
        -0x68t
        0x27t
        -0x36t
        0x6t
        -0x37t
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_3
    .array-data 1
        0x64t
        0x7ct
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    nop

    .line 269
    :array_4
    .array-data 1
        0x12t
        0x19t
        0x2bt
        0x3et
        -0x5at
        0x1at
        0x12t
        0xft
    .end array-data
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/example/navistart/punto;->b:Z

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final s(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/example/navistart/punto;->p:Landroid/widget/Switch;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/example/navistart/punto;->p:Landroid/widget/Switch;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/high16 v1, -0x10000

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/example/navistart/punto;->p:Landroid/widget/Switch;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/example/navistart/punto;->q:Landroid/view/animation/AlphaAnimation;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/example/navistart/punto;->p:Landroid/widget/Switch;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/example/navistart/punto;->p:Landroid/widget/Switch;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final u(Le0/s3;)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, -0x1

    .line 19
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Le0/j2;

    .line 24
    .line 25
    const/4 v2, 0x6

    .line 26
    invoke-direct {v1, v2, p0, p1}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 1
        -0x71t
        -0x75t
        -0x1dt
        -0x67t
        0x56t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    nop

    .line 41
    :array_1
    .array-data 1
        -0x1t
        -0x2t
        -0x73t
        -0x13t
        0x39t
        0x4t
        -0x46t
        -0xet
    .end array-data
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/example/navistart/punto;->b:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v0, 0x8

    .line 8
    .line 9
    :goto_0
    iget-object v1, p0, Lcom/example/navistart/punto;->k:Landroid/widget/EditText;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/example/navistart/punto;->m:Landroid/widget/Button;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/example/navistart/punto;->g:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/example/navistart/punto;->k:Landroid/widget/EditText;

    .line 27
    .line 28
    new-instance v0, La4/g;

    .line 29
    .line 30
    const/16 v1, 0x18

    .line 31
    .line 32
    invoke-direct {v0, v1, p0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/example/navistart/punto;->j:Landroid/widget/EditText;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/example/navistart/punto;->l:Landroid/widget/Button;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/example/navistart/punto;->n:Landroid/widget/Button;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/example/navistart/punto;->v(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/example/navistart/punto;->f:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v3, 0x7f1300c5

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/example/navistart/punto;->h:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/example/navistart/punto;->p:Landroid/widget/Switch;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
