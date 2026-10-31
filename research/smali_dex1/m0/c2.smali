.class public Lm0/c2;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;


# instance fields
.field public b:Landroid/widget/Spinner;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/ImageButton;

.field public e:Landroid/widget/Button;

.field public f:Ljava/io/File;

.field public final g:Ljava/util/ArrayList;

.field public h:Landroid/widget/ArrayAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_38

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_46

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lm0/c2;->i:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x11

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_4e

    .line 26
    .line 27
    .line 28
    new-array v2, v1, [B

    .line 29
    .line 30
    fill-array-data v2, :array_5c

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lm0/c2;->j:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v0, 0x7

    .line 40
    new-array v0, v0, [B

    .line 41
    .line 42
    fill-array-data v0, :array_64

    .line 43
    .line 44
    .line 45
    new-array v1, v1, [B

    .line 46
    .line 47
    fill-array-data v1, :array_6c

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lm0/c2;->k:Ljava/lang/String;

    .line 55
    .line 56
    return-void

    .line 57
    :array_38
    .array-data 1
        -0x2ct
        0x7ft
        0x45t
        -0x52t
        0x0t
        0x5ft
        -0x38t
        0x14t
        -0x3at
        0x6et
        0x78t
        -0x7et
        0x12t
        0x5at
        -0x37t
        0x10t
        -0x29t
        0x7ft
        0x43t
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
    .line 68
    .line 69
    .line 70
    .line 71
    :array_46
    .array-data 1
        -0x5dt
        0x1at
        0x27t
        -0xft
        0x77t
        0x36t
        -0x54t
        0x73t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_4e
    .array-data 1
        -0x7bt
        -0x42t
        0x1dt
        -0x13t
        -0x6at
        0x35t
        -0x32t
        0x62t
        -0x5et
        -0x5et
        0x29t
        -0x4t
        -0x4at
        0xat
        -0x23t
        0x7ft
        -0x54t
    .end array-data

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
    nop

    .line 93
    :array_5c
    .array-data 1
        -0x38t
        -0x39t
        0x4at
        -0x78t
        -0xct
        0x65t
        -0x44t
        0xdt
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_64
    .array-data 1
        0x25t
        0x9t
        0x42t
        0x6bt
        0x5t
        0x6ft
        -0x27t
    .end array-data

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
        0x41t
        0x6ct
        0x24t
        0xat
        0x70t
        0x3t
        -0x53t
        -0x29t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

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
    iput-object v0, p0, Lm0/c2;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static t(Ljava/io/File;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_18

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_18

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-ge v2, v1, :cond_18

    .line 16
    .line 17
    aget-object v3, v0, v2

    .line 18
    .line 19
    invoke-static {v3}, Lm0/c2;->t(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_e

    .line 25
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x65

    .line 5
    .line 6
    if-ne p1, v0, :cond_96

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_96

    .line 10
    .line 11
    if-eqz p3, :cond_96

    .line 12
    .line 13
    const/16 p1, 0xd

    .line 14
    .line 15
    new-array p1, p1, [B

    .line 16
    .line 17
    fill-array-data p1, :array_98

    .line 18
    .line 19
    .line 20
    const/16 p2, 0x8

    .line 21
    .line 22
    new-array v0, p2, [B

    .line 23
    .line 24
    fill-array-data v0, :array_a4

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_96

    .line 36
    .line 37
    new-instance p3, Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :try_start_29
    iget-object p1, p0, Lm0/c2;->f:Ljava/io/File;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {p3, p1, v0}, Lb1/u;->r(Ljava/io/File;Ljava/io/File;Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    sget-object v0, Lm0/c2;->i:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p3, v0, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lm0/c2;->v()V

    .line 59
    .line 60
    .line 61
    iget-object p3, p0, Lm0/c2;->g:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-ltz p1, :cond_4c

    .line 68
    .line 69
    iget-object p3, p0, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 70
    .line 71
    invoke-virtual {p3, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_4c

    .line 75
    :catch_4a
    move-exception p1

    .line 76
    goto :goto_68

    .line 77
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/16 p3, 0x21

    .line 86
    .line 87
    new-array p3, p3, [B

    .line 88
    .line 89
    fill-array-data p3, :array_ac

    .line 90
    .line 91
    .line 92
    new-array v0, p2, [B

    .line 93
    .line 94
    fill-array-data v0, :array_c2

    .line 95
    .line 96
    .line 97
    invoke-static {p3, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-static {p1, p3}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_67} :catch_4a

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const/16 v1, 0x12

    .line 119
    .line 120
    new-array v1, v1, [B

    .line 121
    .line 122
    fill-array-data v1, :array_ca

    .line 123
    .line 124
    .line 125
    new-array p2, p2, [B

    .line 126
    .line 127
    fill-array-data p2, :array_d8

    .line 128
    .line 129
    .line 130
    invoke-static {v1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p3, p1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :cond_96
    return-void

    .line 152
    nop

    .line 153
    :array_98
    .array-data 1
        0x60t
        -0x75t
        0x13t
        0x37t
        0x3ft
        -0x13t
        -0x6ct
        -0x34t
        0x4ct
        -0x78t
        0x16t
        0x3et
        0x39t
    .end array-data

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
    .line 164
    nop

    .line 165
    :array_a4
    .array-data 1
        0x13t
        -0x12t
        0x7ft
        0x52t
        0x5ct
        -0x67t
        -0xft
        -0x58t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_ac
    .array-data 1
        -0x6et
        0x5t
        0x75t
        0x1at
        -0x74t
        -0x21t
        0x33t
        -0x3at
        -0x6et
        0x22t
        0x74t
        0x20t
        0x7ct
        -0x46t
        0x60t
        -0x5ft
        -0x3dt
        0x46t
        0x27t
        0x72t
        -0x14t
        -0x45t
        0x5et
        -0x60t
        -0x4t
        0x47t
        0x17t
        0x72t
        -0x19t
        -0x45t
        0x56t
        -0x60t
        -0x1t
    .end array-data

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
    nop

    .line 195
    :array_c2
    .array-data 1
        0x42t
        -0x69t
        -0x5bt
        -0x5et
        0x5ct
        0x6bt
        -0x1dt
        0x70t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_ca
    .array-data 1
        -0x67t
        -0x6dt
        0xbt
        -0x1ct
        0x2dt
        -0x73t
        -0x40t
        0x10t
        -0x67t
        -0x49t
        0xat
        -0x24t
        -0x23t
        0x6ft
        0x59t
        -0xft
        0x73t
        0x2dt
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    nop

    .line 217
    :array_d8
    .array-data 1
        0x49t
        0xdt
        -0x26t
        0x6ct
        -0x3t
        0x35t
        0x10t
        -0x5ft
    .end array-data
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    new-instance p2, Landroid/widget/ScrollView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-direct {p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 p3, 0x1

    .line 11
    invoke-virtual {p2, p3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 12
    .line 13
    .line 14
    const p3, 0x7f0c0051

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-object p2
.end method

.method public final onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 5
    .line 6
    if-eqz v0, :cond_e

    .line 7
    .line 8
    iget-object v0, p0, Lm0/c2;->f:Ljava/io/File;

    .line 9
    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    invoke-virtual {p0}, Lm0/c2;->v()V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p2, 0x7f0904ec

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/widget/Switch;

    .line 12
    .line 13
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0x1a

    .line 18
    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    fill-array-data v1, :array_10e

    .line 22
    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    new-array v3, v2, [B

    .line 27
    .line 28
    fill-array-data v3, :array_120

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lm0/z1;

    .line 44
    .line 45
    invoke-direct {v0, v3}, Lm0/z1;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    .line 50
    .line 51
    const p2, 0x7f090491

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Landroid/widget/Spinner;

    .line 59
    .line 60
    iput-object p2, p0, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 61
    .line 62
    const p2, 0x7f090112

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Landroid/widget/Button;

    .line 70
    .line 71
    iput-object p2, p0, Lm0/c2;->c:Landroid/widget/Button;

    .line 72
    .line 73
    const p2, 0x7f090109

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Landroid/widget/ImageButton;

    .line 81
    .line 82
    iput-object p2, p0, Lm0/c2;->d:Landroid/widget/ImageButton;

    .line 83
    .line 84
    new-instance p2, Landroid/widget/Button;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    const v0, 0x7f130127

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 111
    .line 112
    const/high16 v1, 0x42400000    # 48.0f

    .line 113
    .line 114
    mul-float/2addr v0, v1

    .line 115
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lm0/c2;->c:Landroid/widget/Button;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    instance-of v0, v0, Landroid/view/View;

    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    if-nez v0, :cond_85

    .line 132
    .line 133
    goto :goto_be

    .line 134
    :cond_85
    iget-object v0, p0, Lm0/c2;->c:Landroid/widget/Button;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    instance-of v2, v2, Landroid/widget/LinearLayout;

    .line 147
    .line 148
    if-nez v2, :cond_96

    .line 149
    .line 150
    goto :goto_be

    .line 151
    :cond_96
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Landroid/widget/LinearLayout;

    .line 156
    .line 157
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    .line 159
    const/4 v5, -0x1

    .line 160
    const/4 v6, -0x2

    .line 161
    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 173
    .line 174
    const/high16 v6, 0x41400000    # 12.0f

    .line 175
    .line 176
    mul-float/2addr v5, v6

    .line 177
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 182
    .line 183
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    add-int/2addr v0, v1

    .line 188
    invoke-virtual {v2, p2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    :goto_be
    iput-object p2, p0, Lm0/c2;->e:Landroid/widget/Button;

    .line 192
    .line 193
    new-instance p2, Ljava/io/File;

    .line 194
    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    sget-object v2, Lm0/c2;->j:Ljava/lang/String;

    .line 204
    .line 205
    invoke-direct {p2, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iput-object p2, p0, Lm0/c2;->f:Ljava/io/File;

    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-nez p2, :cond_dc

    .line 215
    .line 216
    iget-object p2, p0, Lm0/c2;->f:Ljava/io/File;

    .line 217
    .line 218
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 219
    .line 220
    .line 221
    :cond_dc
    iget-object p2, p0, Lm0/c2;->c:Landroid/widget/Button;

    .line 222
    .line 223
    new-instance v0, Lm0/a2;

    .line 224
    .line 225
    invoke-direct {v0, p0, v3}, Lm0/a2;-><init>(Lm0/c2;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    iget-object p2, p0, Lm0/c2;->d:Landroid/widget/ImageButton;

    .line 232
    .line 233
    new-instance v0, Lm0/a2;

    .line 234
    .line 235
    invoke-direct {v0, p0, v1}, Lm0/a2;-><init>(Lm0/c2;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    iget-object p2, p0, Lm0/c2;->e:Landroid/widget/Button;

    .line 242
    .line 243
    new-instance v0, Lm0/a2;

    .line 244
    .line 245
    const/4 v1, 0x2

    .line 246
    invoke-direct {v0, p0, v1}, Lm0/a2;-><init>(Lm0/c2;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    const p2, 0x7f090111

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    check-cast p1, Lcom/example/navistart/mainview/DownloadButton;

    .line 260
    .line 261
    new-instance p2, Lm0/a2;

    .line 262
    .line 263
    const/4 v0, 0x3

    .line 264
    invoke-direct {p2, p0, v0}, Lm0/a2;-><init>(Lm0/c2;I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :array_10e
    .array-data 1
        -0x45t
        -0x5et
        0xat
        0x37t
        -0x51t
        0x41t
        0x44t
        0x45t
        -0x66t
        -0x4at
        0x2et
        0x31t
        -0x41t
        0x6at
        0x78t
        0x41t
        -0x64t
        -0x5at
        0x6t
        0x3ct
        -0x54t
        0x70t
        0x74t
        0x63t
        -0x48t
        -0x7ft
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    nop

    .line 289
    :array_120
    .array-data 1
        -0x18t
        -0x2et
        0x6ft
        0x52t
        -0x35t
        0x3t
        0x2bt
        0x24t
    .end array-data
.end method

.method public final u(Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .line 1
    iget-object v0, p0, Lm0/c2;->f:Ljava/io/File;

    .line 2
    .line 3
    if-eqz v0, :cond_8e

    .line 4
    .line 5
    if-eqz p1, :cond_8e

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 16
    .line 17
    goto/16 :goto_8e

    .line 18
    .line 19
    :cond_12
    const/4 v0, 0x1

    .line 20
    new-array v1, v0, [B

    .line 21
    .line 22
    const/16 v2, -0x4a

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-byte v2, v1, v3

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    new-array v4, v2, [B

    .line 30
    .line 31
    fill-array-data v4, :array_90

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_8e

    .line 43
    .line 44
    new-array v0, v0, [B

    .line 45
    .line 46
    const/16 v1, 0x36

    .line 47
    .line 48
    aput-byte v1, v0, v3

    .line 49
    .line 50
    new-array v1, v2, [B

    .line 51
    .line 52
    fill-array-data v1, :array_98

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_41

    .line 64
    .line 65
    goto :goto_8e

    .line 66
    :cond_41
    new-instance v0, Ljava/io/File;

    .line 67
    .line 68
    new-instance v1, Ljava/io/File;

    .line 69
    .line 70
    iget-object v3, p0, Lm0/c2;->f:Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/16 p1, 0xd

    .line 76
    .line 77
    new-array p1, p1, [B

    .line 78
    .line 79
    fill-array-data p1, :array_a0

    .line 80
    .line 81
    .line 82
    new-array v2, v2, [B

    .line 83
    .line 84
    fill-array-data v2, :array_ac

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :try_start_5d
    iget-object p1, p0, Lm0/c2;->f:Ljava/io/File;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_8e

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 136
    .line 137
    .line 138
    move-result p1
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_8a} :catch_8e

    .line 139
    if-nez p1, :cond_8d

    .line 140
    .line 141
    goto :goto_8e

    .line 142
    :cond_8d
    return-object v0

    .line 143
    :catch_8e
    :cond_8e
    :goto_8e
    const/4 p1, 0x0

    .line 144
    return-object p1

    .line 145
    :array_90
    .array-data 1
        -0x67t
        0x41t
        -0x1ct
        0x3dt
        -0x20t
        -0x46t
        -0x2at
        -0x33t
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_98
    .array-data 1
        0x6at
        -0x73t
        -0x11t
        -0x2at
        -0x71t
        -0x3t
        0x50t
        -0x5bt
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_a0
    .array-data 1
        -0x42t
        -0x40t
        -0x14t
        0x26t
        -0x68t
        0x51t
        -0x53t
        0x53t
        -0x1dt
        -0x33t
        -0x14t
        0x3ft
        -0x63t
    .end array-data

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
    nop

    .line 173
    :array_ac
    .array-data 1
        -0x33t
        -0x5bt
        -0x68t
        0x52t
        -0xft
        0x3ft
        -0x36t
        0x20t
    .end array-data
.end method

.method public final v()V
    .registers 11

    .line 1
    iget-object v0, p0, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lm0/c2;->g:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lm0/c2;->k:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lm0/c2;->f:Ljava/io/File;

    .line 18
    .line 19
    new-instance v3, Lm0/b2;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_6b

    .line 29
    .line 30
    array-length v3, v2

    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_1f
    if-ge v4, v3, :cond_6b

    .line 33
    .line 34
    aget-object v5, v2, v4

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_68

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/16 v7, 0x9

    .line 51
    .line 52
    new-array v7, v7, [B

    .line 53
    .line 54
    fill-array-data v7, :array_b0

    .line 55
    .line 56
    .line 57
    const/16 v8, 0x8

    .line 58
    .line 59
    new-array v9, v8, [B

    .line 60
    .line 61
    fill-array-data v9, :array_ba

    .line 62
    .line 63
    .line 64
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_68

    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    new-array v7, v8, [B

    .line 79
    .line 80
    fill-array-data v7, :array_c2

    .line 81
    .line 82
    .line 83
    new-array v8, v8, [B

    .line 84
    .line 85
    fill-array-data v8, :array_ca

    .line 86
    .line 87
    .line 88
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_68

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_68
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_1f

    .line 108
    :cond_6b
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const v4, 0x1090008

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Lm0/c2;->h:Landroid/widget/ArrayAdapter;

    .line 121
    .line 122
    const v3, 0x1090009

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 129
    .line 130
    iget-object v3, p0, Lm0/c2;->h:Landroid/widget/ArrayAdapter;

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    sget-object v3, Lm0/c2;->i:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v2, v3, v1}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-ltz v0, :cond_9e

    .line 153
    .line 154
    iget-object v1, p0, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 155
    .line 156
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 157
    .line 158
    .line 159
    :cond_9e
    iget-object v0, p0, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 160
    .line 161
    new-instance v1, Le0/e1;

    .line 162
    .line 163
    const/4 v2, 0x3

    .line 164
    invoke-direct {v1, v2, p0}, Le0/e1;-><init>(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lm0/c2;->w()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lm0/c2;->x()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :array_b0
    .array-data 1
        0x15t
        0x1t
        -0x70t
        0x43t
        0x72t
        -0x2ct
        0x4ft
        -0x24t
        0x16t
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    nop

    .line 187
    :array_ba
    .array-data 1
        0x3bt
        0x68t
        -0x2t
        0x30t
        0x6t
        -0x4bt
        0x23t
        -0x50t
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_c2
    .array-data 1
        0x30t
        -0x72t
        -0x51t
        0x7at
        0x6bt
        0x38t
        0x48t
        0x1t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_ca
    .array-data 1
        0x1et
        -0x14t
        -0x32t
        0x19t
        0x0t
        0x4dt
        0x38t
        0x2ct
    .end array-data
.end method

.method public final w()V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/c2;->d:Landroid/widget/ImageButton;

    .line 2
    .line 3
    if-eqz v0, :cond_38

    .line 4
    .line 5
    iget-object v0, p0, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 6
    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    goto :goto_38

    .line 10
    :cond_9
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ltz v0, :cond_25

    .line 15
    .line 16
    iget-object v1, p0, Lm0/c2;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v0, v2, :cond_25

    .line 23
    .line 24
    sget-object v2, Lm0/c2;->k:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_25

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    const/4 v0, 0x0

    .line 39
    :goto_26
    iget-object v1, p0, Lm0/c2;->d:Landroid/widget/ImageButton;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lm0/c2;->d:Landroid/widget/ImageButton;

    .line 45
    .line 46
    if-eqz v0, :cond_32

    .line 47
    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    goto :goto_35

    .line 51
    :cond_32
    const v0, 0x3eb33333    # 0.35f

    .line 52
    .line 53
    .line 54
    :goto_35
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 55
    .line 56
    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public final x()V
    .registers 6

    .line 1
    iget-object v0, p0, Lm0/c2;->e:Landroid/widget/Button;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    goto :goto_24

    .line 12
    :cond_b
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ltz v1, :cond_24

    .line 17
    .line 18
    iget-object v3, p0, Lm0/c2;->g:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-lt v1, v4, :cond_1a

    .line 25
    .line 26
    goto :goto_24

    .line 27
    :cond_1a
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lm0/c2;->u(Ljava/lang/String;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_24
    :goto_24
    if-nez v2, :cond_29

    .line 38
    .line 39
    const/16 v1, 0x8

    .line 40
    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    const/4 v1, 0x0

    .line 43
    :goto_2a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
