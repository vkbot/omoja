.class public final Ls1/v;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public c:Landroid/widget/LinearLayout;

.field public d:Lb1/m;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_34

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    fill-array-data v3, :array_42

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x21

    .line 19
    .line 20
    new-array v1, v1, [B

    .line 21
    .line 22
    fill-array-data v1, :array_4a

    .line 23
    .line 24
    .line 25
    new-array v3, v2, [B

    .line 26
    .line 27
    fill-array-data v3, :array_60

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Ls1/v;->f:Ljava/lang/String;

    .line 35
    .line 36
    new-array v0, v0, [B

    .line 37
    .line 38
    fill-array-data v0, :array_68

    .line 39
    .line 40
    .line 41
    new-array v1, v2, [B

    .line 42
    .line 43
    fill-array-data v1, :array_76

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Ls1/v;->g:Ljava/lang/String;

    .line 51
    .line 52
    return-void

    .line 53
    :array_34
    .array-data 1
        -0x7ct
        0x4ft
        0x1ct
        -0x28t
        -0x65t
        0x14t
        0x3dt
        -0x5t
        -0x5dt
        0x53t
        0x28t
        -0x37t
        -0x4bt
        0x25t
        0x3at
        -0x6t
        -0x56t
        0x5et
        0x2et
        -0x31t
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
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
    :array_42
    .array-data 1
        -0x37t
        0x36t
        0x4bt
        -0x43t
        -0x7t
        0x44t
        0x4ft
        -0x6ct
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_4a
    .array-data 1
        0x8t
        -0x3bt
        -0x60t
        0x53t
        -0x41t
        0x30t
        0x3dt
        0x6ft
        0x2ft
        -0x27t
        -0x6ct
        0x42t
        -0x6ft
        0x1t
        0x3at
        0x6et
        0x26t
        -0x2ct
        -0x6et
        0x44t
        -0x7et
        0x33t
        0x2at
        0x74t
        0x31t
        -0x2bt
        -0x67t
        0x51t
        -0x52t
        0x3ft
        0x4t
        0x65t
        0x3ct
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    nop

    .line 97
    :array_60
    .array-data 1
        0x45t
        -0x44t
        -0x9t
        0x36t
        -0x23t
        0x60t
        0x4ft
        0x0t
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_68
    .array-data 1
        0x10t
        -0x2at
        -0x27t
        -0x2dt
        -0x3bt
        0x7ft
        0x1ft
        0x2dt
        0x3t
        -0x2at
        -0x23t
        -0x13t
        -0x24t
        0x72t
        0x1et
        0x1ct
        0x17t
        -0x25t
        -0x26t
        -0x40t
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_76
    .array-data 1
        0x74t
        -0x4dt
        -0x41t
        -0x4et
        -0x50t
        0x13t
        0x6bt
        0x72t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ls1/v;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v0, 0x14

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    fill-array-data v0, :array_20

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    new-array v1, v1, [B

    .line 21
    .line 22
    fill-array-data v1, :array_2e

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Ls1/v;->e:Ljava/lang/String;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_20
    .array-data 1
        0x73t
        0x56t
        0x20t
        -0x2ct
        0x18t
        0x3dt
        0x8t
        -0x29t
        0x60t
        0x56t
        0x24t
        -0x16t
        0x1t
        0x30t
        0x9t
        -0x1at
        0x74t
        0x5bt
        0x23t
        -0x39t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :array_2e
    .array-data 1
        0x17t
        0x33t
        0x46t
        -0x4bt
        0x6dt
        0x51t
        0x7ct
        -0x78t
    .end array-data
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Ls1/v;->g:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1b

    .line 8
    .line 9
    const/16 p0, 0x23

    .line 10
    .line 11
    new-array p0, p0, [B

    .line 12
    .line 13
    fill-array-data p0, :array_56

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_6c

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    const/16 v0, 0x5f

    .line 29
    .line 30
    const/16 v1, 0x20

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v2, 0x2d

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_34

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :array_56
    .array-data 1
        0x29t
        -0x68t
        -0x1dt
        0x14t
        0x3et
        -0x4t
        -0x35t
        0x34t
        0x29t
        -0x73t
        -0x1et
        0x26t
        0x3ft
        -0x34t
        -0x36t
        0xbt
        0x29t
        -0x7ct
        -0x1et
        0x26t
        0x3ft
        -0x3dt
        0x3bt
        0x58t
        0x7bt
        -0x17t
        -0x79t
        0x46t
        0x52t
        -0x64t
        -0x55t
        -0x57t
        -0x4dt
        0x7at
        0x66t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_6c
    .array-data 1
        -0x7t
        0x39t
        0x32t
        -0x6at
        -0x12t
        0x4ct
        0x1bt
        -0x77t
    .end array-data
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x18dd5

    .line 5
    .line 6
    .line 7
    if-ne p1, v0, :cond_95

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    if-ne p2, p1, :cond_95

    .line 11
    .line 12
    if-nez p3, :cond_f

    .line 13
    .line 14
    goto/16 :goto_95

    .line 15
    .line 16
    :cond_f
    const/16 p1, 0xd

    .line 17
    .line 18
    new-array p1, p1, [B

    .line 19
    .line 20
    fill-array-data p1, :array_96

    .line 21
    .line 22
    .line 23
    const/16 p2, 0x8

    .line 24
    .line 25
    new-array v0, p2, [B

    .line 26
    .line 27
    fill-array-data v0, :array_a2

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_28

    .line 39
    .line 40
    goto :goto_95

    .line 41
    :cond_28
    :try_start_28
    iget-object p3, p0, Ls1/v;->d:Lb1/m;

    .line 42
    .line 43
    new-instance v0, Ljava/io/File;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p3, Lb1/m;->f:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/io/File;

    .line 51
    .line 52
    const/4 p3, 0x1

    .line 53
    invoke-static {v0, p1, p3}, Lb1/u;->r(Ljava/io/File;Ljava/io/File;Z)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0}, Ls1/v;->w()V

    .line 58
    .line 59
    .line 60
    iget-object p3, p0, Ls1/v;->b:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    if-nez p3, :cond_44

    .line 67
    .line 68
    goto :goto_52

    .line 69
    :cond_44
    iput-object p1, p0, Ls1/v;->e:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    sget-object v0, Ls1/v;->f:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p3, v0, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ls1/v;->x()V

    .line 81
    .line 82
    .line 83
    :goto_52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const/16 p3, 0x31

    .line 88
    .line 89
    new-array p3, p3, [B

    .line 90
    .line 91
    fill-array-data p3, :array_aa

    .line 92
    .line 93
    .line 94
    new-array v0, p2, [B

    .line 95
    .line 96
    fill-array-data v0, :array_c8

    .line 97
    .line 98
    .line 99
    invoke-static {p3, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-static {p1, p3}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_69} :catch_6a

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catch_6a
    move-exception p1

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const/16 v1, 0x12

    .line 118
    .line 119
    new-array v1, v1, [B

    .line 120
    .line 121
    fill-array-data v1, :array_d0

    .line 122
    .line 123
    .line 124
    new-array p2, p2, [B

    .line 125
    .line 126
    fill-array-data p2, :array_de

    .line 127
    .line 128
    .line 129
    invoke-static {v1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p3, p1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :cond_95
    :goto_95
    return-void

    .line 151
    :array_96
    .array-data 1
        -0x44t
        0x11t
        -0x1ft
        -0x14t
        -0x42t
        -0x7ct
        0x34t
        -0x2ft
        -0x70t
        0x12t
        -0x1ct
        -0x1bt
        -0x48t
    .end array-data

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
    nop

    .line 163
    :array_a2
    .array-data 1
        -0x31t
        0x74t
        -0x73t
        -0x77t
        -0x23t
        -0x10t
        0x51t
        -0x4bt
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_aa
    .array-data 1
        -0x4et
        0xat
        -0x39t
        -0x7at
        -0x73t
        -0x9t
        -0x7dt
        -0x39t
        0x42t
        0x79t
        -0x6ct
        -0x1et
        -0x24t
        -0x66t
        -0x2ft
        -0x59t
        -0x2et
        0x78t
        -0x56t
        -0x1dt
        -0x1dt
        -0x65t
        -0x1ft
        -0x59t
        -0x27t
        0x78t
        -0x5et
        -0x1dt
        -0x20t
        -0x65t
        -0x1dt
        0x57t
        -0x4et
        0x10t
        0x37t
        -0x1dt
        -0x11t
        -0x66t
        -0x28t
        -0x59t
        -0x2dt
        0x79t
        -0x69t
        -0x1dt
        -0x13t
        -0x65t
        -0x12t
        -0x59t
        -0x2et
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
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
        0x62t
        -0x58t
        0x17t
        0x33t
        0x5dt
        0x4bt
        0x53t
        0x77t
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_d0
    .array-data 1
        -0x33t
        -0x1ft
        0xet
        0x4t
        -0x22t
        -0x24t
        -0x41t
        -0x4dt
        -0x33t
        -0x3bt
        0xft
        0x3ct
        0x2et
        0x3et
        0x26t
        0x52t
        0x27t
        0x5ft
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    nop

    .line 223
    :array_de
    .array-data 1
        0x1dt
        0x7ft
        -0x21t
        -0x74t
        0xet
        0x64t
        0x6ft
        0x2t
    .end array-data
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/widget/ScrollView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 14
    .line 15
    .line 16
    const v3, -0xf4eee7

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    .line 33
    .line 34
    const/16 v4, 0x18

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ls1/v;->v(I)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/16 v6, 0x16

    .line 41
    .line 42
    invoke-virtual {v0, v6}, Ls1/v;->v(I)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-virtual {v0, v4}, Ls1/v;->v(I)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    invoke-virtual {v0, v4}, Ls1/v;->v(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 55
    .line 56
    .line 57
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    .line 59
    const/4 v5, -0x1

    .line 60
    const/4 v6, -0x2

    .line 61
    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    const/16 v4, 0x1d

    .line 68
    .line 69
    new-array v7, v4, [B

    .line 70
    .line 71
    fill-array-data v7, :array_1c0

    .line 72
    .line 73
    .line 74
    const/16 v8, 0x8

    .line 75
    .line 76
    new-array v9, v8, [B

    .line 77
    .line 78
    fill-array-data v9, :array_1d4

    .line 79
    .line 80
    .line 81
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const v9, -0xc8582b

    .line 86
    .line 87
    .line 88
    const/16 v10, 0xd

    .line 89
    .line 90
    invoke-virtual {v0, v7, v10, v9}, Ls1/v;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 95
    .line 96
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    .line 98
    .line 99
    const v11, 0x3da3d70a    # 0.08f

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    const/16 v7, 0x19

    .line 109
    .line 110
    new-array v12, v7, [B

    .line 111
    .line 112
    fill-array-data v12, :array_1dc

    .line 113
    .line 114
    .line 115
    new-array v13, v8, [B

    .line 116
    .line 117
    fill-array-data v13, :array_1ee

    .line 118
    .line 119
    .line 120
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    const/16 v13, 0x1a

    .line 125
    .line 126
    const v14, -0xb0806

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v12, v13, v14}, Ls1/v;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    .line 135
    .line 136
    const/4 v13, 0x5

    .line 137
    invoke-virtual {v0, v13}, Ls1/v;->v(I)I

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    const/4 v14, 0x0

    .line 142
    invoke-virtual {v12, v14, v13, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    const/16 v12, 0xa4

    .line 149
    .line 150
    new-array v12, v12, [B

    .line 151
    .line 152
    fill-array-data v12, :array_1f6

    .line 153
    .line 154
    .line 155
    new-array v13, v8, [B

    .line 156
    .line 157
    fill-array-data v13, :array_24c

    .line 158
    .line 159
    .line 160
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    const/16 v13, 0xf

    .line 165
    .line 166
    const v15, -0x645546

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v12, v13, v15}, Ls1/v;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    const/4 v13, 0x0

    .line 174
    const v4, 0x3f933333    # 1.15f

    .line 175
    .line 176
    .line 177
    invoke-virtual {v12, v13, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v8}, Ls1/v;->v(I)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    const/16 v13, 0x14

    .line 185
    .line 186
    invoke-virtual {v0, v13}, Ls1/v;->v(I)I

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    invoke-virtual {v12, v14, v4, v14, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    new-instance v4, Landroid/widget/LinearLayout;

    .line 197
    .line 198
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    invoke-direct {v4, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    iput-object v4, v0, Ls1/v;->c:Landroid/widget/LinearLayout;

    .line 206
    .line 207
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 208
    .line 209
    .line 210
    iget-object v4, v0, Ls1/v;->c:Landroid/widget/LinearLayout;

    .line 211
    .line 212
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 213
    .line 214
    invoke-direct {v12, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .line 219
    .line 220
    new-array v4, v7, [B

    .line 221
    .line 222
    fill-array-data v4, :array_254

    .line 223
    .line 224
    .line 225
    new-array v5, v8, [B

    .line 226
    .line 227
    fill-array-data v5, :array_266

    .line 228
    .line 229
    .line 230
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v0, v4, v10, v15}, Ls1/v;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 242
    .line 243
    .line 244
    const/16 v5, 0xe

    .line 245
    .line 246
    invoke-virtual {v0, v5}, Ls1/v;->v(I)I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    const/16 v6, 0x9

    .line 251
    .line 252
    invoke-virtual {v0, v6}, Ls1/v;->v(I)I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    invoke-virtual {v4, v14, v5, v14, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    .line 261
    .line 262
    new-instance v4, Landroid/widget/LinearLayout;

    .line 263
    .line 264
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 272
    .line 273
    .line 274
    const/16 v5, 0x10

    .line 275
    .line 276
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 277
    .line 278
    .line 279
    const/16 v5, 0x1d

    .line 280
    .line 281
    new-array v6, v5, [B

    .line 282
    .line 283
    fill-array-data v6, :array_26e

    .line 284
    .line 285
    .line 286
    new-array v5, v8, [B

    .line 287
    .line 288
    fill-array-data v5, :array_282

    .line 289
    .line 290
    .line 291
    invoke-static {v6, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v0, v5, v2}, Ls1/v;->t(Ljava/lang/String;Z)Landroid/widget/Button;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    new-instance v5, Ls1/u;

    .line 300
    .line 301
    const/4 v6, 0x0

    .line 302
    invoke-direct {v5, v0, v6}, Ls1/u;-><init>(Ls1/v;I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    .line 307
    .line 308
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 309
    .line 310
    const/16 v6, 0x36

    .line 311
    .line 312
    invoke-virtual {v0, v6}, Ls1/v;->v(I)I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    const/high16 v9, 0x3f800000    # 1.0f

    .line 317
    .line 318
    invoke-direct {v5, v14, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .line 326
    .line 327
    const/16 v5, 0x1d

    .line 328
    .line 329
    new-array v2, v5, [B

    .line 330
    .line 331
    fill-array-data v2, :array_28a

    .line 332
    .line 333
    .line 334
    new-array v5, v8, [B

    .line 335
    .line 336
    fill-array-data v5, :array_29e

    .line 337
    .line 338
    .line 339
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v0, v2, v14}, Ls1/v;->t(Ljava/lang/String;Z)Landroid/widget/Button;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    new-instance v5, Ls1/u;

    .line 348
    .line 349
    const/4 v7, 0x1

    .line 350
    invoke-direct {v5, v0, v7}, Ls1/u;-><init>(Ls1/v;I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    .line 355
    .line 356
    const/16 v5, 0xa

    .line 357
    .line 358
    invoke-virtual {v0, v5}, Ls1/v;->v(I)I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 363
    .line 364
    invoke-virtual {v0, v6}, Ls1/v;->v(I)I

    .line 365
    .line 366
    .line 367
    move-result v6

    .line 368
    invoke-direct {v7, v14, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 378
    .line 379
    .line 380
    const/16 v2, 0x99

    .line 381
    .line 382
    new-array v2, v2, [B

    .line 383
    .line 384
    fill-array-data v2, :array_2a6

    .line 385
    .line 386
    .line 387
    new-array v4, v8, [B

    .line 388
    .line 389
    fill-array-data v4, :array_2f8

    .line 390
    .line 391
    .line 392
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v0, v2, v10, v15}, Ls1/v;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    const/16 v4, 0xc

    .line 401
    .line 402
    invoke-virtual {v0, v4}, Ls1/v;->v(I)I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    invoke-virtual {v2, v14, v4, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 410
    .line 411
    .line 412
    new-instance v2, Lb1/m;

    .line 413
    .line 414
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    sget-object v5, Ls1/s;->a:Ljava/lang/String;

    .line 423
    .line 424
    new-instance v5, Ljava/io/File;

    .line 425
    .line 426
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    sget-object v6, Ls1/s;->a:Ljava/lang/String;

    .line 431
    .line 432
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    sget-object v4, Ls1/v;->g:Ljava/lang/String;

    .line 436
    .line 437
    const-string v6, ""

    .line 438
    .line 439
    invoke-direct {v2, v3, v6, v5, v4}, Lb1/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iput-object v2, v0, Ls1/v;->d:Lb1/m;

    .line 443
    .line 444
    invoke-virtual {v0}, Ls1/v;->w()V

    .line 445
    .line 446
    .line 447
    return-object v1

    .line 448
    nop

    .line 449
    :array_1c0
    .array-data 1
        -0x31t
        -0x40t
        -0x7et
        0x31t
        -0x1bt
        -0x3t
        0x19t
        -0x48t
        -0x31t
        -0x3et
        -0x7et
        0xet
        -0x1bt
        -0xat
        0x19t
        -0x7bt
        -0x31t
        -0x3at
        -0x7et
        0x0t
        0x15t
        0x29t
        -0x76t
        0x4ct
        0x3ft
        0x16t
        0x1dt
        -0x28t
        0x70t
    .end array-data

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    nop

    .line 469
    :array_1d4
    .array-data 1
        0x1ft
        0x5et
        0x52t
        -0x6bt
        0x35t
        0x63t
        -0x37t
        0x18t
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_1dc
    .array-data 1
        0xct
        -0x49t
        -0xdt
        -0x20t
        0x67t
        0x55t
        -0x37t
        0x3bt
        -0x4t
        -0x3bt
        -0x68t
        -0x7bt
        0x7t
        0x38t
        -0x65t
        0x60t
        0x61t
        -0x3ct
        -0x5ct
        -0x7bt
        0x2t
        0x38t
        -0x68t
        0x60t
        0x6ct
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    nop

    .line 495
    :array_1ee
    .array-data 1
        -0x24t
        0x15t
        0x23t
        0x55t
        -0x49t
        -0x17t
        0x18t
        -0x50t
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    :array_1f6
    .array-data 1
        -0x2dt
        0x54t
        0x4bt
        0x2bt
        -0x4at
        0x11t
        0x17t
        -0x63t
        -0x2et
        0x46t
        0x4at
        0x18t
        -0x49t
        0x22t
        0x17t
        -0x63t
        0x23t
        0x17t
        0x19t
        0x71t
        -0x19t
        0x71t
        0x45t
        -0x8t
        -0x4dt
        0x16t
        0x27t
        0x70t
        -0x28t
        0x70t
        0x75t
        -0x8t
        -0x48t
        0x16t
        0x2ft
        0x70t
        -0x25t
        0x70t
        0x7at
        -0x7t
        -0x80t
        0x17t
        0x14t
        -0x80t
        -0x49t
        0x22t
        0x17t
        -0x63t
        -0x2dt
        0x7at
        0x4bt
        0x23t
        0x46t
        0x70t
        0x7ft
        -0x8t
        -0x48t
        0x16t
        0x22t
        -0x80t
        -0x4at
        0x14t
        0x17t
        -0x6at
        -0x2dt
        0x77t
        0x4at
        0x10t
        -0x4at
        0x12t
        0x16t
        -0x5ct
        -0x2et
        0x44t
        0x4at
        0x15t
        0x46t
        0x70t
        0x7at
        -0x8t
        -0x43t
        0x16t
        0x28t
        0x71t
        -0x1bt
        0x71t
        0x49t
        0x8t
        -0x2dt
        0x7et
        0x4at
        0x17t
        0x46t
        0x70t
        0x7dt
        -0x8t
        -0x4dt
        0x17t
        0x18t
        0x70t
        -0x2at
        0x70t
        0x7ct
        -0x8t
        -0x43t
        0x16t
        0x29t
        0x70t
        -0x2at
        -0x72t
        -0x19t
        -0x8t
        -0x65t
        0x16t
        0x2dt
        0x70t
        -0x26t
        0x70t
        0x72t
        -0x8t
        -0x42t
        0x16t
        0x2ft
        0x70t
        -0x25t
        0x70t
        0x7ft
        -0x8t
        -0x4at
        -0x1at
        0x4at
        0x1ft
        -0x49t
        0x20t
        0x17t
        -0x70t
        -0x2dt
        0x7at
        0x4at
        0x15t
        -0x4at
        0x1dt
        0x16t
        -0x59t
        -0x2dt
        0x73t
        0x4bt
        0x22t
        -0x49t
        0x21t
        0x16t
        -0x59t
        0x23t
        0x17t
        0x1bt
        0x71t
        -0x1at
        0x70t
        0x77t
        -0x8t
        -0x4ct
        0x17t
        0x19t
        -0x72t
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
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
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
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
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
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
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
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
    :array_24c
    .array-data 1
        0x3t
        -0x3at
        -0x66t
        -0x60t
        0x66t
        -0x60t
        -0x39t
        0x28t
    .end array-data

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_254
    .array-data 1
        -0x67t
        0x1bt
        0x58t
        -0x79t
        0x64t
        -0x80t
        0x30t
        -0x76t
        -0x67t
        0x1dt
        0x58t
        -0x7ft
        0x64t
        -0x4dt
        0x30t
        -0x4at
        0x69t
        0x5ft
        0x2at
        -0x37t
        0x21t
        -0x3ft
        0x7ct
        -0x36t
        -0x16t
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
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
    nop

    .line 615
    :array_266
    .array-data 1
        0x49t
        -0x71t
        -0x78t
        0x19t
        -0x4ct
        0x11t
        -0x20t
        0x1at
    .end array-data

    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :array_26e
    .array-data 1
        0x5ct
        0x72t
        -0x17t
        0x1bt
        0x6bt
        0x14t
        0x18t
        -0x75t
        0x5dt
        0x67t
        -0x17t
        0x1bt
        0x6at
        0x22t
        -0x17t
        -0x25t
        0x36t
        0x3ct
        -0x78t
        0x48t
        0x39t
        0x7et
        0x79t
        -0x25t
        0x37t
        0x3ct
        -0x7at
        0x49t
        0x8t
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    nop

    .line 643
    :array_282
    .array-data 1
        -0x74t
        -0x14t
        0x38t
        -0x67t
        -0x45t
        -0x52t
        -0x37t
        0xbt
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_28a
    .array-data 1
        0x66t
        -0x6bt
        0x64t
        0x72t
        -0x5ft
        -0x1ct
        0x1at
        -0x49t
        0x66t
        -0x75t
        0x65t
        0x4dt
        -0x60t
        -0x2ct
        0x1at
        -0x41t
        0x67t
        -0x4ct
        0x64t
        0x7ft
        0x50t
        -0x4at
        0x72t
        -0x29t
        0x1t
        0x16t
        -0x11t
        -0x46t
        0x20t
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    nop

    .line 671
    :array_29e
    .array-data 1
        -0x4at
        0x36t
        -0x4bt
        -0xdt
        0x70t
        0x66t
        -0x36t
        0x7t
    .end array-data

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    :array_2a6
    .array-data 1
        0x16t
        -0x71t
        -0x58t
        -0x2at
        -0x64t
        0x4ft
        -0x5at
        0x20t
        0x44t
        -0x33t
        0x38t
        -0x2at
        -0x63t
        0x4ft
        -0x58t
        0x21t
        0x75t
        -0x33t
        0x3dt
        0x26t
        -0xat
        0x22t
        -0x3at
        0x41t
        0x16t
        -0x55t
        0x58t
        -0x46t
        -0xat
        0x27t
        -0x39t
        0x73t
        0x16t
        -0x58t
        -0x58t
        -0x3ct
        -0x73t
        0x4ft
        -0x4bt
        0x20t
        0x47t
        -0x34t
        0xat
        -0x2at
        -0x6at
        0x4ft
        -0x55t
        0x21t
        0x78t
        -0x33t
        0x3at
        -0x2at
        -0x62t
        0x4et
        -0x6ct
        0x20t
        0x4at
        -0x21t
        0x33t
        0x26t
        -0x3ct
        0x1ft
        -0x7et
        -0x2ft
        0x16t
        -0x56t
        0x58t
        -0x4at
        -0xat
        0x2ct
        -0x39t
        0x71t
        0x17t
        -0x62t
        0x58t
        -0x50t
        -0xat
        0x2at
        -0x3at
        0x4ct
        0x16t
        -0x60t
        0x58t
        -0x4at
        -0x9t
        0x10t
        0x36t
        0x20t
        0x44t
        -0x33t
        0x3dt
        -0x2at
        -0x66t
        0x4ft
        -0x5at
        -0x2ft
        0x17t
        -0x64t
        0x59t
        -0x7ct
        -0xat
        0x2ft
        -0x3at
        0x4ct
        0x16t
        -0x58t
        0x59t
        -0x7ct
        0x6t
        0x4ft
        -0x5at
        0x21t
        0x7ct
        -0x34t
        0xat
        -0x2at
        -0x62t
        0x4ft
        -0x5ct
        0x21t
        0x7bt
        -0x33t
        0x36t
        -0x2at
        -0x61t
        -0x41t
        -0x3at
        0x41t
        0x16t
        -0x51t
        0x59t
        -0x7ct
        -0xat
        0x21t
        -0x3at
        0x4dt
        0x16t
        -0x53t
        0x59t
        -0x7ct
        -0xat
        0x27t
        -0x39t
        0x76t
        0x16t
        -0x58t
        0x59t
        -0x79t
        -0xat
        0x25t
        -0x3at
        0x49t
        -0x18t
    .end array-data

    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    nop

    .line 761
    :array_2f8
    .array-data 1
        -0x3at
        0x1dt
        -0x78t
        0x6t
        0x26t
        -0x61t
        0x16t
        -0xft
    .end array-data
.end method

.method public final onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls1/v;->c:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_e

    .line 7
    .line 8
    iget-object v0, p0, Ls1/v;->d:Lb1/m;

    .line 9
    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    invoke-virtual {p0}, Ls1/v;->w()V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method

.method public final t(Ljava/lang/String;Z)Landroid/widget/Button;
    .registers 7

    .line 1
    new-instance v0, Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/high16 p1, 0x41700000    # 15.0f

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16
    .line 17
    .line 18
    const p1, -0xb0806

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 32
    .line 33
    .line 34
    const/16 v1, 0xe

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ls1/v;->v(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0, v1}, Ls1/v;->v(I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v0, v2, p1, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    .line 46
    .line 47
    const p1, -0xc8582b

    .line 48
    .line 49
    .line 50
    if-eqz p2, :cond_35

    .line 51
    .line 52
    move v2, p1

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    const v2, -0xe7ded4

    .line 55
    .line 56
    .line 57
    :goto_38
    if-eqz p2, :cond_3b

    .line 58
    .line 59
    goto :goto_3e

    .line 60
    :cond_3b
    const p1, -0xcbbdae

    .line 61
    .line 62
    .line 63
    :goto_3e
    invoke-virtual {p0, v2, p1, v1}, Ls1/v;->y(III)Landroid/graphics/drawable/GradientDrawable;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    return-object v0
.end method

.method public final text(Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 6

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    int-to-float p1, p2

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final v(I)I
    .registers 3

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

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

.method public final w()V
    .registers 10

    .line 1
    iget-object v0, p0, Ls1/v;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ls1/v;->g:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Ls1/s;->a:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v3, Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    sget-object v5, Ls1/s;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lm0/b2;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_29

    .line 38
    .line 39
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 40
    .line 41
    goto :goto_59

    .line 42
    :cond_29
    new-instance v4, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    array-length v5, v3

    .line 48
    const/4 v6, 0x0

    .line 49
    :goto_30
    if-ge v6, v5, :cond_53

    .line 50
    .line 51
    aget-object v7, v3, v6

    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    sget-object v8, Ls1/s;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_41

    .line 64
    .line 65
    goto :goto_50

    .line 66
    :cond_41
    :try_start_41
    invoke-static {v2, v7}, Ls1/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    if-eqz v8, :cond_50

    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v8, :cond_50

    .line 77
    .line 78
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_50} :catch_50

    .line 79
    .line 80
    .line 81
    :catch_50
    :cond_50
    :goto_50
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_30

    .line 84
    :cond_53
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 85
    .line 86
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 87
    .line 88
    .line 89
    move-object v2, v4

    .line 90
    :goto_59
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :cond_5d
    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_7f

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v3, :cond_5d

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_5d

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_5d

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_5d

    .line 128
    :cond_7f
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    sget-object v3, Ls1/v;->f:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v2, v3, v1}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iput-object v2, p0, Ls1/v;->e:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_9c

    .line 145
    .line 146
    iput-object v1, p0, Ls1/v;->e:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v1, p0, Ls1/v;->e:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v3, v1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_9c
    invoke-virtual {p0}, Ls1/v;->x()V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final x()V
    .registers 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls1/v;->c:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Ls1/v;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_f
    if-ge v4, v2, :cond_20a

    .line 17
    .line 18
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    check-cast v5, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v6, v0, Ls1/v;->c:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    iget-object v7, v0, Ls1/v;->e:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    sget-object v8, Ls1/v;->g:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    new-instance v9, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    .line 51
    .line 52
    const/16 v10, 0x10

    .line 53
    .line 54
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v10}, Ls1/v;->v(I)I

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    const/16 v12, 0xc

    .line 62
    .line 63
    invoke-virtual {v0, v12}, Ls1/v;->v(I)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    const/16 v14, 0xa

    .line 68
    .line 69
    invoke-virtual {v0, v14}, Ls1/v;->v(I)I

    .line 70
    .line 71
    .line 72
    move-result v15

    .line 73
    invoke-virtual {v0, v12}, Ls1/v;->v(I)I

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    invoke-virtual {v9, v11, v13, v15, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    .line 79
    .line 80
    const/16 v11, 0x4c

    .line 81
    .line 82
    invoke-virtual {v0, v11}, Ls1/v;->v(I)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    invoke-virtual {v9, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 87
    .line 88
    .line 89
    if-eqz v7, :cond_5e

    .line 90
    .line 91
    const v11, -0xe4cfc0

    .line 92
    .line 93
    .line 94
    goto :goto_61

    .line 95
    :cond_5e
    const v11, -0xe7ded4

    .line 96
    .line 97
    .line 98
    :goto_61
    if-eqz v7, :cond_67

    .line 99
    .line 100
    const v14, -0xc8582b

    .line 101
    .line 102
    .line 103
    goto :goto_6a

    .line 104
    :cond_67
    const v14, -0xd9ccbe

    .line 105
    .line 106
    .line 107
    :goto_6a
    invoke-virtual {v0, v11, v14, v10}, Ls1/v;->y(III)Landroid/graphics/drawable/GradientDrawable;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-virtual {v9, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    .line 113
    .line 114
    const/4 v11, 0x1

    .line 115
    invoke-virtual {v9, v11}, Landroid/view/View;->setClickable(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 119
    .line 120
    .line 121
    const/16 v14, 0x18

    .line 122
    .line 123
    const/16 v15, 0x8

    .line 124
    .line 125
    if-eqz v7, :cond_8d

    .line 126
    .line 127
    new-array v13, v14, [B

    .line 128
    .line 129
    fill-array-data v13, :array_20c

    .line 130
    .line 131
    .line 132
    new-array v12, v15, [B

    .line 133
    .line 134
    fill-array-data v12, :array_21c

    .line 135
    .line 136
    .line 137
    invoke-static {v13, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    goto :goto_9b

    .line 142
    :cond_8d
    new-array v12, v14, [B

    .line 143
    .line 144
    fill-array-data v12, :array_224

    .line 145
    .line 146
    .line 147
    new-array v13, v15, [B

    .line 148
    .line 149
    fill-array-data v13, :array_234

    .line 150
    .line 151
    .line 152
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    :goto_9b
    invoke-static {v5}, Ls1/v;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-virtual {v9, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    new-instance v12, Ls1/t;

    .line 168
    .line 169
    invoke-direct {v12, v0, v5, v3}, Ls1/t;-><init>(Ls1/v;Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    if-eqz v7, :cond_c0

    .line 176
    .line 177
    const/4 v12, 0x3

    .line 178
    new-array v12, v12, [B

    .line 179
    .line 180
    fill-array-data v12, :array_23c

    .line 181
    .line 182
    .line 183
    new-array v13, v15, [B

    .line 184
    .line 185
    fill-array-data v13, :array_242

    .line 186
    .line 187
    .line 188
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    goto :goto_cf

    .line 193
    :cond_c0
    const/4 v12, 0x3

    .line 194
    new-array v12, v12, [B

    .line 195
    .line 196
    fill-array-data v12, :array_24a

    .line 197
    .line 198
    .line 199
    new-array v13, v15, [B

    .line 200
    .line 201
    fill-array-data v13, :array_250

    .line 202
    .line 203
    .line 204
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    :goto_cf
    if-eqz v7, :cond_d5

    .line 209
    .line 210
    const v13, -0xc8582b

    .line 211
    .line 212
    .line 213
    goto :goto_d8

    .line 214
    :cond_d5
    const v13, -0x645546

    .line 215
    .line 216
    .line 217
    :goto_d8
    invoke-virtual {v0, v12, v14, v13}, Ls1/v;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    const/16 v13, 0x11

    .line 222
    .line 223
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 224
    .line 225
    .line 226
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 227
    .line 228
    const/16 v3, 0x2a

    .line 229
    .line 230
    invoke-virtual {v0, v3}, Ls1/v;->v(I)I

    .line 231
    .line 232
    .line 233
    move-result v15

    .line 234
    const/16 v3, 0x30

    .line 235
    .line 236
    invoke-virtual {v0, v3}, Ls1/v;->v(I)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-direct {v14, v15, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .line 245
    .line 246
    new-instance v3, Landroid/widget/LinearLayout;

    .line 247
    .line 248
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    invoke-direct {v3, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 259
    .line 260
    .line 261
    invoke-static {v5}, Ls1/v;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    const v11, -0xb0806

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v10, v13, v11}, Ls1/v;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 273
    .line 274
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 278
    .line 279
    .line 280
    if-eqz v7, :cond_12c

    .line 281
    .line 282
    const/16 v10, 0x25

    .line 283
    .line 284
    new-array v10, v10, [B

    .line 285
    .line 286
    fill-array-data v10, :array_258

    .line 287
    .line 288
    .line 289
    const/16 v11, 0x8

    .line 290
    .line 291
    new-array v12, v11, [B

    .line 292
    .line 293
    fill-array-data v12, :array_270

    .line 294
    .line 295
    .line 296
    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    goto :goto_151

    .line 301
    :cond_12c
    const/16 v11, 0x8

    .line 302
    .line 303
    if-eqz v8, :cond_141

    .line 304
    .line 305
    const/16 v10, 0x1d

    .line 306
    .line 307
    new-array v10, v10, [B

    .line 308
    .line 309
    fill-array-data v10, :array_278

    .line 310
    .line 311
    .line 312
    new-array v12, v11, [B

    .line 313
    .line 314
    fill-array-data v12, :array_28c

    .line 315
    .line 316
    .line 317
    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    goto :goto_151

    .line 322
    :cond_141
    const/16 v10, 0x2d

    .line 323
    .line 324
    new-array v10, v10, [B

    .line 325
    .line 326
    fill-array-data v10, :array_294

    .line 327
    .line 328
    .line 329
    new-array v12, v11, [B

    .line 330
    .line 331
    fill-array-data v12, :array_2b0

    .line 332
    .line 333
    .line 334
    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    :goto_151
    if-eqz v7, :cond_157

    .line 339
    .line 340
    const v13, -0xc8582b

    .line 341
    .line 342
    .line 343
    goto :goto_15a

    .line 344
    :cond_157
    const v13, -0x645546

    .line 345
    .line 346
    .line 347
    :goto_15a
    const/16 v7, 0xd

    .line 348
    .line 349
    invoke-virtual {v0, v10, v7, v13}, Ls1/v;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    const/4 v10, 0x3

    .line 354
    invoke-virtual {v0, v10}, Ls1/v;->v(I)I

    .line 355
    .line 356
    .line 357
    move-result v10

    .line 358
    const/4 v11, 0x0

    .line 359
    invoke-virtual {v7, v11, v10, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 363
    .line 364
    .line 365
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 366
    .line 367
    const/high16 v10, 0x3f800000    # 1.0f

    .line 368
    .line 369
    const/4 v12, -0x2

    .line 370
    invoke-direct {v7, v11, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v9, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    .line 375
    .line 376
    if-nez v8, :cond_1f6

    .line 377
    .line 378
    const/16 v3, 0xe

    .line 379
    .line 380
    new-array v3, v3, [B

    .line 381
    .line 382
    fill-array-data v3, :array_2b8

    .line 383
    .line 384
    .line 385
    const/16 v7, 0x8

    .line 386
    .line 387
    new-array v8, v7, [B

    .line 388
    .line 389
    fill-array-data v8, :array_2c4

    .line 390
    .line 391
    .line 392
    invoke-static {v3, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {v0, v3, v11}, Ls1/v;->t(Ljava/lang/String;Z)Landroid/widget/Button;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    const/high16 v7, 0x41500000    # 13.0f

    .line 401
    .line 402
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 403
    .line 404
    .line 405
    const/16 v7, -0x6465

    .line 406
    .line 407
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    .line 409
    .line 410
    const/16 v7, 0xc

    .line 411
    .line 412
    invoke-virtual {v0, v7}, Ls1/v;->v(I)I

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    invoke-virtual {v0, v7}, Ls1/v;->v(I)I

    .line 417
    .line 418
    .line 419
    move-result v10

    .line 420
    invoke-virtual {v3, v8, v11, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 421
    .line 422
    .line 423
    const v8, -0xcaded9

    .line 424
    .line 425
    .line 426
    const v10, -0x8ec4bb

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v8, v10, v7}, Ls1/v;->y(III)Landroid/graphics/drawable/GradientDrawable;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 434
    .line 435
    .line 436
    const/16 v7, 0x18

    .line 437
    .line 438
    new-array v7, v7, [B

    .line 439
    .line 440
    fill-array-data v7, :array_2cc

    .line 441
    .line 442
    .line 443
    const/16 v8, 0x8

    .line 444
    .line 445
    new-array v10, v8, [B

    .line 446
    .line 447
    fill-array-data v10, :array_2dc

    .line 448
    .line 449
    .line 450
    invoke-static {v7, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    invoke-static {v5}, Ls1/v;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    invoke-virtual {v3, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 463
    .line 464
    .line 465
    new-instance v7, Ls1/t;

    .line 466
    .line 467
    const/4 v8, 0x1

    .line 468
    invoke-direct {v7, v0, v5, v8}, Ls1/t;-><init>(Ls1/v;Ljava/lang/String;I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    .line 473
    .line 474
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 475
    .line 476
    const/16 v7, 0x5c

    .line 477
    .line 478
    invoke-virtual {v0, v7}, Ls1/v;->v(I)I

    .line 479
    .line 480
    .line 481
    move-result v7

    .line 482
    const/16 v8, 0x2a

    .line 483
    .line 484
    invoke-virtual {v0, v8}, Ls1/v;->v(I)I

    .line 485
    .line 486
    .line 487
    move-result v8

    .line 488
    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 489
    .line 490
    .line 491
    const/16 v7, 0x8

    .line 492
    .line 493
    invoke-virtual {v0, v7}, Ls1/v;->v(I)I

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v9, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    .line 502
    .line 503
    :cond_1f6
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 504
    .line 505
    const/4 v5, -0x1

    .line 506
    invoke-direct {v3, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 507
    .line 508
    .line 509
    const/16 v5, 0xa

    .line 510
    .line 511
    invoke-virtual {v0, v5}, Ls1/v;->v(I)I

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 516
    .line 517
    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    .line 519
    .line 520
    move v3, v11

    .line 521
    goto/16 :goto_f

    .line 522
    .line 523
    :cond_20a
    return-void

    .line 524
    nop

    .line 525
    :array_20c
    .array-data 1
        -0x9t
        0x74t
        -0xct
        -0x5dt
        0x23t
        0x50t
        0x2ft
        0x45t
        -0x9t
        0x56t
        -0xbt
        -0x6bt
        0x23t
        0x51t
        -0x22t
        0x14t
        -0x5bt
        0x36t
        -0x70t
        -0x8t
        0x4ft
        0x31t
        0x4et
        -0x1bt
    .end array-data

    .line 526
    .line 527
    .line 528
    .line 529
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
    :array_21c
    .array-data 1
        0x27t
        -0x1at
        0x25t
        0x28t
        -0xdt
        -0x1ft
        -0x2t
        -0x3bt
    .end array-data

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    :array_224
    .array-data 1
        0x17t
        0x16t
        -0x2at
        0x4bt
        -0x62t
        -0x2et
        -0x29t
        0x6at
        0x17t
        0x34t
        -0x2at
        0x42t
        -0x61t
        -0x11t
        0x26t
        0x3bt
        0x45t
        0x54t
        -0x4et
        0x10t
        -0xet
        -0x4et
        -0x7bt
        -0x36t
    .end array-data

    .line 550
    .line 551
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
    :array_234
    .array-data 1
        -0x39t
        -0x7ct
        0x7t
        -0x40t
        0x4et
        0x63t
        0x6t
        -0x16t
    .end array-data

    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :array_23c
    .array-data 1
        -0x46t
        0x7et
        -0x3at
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_242
    .array-data 1
        0x58t
        -0x1et
        0x55t
        0x37t
        -0x7et
        0x22t
        0x69t
        -0x23t
    .end array-data

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    :array_24a
    .array-data 1
        -0x23t
        0x66t
        0x17t
    .end array-data

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :array_250
    .array-data 1
        0x3ft
        -0xft
        -0x64t
        -0x7bt
        -0x34t
        0x25t
        -0x5t
        0x4ct
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :array_258
    .array-data 1
        0x5ct
        0x27t
        0x13t
        0x39t
        -0x51t
        -0x18t
        -0x9t
        0x12t
        0x5ct
        0x4t
        0x13t
        0x34t
        -0x51t
        -0x20t
        -0xat
        0x2ft
        0x5ct
        0xat
        0x13t
        0x3at
        -0x52t
        -0x2at
        -0xat
        0x23t
        -0x54t
        0x6et
        0x43t
        0x68t
        -0x36t
        -0x79t
        -0x62t
        0x7dt
        0xbt
        0x6ft
        0x72t
        0x69t
        -0x2t
    .end array-data

    .line 602
    .line 603
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
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    nop

    .line 625
    :array_270
    .array-data 1
        -0x74t
        -0x41t
        -0x3et
        -0x48t
        0x7ft
        0x57t
        0x27t
        -0x54t
    .end array-data

    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :array_278
    .array-data 1
        -0x2et
        0x65t
        -0x4at
        0xet
        0x34t
        0x6ct
        0x39t
        -0x17t
        -0x2et
        0x49t
        -0x49t
        0x3at
        0x35t
        0x53t
        0x38t
        -0x2ct
        -0x2et
        0x47t
        -0x4at
        0x0t
        -0x3bt
        0x3ft
        0x6at
        -0x47t
        -0x49t
        0x27t
        -0x25t
        0x5ft
        0x55t
    .end array-data

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    nop

    .line 653
    :array_28c
    .array-data 1
        0x2t
        -0x9t
        0x67t
        -0x71t
        -0x1bt
        -0x12t
        -0x18t
        0x69t
    .end array-data

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    :array_294
    .array-data 1
        -0x62t
        -0x5et
        0x1et
        -0x54t
        -0xdt
        -0x64t
        0x38t
        0x3ct
        -0x62t
        -0x79t
        0x1ft
        -0x62t
        -0xdt
        -0x61t
        -0x3ct
        -0x60t
        -0x61t
        -0x48t
        0x1ft
        -0x62t
        -0xdt
        -0x6ct
        0x38t
        0x31t
        -0x61t
        -0x4ct
        -0x12t
        -0x34t
        -0x64t
        -0x5t
        0x68t
        0x50t
        -0xat
        -0x11t
        0x72t
        -0x34t
        -0x6at
        -0x6t
        0x55t
        0x50t
        -0xat
        -0x12t
        0x4ct
        -0x33t
        -0x51t
    .end array-data

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    nop

    .line 689
    :array_2b0
    .array-data 1
        0x4et
        0x3ft
        -0x32t
        0x1ct
        0x23t
        0x2at
        -0x18t
        -0x80t
    .end array-data

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    :array_2b8
    .array-data 1
        0x24t
        0xet
        0x5dt
        0x32t
        0x1dt
        -0x1at
        0x8t
        -0x80t
        0x24t
        0x15t
        0x5ct
        0x4t
        0x1ct
        -0x26t
    .end array-data

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    nop

    .line 709
    :array_2c4
    .array-data 1
        -0xct
        -0x53t
        -0x73t
        -0x7at
        -0x33t
        0x56t
        -0x28t
        0x3bt
    .end array-data

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    :array_2cc
    .array-data 1
        -0x29t
        0x68t
        0x31t
        -0x34t
        -0x5at
        -0x57t
        -0x60t
        0x73t
        -0x29t
        0x73t
        0x30t
        -0x6t
        -0x59t
        -0x6bt
        0x50t
        0x19t
        -0x7bt
        0x1bt
        0x54t
        -0x58t
        -0x36t
        -0x38t
        -0xdt
        -0x18t
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :array_2dc
    .array-data 1
        0x7t
        -0x35t
        -0x1ft
        0x78t
        0x76t
        0x19t
        0x70t
        -0x38t
    .end array-data
.end method

.method public final y(III)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p3}, Ls1/v;->v(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    int-to-float p1, p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Ls1/v;->v(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
