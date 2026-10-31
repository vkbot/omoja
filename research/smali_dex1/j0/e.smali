.class public final Lj0/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Lj0/d;

.field public b:Ln0/d;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lj1/t;

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x32

    .line 5
    .line 6
    iput v0, p0, Lj0/e;->h:I

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IILandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 10

    .line 1
    if-eqz p0, :cond_47

    .line 2
    .line 3
    if-nez p1, :cond_5

    .line 4
    .line 5
    goto :goto_47

    .line 6
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    const/16 v1, 0x48

    .line 9
    .line 10
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Landroid/graphics/Canvas;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    .line 18
    .line 19
    const/16 v3, 0x1e

    .line 20
    .line 21
    if-eq p3, v3, :cond_1d

    .line 22
    .line 23
    const/16 v3, 0x46

    .line 24
    .line 25
    if-ne p3, v3, :cond_1b

    .line 26
    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const/16 p3, 0x32

    .line 29
    .line 30
    :cond_1d
    :goto_1d
    mul-int/2addr p3, v1

    .line 31
    div-int/lit8 p3, p3, 0x64

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-ne p2, v3, :cond_31

    .line 36
    .line 37
    invoke-virtual {p0, v4, v4, v1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v4, p3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    goto :goto_3d

    .line 50
    :cond_31
    invoke-virtual {p0, v4, v4, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p3, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    .line 61
    .line 62
    :goto_3d
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 63
    .line 64
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_47
    :goto_47
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public static b(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Lj0/e;
    .registers 4

    .line 1
    new-instance v0, Lj0/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lj0/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lj0/d;->c:Lj0/d;

    .line 7
    .line 8
    iput-object v1, v0, Lj0/e;->a:Lj0/d;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 11
    .line 12
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, v0, Lj0/e;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lj0/e;->i:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iput-object p0, v0, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    return-object v0
.end method

.method public static c(Ln0/d;Landroid/content/Context;)Lj0/e;
    .registers 4

    .line 1
    new-instance v0, Lj0/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lj0/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lj0/d;->b:Lj0/d;

    .line 7
    .line 8
    iput-object v1, v0, Lj0/e;->a:Lj0/d;

    .line 9
    .line 10
    iput-object p0, v0, Lj0/e;->b:Ln0/d;

    .line 11
    .line 12
    iget v1, p0, Ln0/d;->b:I

    .line 13
    .line 14
    invoke-static {v1}, Lcom/bumptech/glide/d;->b(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lj0/e;->i:Ljava/lang/String;

    .line 19
    .line 20
    :try_start_13
    iget p0, p0, Ln0/d;->c:I

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iput-object p0, v0, Lj0/e;->j:Landroid/graphics/drawable/Drawable;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_1c

    .line 27
    .line 28
    return-object v0

    .line 29
    :catch_1c
    const/4 p0, 0x0

    .line 30
    iput-object p0, v0, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    return-object v0
.end method

.method public static d(Lj1/t;Landroid/content/Context;)Lj0/e;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4c

    .line 3
    .line 4
    iget-object v1, p0, Lj1/t;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Lj1/t;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_c

    .line 11
    .line 12
    goto :goto_4c

    .line 13
    :cond_c
    invoke-static {p1}, Le0/g0;->b(Landroid/content/Context;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v2, Lj0/e;

    .line 18
    .line 19
    invoke-direct {v2}, Lj0/e;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lj0/d;->e:Lj0/d;

    .line 23
    .line 24
    iput-object v3, v2, Lj0/e;->a:Lj0/d;

    .line 25
    .line 26
    iput-object v1, v2, Lj0/e;->e:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p0, v2, Lj0/e;->f:Lj1/t;

    .line 29
    .line 30
    iget-object v3, p0, Lj1/t;->b:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v3, :cond_2d

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_2d

    .line 43
    .line 44
    move-object v1, v3

    .line 45
    goto :goto_3a

    .line 46
    :cond_2d
    iget v3, p0, Lj1/t;->c:I

    .line 47
    .line 48
    if-eqz v3, :cond_36

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    if-nez v1, :cond_3a

    .line 56
    .line 57
    const-string v1, ""

    .line 58
    .line 59
    :cond_3a
    :goto_3a
    iput-object v1, v2, Lj0/e;->i:Ljava/lang/String;

    .line 60
    .line 61
    :try_start_3c
    iget p0, p0, Lj1/t;->d:I

    .line 62
    .line 63
    if-nez p0, :cond_42

    .line 64
    .line 65
    move-object p0, v0

    .line 66
    goto :goto_46

    .line 67
    :cond_42
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :goto_46
    iput-object p0, v2, Lj0/e;->j:Landroid/graphics/drawable/Drawable;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_48} :catch_49

    .line 72
    .line 73
    return-object v2

    .line 74
    :catch_49
    iput-object v0, v2, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lj0/e;
    .registers 11

    .line 1
    if-eqz p1, :cond_b6

    .line 2
    .line 3
    if-nez p4, :cond_6

    .line 4
    .line 5
    goto/16 :goto_b6

    .line 6
    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_b6

    .line 24
    .line 25
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_20

    .line 30
    .line 31
    goto/16 :goto_b6

    .line 32
    .line 33
    :cond_20
    const/4 v1, 0x0

    .line 34
    :try_start_21
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, p4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v4, Lj0/e;

    .line 43
    .line 44
    invoke-direct {v4}, Lj0/e;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v5, Lj0/d;->d:Lj0/d;

    .line 48
    .line 49
    iput-object v5, v4, Lj0/e;->a:Lj0/d;

    .line 50
    .line 51
    iput-object p1, v4, Lj0/e;->c:Ljava/lang/String;

    .line 52
    .line 53
    iput-object p4, v4, Lj0/e;->d:Ljava/lang/String;

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    const/4 p4, 0x2

    .line 57
    if-ne p2, p4, :cond_3b

    .line 58
    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move p4, p1

    .line 61
    :goto_3c
    iput p4, v4, Lj0/e;->g:I

    .line 62
    .line 63
    const/16 p2, 0x1e

    .line 64
    .line 65
    if-eq p3, p2, :cond_49

    .line 66
    .line 67
    const/16 p2, 0x46

    .line 68
    .line 69
    if-ne p3, p2, :cond_47

    .line 70
    .line 71
    goto :goto_49

    .line 72
    :cond_47
    const/16 p3, 0x32

    .line 73
    .line 74
    :cond_49
    :goto_49
    iput p3, v4, Lj0/e;->h:I

    .line 75
    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    new-array p3, p1, [B

    .line 93
    .line 94
    const/16 p4, 0x59

    .line 95
    .line 96
    aput-byte p4, p3, v1

    .line 97
    .line 98
    const/16 p4, 0x8

    .line 99
    .line 100
    new-array v5, p4, [B

    .line 101
    .line 102
    fill-array-data v5, :array_b8

    .line 103
    .line 104
    .line 105
    invoke-static {p3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p3, " "

    .line 124
    .line 125
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget p3, v4, Lj0/e;->h:I

    .line 129
    .line 130
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    new-array p1, p1, [B

    .line 134
    .line 135
    const/16 p3, 0x4f

    .line 136
    .line 137
    aput-byte p3, p1, v1

    .line 138
    .line 139
    new-array p3, p4, [B

    .line 140
    .line 141
    fill-array-data p3, :array_c0

    .line 142
    .line 143
    .line 144
    invoke-static {p1, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget p1, v4, Lj0/e;->h:I

    .line 152
    .line 153
    rsub-int/lit8 p1, p1, 0x64

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iput-object p1, v4, Lj0/e;->i:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    iget p3, v4, Lj0/e;->g:I

    .line 173
    .line 174
    iget p4, v4, Lj0/e;->h:I

    .line 175
    .line 176
    invoke-static {p1, p2, p3, p4, p0}, Lj0/e;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IILandroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    iput-object p0, v4, Lj0/e;->j:Landroid/graphics/drawable/Drawable;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_b5} :catch_b6

    .line 181
    .line 182
    return-object v4

    .line 183
    :catch_b6
    :cond_b6
    :goto_b6
    const/4 p0, 0x0

    .line 184
    return-object p0

    .line 185
    :array_b8
    .array-data 1
        0x76t
        -0x16t
        0x22t
        0x62t
        -0x2at
        0x11t
        0x3bt
        0x17t
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_c0
    .array-data 1
        0x60t
        -0x58t
        0xct
        0x6ft
        0x54t
        0x6dt
        0x13t
        -0x6ct
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lj0/e;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
