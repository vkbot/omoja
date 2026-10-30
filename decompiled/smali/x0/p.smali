.class public abstract Lx0/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x15

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
    const/16 v0, 0x18

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_2

    .line 23
    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    fill-array-data v1, :array_3

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lx0/p;->a:Ljava/lang/String;

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 1
        0x65t
        0x1bt
        -0x15t
        0x64t
        0x37t
        -0x5dt
        -0x2dt
        -0x3dt
        0x72t
        0x9t
        -0x2t
        0x75t
        0x36t
        -0x5dt
        -0x3ft
        -0x3ct
        0x77t
        0xct
        -0x9t
        0x64t
        0x21t
    .end array-data

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
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    nop

    .line 53
    :array_1
    .array-data 1
        0x16t
        0x6et
        -0x65t
        0x1t
        0x45t
        -0x4t
        -0x5ct
        -0x56t
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
        -0x7dt
        0x46t
        -0x63t
        -0x44t
        -0x72t
        0x48t
        0x48t
        0x14t
        -0x6ct
        0x54t
        -0x78t
        -0x53t
        -0x71t
        0x48t
        0x5bt
        0x18t
        -0x7dt
        0x5at
        -0x76t
        -0x49t
        -0x71t
        0x48t
        0x49t
        0x4ct
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
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_3
    .array-data 1
        -0x10t
        0x33t
        -0x13t
        -0x27t
        -0x4t
        0x17t
        0x3ft
        0x7dt
    .end array-data
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 9
    .line 10
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sget-object v4, Lx0/p;->a:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    new-array v5, v5, [B

    .line 18
    .line 19
    fill-array-data v5, :array_0

    .line 20
    .line 21
    .line 22
    new-array v6, v1, [B

    .line 23
    .line 24
    fill-array-data v6, :array_1

    .line 25
    .line 26
    .line 27
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v3, v4, v5}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ge v3, v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4}, Lx0/o;->e(Lorg/json/JSONObject;)Lx0/o;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v2

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-object v0

    .line 69
    :goto_2
    const/16 v3, 0xc

    .line 70
    .line 71
    new-array v3, v3, [B

    .line 72
    .line 73
    fill-array-data v3, :array_2

    .line 74
    .line 75
    .line 76
    new-array v4, v1, [B

    .line 77
    .line 78
    fill-array-data v4, :array_3

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const/16 v4, 0x13

    .line 86
    .line 87
    new-array v4, v4, [B

    .line 88
    .line 89
    fill-array-data v4, :array_4

    .line 90
    .line 91
    .line 92
    new-array v1, v1, [B

    .line 93
    .line 94
    fill-array-data v1, :array_5

    .line 95
    .line 96
    .line 97
    invoke-static {v4, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :array_0
    .array-data 1
        -0x29t
        -0x5bt
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    nop

    .line 111
    :array_1
    .array-data 1
        -0x74t
        -0x8t
        0x4et
        0x3at
        -0x64t
        0x3bt
        0xat
        -0x7at
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_2
    .array-data 1
        -0x28t
        0x30t
        -0x63t
        0x17t
        -0x1at
        0x1ct
        0x4ct
        -0x2ft
        -0x14t
        0x20t
        -0x67t
        0x1t
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_3
    .array-data 1
        -0x75t
        0x45t
        -0x13t
        0x72t
        -0x6ct
        0x4bt
        0x25t
        -0x4bt
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_4
    .array-data 1
        -0x35t
        -0x62t
        -0x37t
        0x73t
        0x3at
        -0x55t
        0x76t
        -0x50t
        -0x13t
        -0x62t
        -0x3dt
        0x3dt
        0x31t
        -0x46t
        0x25t
        -0x55t
        -0x11t
        -0x6ft
        -0x2ct
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
    .line 151
    :array_5
    .array-data 1
        -0x78t
        -0x1t
        -0x59t
        0x1dt
        0x55t
        -0x21t
        0x56t
        -0x3et
    .end array-data
.end method
