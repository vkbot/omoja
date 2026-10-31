.class public Lcom/example/navistart/ShortcutRouterActivity;
.super Landroid/app/Activity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/16 v0, 0x14

    .line 13
    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    fill-array-data v0, :array_64

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    new-array v2, v1, [B

    .line 22
    .line 23
    fill-array-data v2, :array_72

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v0, :cond_2a

    .line 36
    .line 37
    const-class p1, Lm0/c3;

    .line 38
    .line 39
    invoke-static {p0, p1, v2}, Lcom/example/navistart/W;->t(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    goto :goto_5f

    .line 43
    :cond_2a
    const/16 v0, 0x15

    .line 44
    .line 45
    new-array v3, v0, [B

    .line 46
    .line 47
    fill-array-data v3, :array_7a

    .line 48
    .line 49
    .line 50
    new-array v4, v1, [B

    .line 51
    .line 52
    fill-array-data v4, :array_8a

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_46

    .line 64
    .line 65
    const-class p1, Lm0/v;

    .line 66
    .line 67
    invoke-static {p0, p1, v2}, Lcom/example/navistart/W;->t(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    goto :goto_5f

    .line 71
    :cond_46
    new-array v0, v0, [B

    .line 72
    .line 73
    fill-array-data v0, :array_92

    .line 74
    .line 75
    .line 76
    new-array v1, v1, [B

    .line 77
    .line 78
    fill-array-data v1, :array_a2

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5f

    .line 90
    .line 91
    const-class p1, Lm0/n3;

    .line 92
    .line 93
    invoke-static {p0, p1, v2}, Lcom/example/navistart/W;->t(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 94
    .line 95
    .line 96
    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_64
    .array-data 1
        0x6et
        0x3t
        -0x55t
        -0x3t
        0x2ct
        -0x67t
        0x37t
        0x13t
        0x64t
        0xbt
        -0x4et
        -0xat
        0xet
        -0x6et
        0x26t
        0x8t
        0x54t
        0xbt
        -0x56t
        -0x16t
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
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
    :array_72
    .array-data 1
        0x22t
        0x62t
        -0x22t
        -0x6dt
        0x4ft
        -0xft
        0x52t
        0x61t
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_7a
    .array-data 1
        0x6ft
        -0x54t
        0x9t
        -0x35t
        0x30t
        -0x25t
        0x64t
        -0x13t
        0x70t
        -0x47t
        0x13t
        -0x29t
        0x36t
        -0xet
        0x62t
        -0x15t
        0x4at
        -0x45t
        0x15t
        -0x2ft
        0x2at
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    nop

    .line 139
    :array_8a
    .array-data 1
        0x23t
        -0x33t
        0x7ct
        -0x5bt
        0x53t
        -0x4dt
        0x1t
        -0x61t
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
        0x71t
        0x5et
        0x63t
        0x21t
        0x2at
        -0x7et
        0x6ct
        0x7ft
        0x6bt
        0x56t
        0x72t
        0x2at
        0x26t
        -0x55t
        0x6at
        0x79t
        0x54t
        0x49t
        0x7ft
        0x3bt
        0x30t
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
    .line 160
    .line 161
    .line 162
    nop

    .line 163
    :array_a2
    .array-data 1
        0x3dt
        0x3ft
        0x16t
        0x4ft
        0x49t
        -0x16t
        0x9t
        0xdt
    .end array-data
.end method
