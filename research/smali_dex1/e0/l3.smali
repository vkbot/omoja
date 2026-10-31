.class public final Le0/l3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_12

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1e

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :array_12
    .array-data 1
        -0x70t
        0x69t
        0x40t
        -0x7et
        -0x3t
        -0x6t
        -0x59t
        -0x70t
        -0x4at
        0x4ct
        0x4at
        -0x6et
        -0x23t
        -0x13t
        -0x46t
    .end array-data

    .line 20
    .line 21
    :array_1e
    .array-data 1
        -0x3at
        0x0t
        0x25t
        -0xbt
        -0x46t
        -0x78t
        -0x38t
        -0x1bt
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Le0/l3;->b:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [B

    .line 5
    .line 6
    fill-array-data v2, :array_84

    .line 7
    .line 8
    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    new-array v4, v3, [B

    .line 12
    .line 13
    fill-array-data v4, :array_8a

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v4, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 21
    .line 22
    if-nez v4, :cond_19

    .line 23
    .line 24
    iget-object v4, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 25
    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    if-nez v4, :cond_1d

    .line 28
    .line 29
    move-object v4, p1

    .line 30
    :cond_1d
    if-nez v4, :cond_20

    .line 31
    .line 32
    goto :goto_4f

    .line 33
    :cond_20
    :try_start_20
    iget-object v5, p0, Le0/l3;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iput-object v5, p0, Le0/l3;->c:Landroid/content/Context;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_28} :catch_28

    .line 40
    .line 41
    :catch_28
    iget-object v5, p0, Le0/l3;->c:Landroid/content/Context;

    .line 42
    .line 43
    const/16 v6, 0xf

    .line 44
    .line 45
    new-array v6, v6, [B

    .line 46
    .line 47
    fill-array-data v6, :array_92

    .line 48
    .line 49
    .line 50
    new-array v7, v3, [B

    .line 51
    .line 52
    fill-array-data v7, :array_9e

    .line 53
    .line 54
    .line 55
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroid/view/LayoutInflater;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual {v5, v6, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/view/ViewGroup;

    .line 74
    .line 75
    iget-object v5, p0, Le0/l3;->c:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v4, v5, p1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :goto_4f
    if-nez p1, :cond_52

    .line 81
    .line 82
    goto :goto_83

    .line 83
    :cond_52
    iget-object v4, p0, Le0/l3;->c:Landroid/content/Context;

    .line 84
    .line 85
    if-nez v4, :cond_57

    .line 86
    .line 87
    goto :goto_83

    .line 88
    :cond_57
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    new-array v1, v1, [B

    .line 93
    .line 94
    fill-array-data v1, :array_a6

    .line 95
    .line 96
    .line 97
    new-array v3, v3, [B

    .line 98
    .line 99
    fill-array-data v3, :array_ac

    .line 100
    .line 101
    .line 102
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v4, p2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-nez p2, :cond_70

    .line 111
    .line 112
    goto :goto_83

    .line 113
    :cond_70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    instance-of p2, p1, Landroid/widget/TextView;

    .line 118
    .line 119
    if-eqz p2, :cond_83

    .line 120
    .line 121
    check-cast p1, Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :cond_83
    :goto_83
    return-object v2

    .line 133
    :array_84
    .array-data 1
        0x3et
        -0x5t
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    nop

    .line 139
    :array_8a
    .array-data 1
        0x13t
        -0x2at
        -0x4t
        0x52t
        0x6at
        0x39t
        -0x57t
        0x4bt
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_92
    .array-data 1
        0x50t
        0x36t
        0x4et
        0x5ft
        -0x65t
        0x6dt
        -0x80t
        -0x35t
        0x52t
        0x31t
        0x5bt
        0x51t
        -0x66t
        0x7ct
        -0x53t
    .end array-data

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
    :array_9e
    .array-data 1
        0x3ct
        0x57t
        0x37t
        0x30t
        -0x12t
        0x19t
        -0x21t
        -0x5et
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_a6
    .array-data 1
        0x59t
        0x68t
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    nop

    .line 173
    :array_ac
    .array-data 1
        0x30t
        0xct
        0x1t
        0x72t
        -0x71t
        -0x4et
        0x2et
        0x43t
    .end array-data
.end method
