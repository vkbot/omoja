.class public abstract Le0/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static b:Ljava/lang/String;

.field public static c:[Ljava/lang/String;

.field public static d:Ljava/util/ArrayList;

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Le0/m;->a:Ljava/lang/Boolean;

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    sput-object v0, Le0/m;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    sput-object v0, Le0/m;->e:[B

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_1

    .line 21
    .line 22
    .line 23
    sput-object v0, Le0/m;->f:[B

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    new-array v1, v0, [B

    .line 27
    .line 28
    fill-array-data v1, :array_2

    .line 29
    .line 30
    .line 31
    sput-object v1, Le0/m;->g:[B

    .line 32
    .line 33
    new-array v1, v0, [B

    .line 34
    .line 35
    fill-array-data v1, :array_3

    .line 36
    .line 37
    .line 38
    sput-object v1, Le0/m;->h:[B

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    new-array v1, v1, [B

    .line 42
    .line 43
    fill-array-data v1, :array_4

    .line 44
    .line 45
    .line 46
    sput-object v1, Le0/m;->i:[B

    .line 47
    .line 48
    new-array v0, v0, [B

    .line 49
    .line 50
    fill-array-data v0, :array_5

    .line 51
    .line 52
    .line 53
    sput-object v0, Le0/m;->j:[B

    .line 54
    .line 55
    const/16 v0, 0x1d

    .line 56
    .line 57
    new-array v0, v0, [B

    .line 58
    .line 59
    fill-array-data v0, :array_6

    .line 60
    .line 61
    .line 62
    sput-object v0, Le0/m;->k:[B

    .line 63
    .line 64
    return-void

    .line 65
    :array_0
    .array-data 1
        0x6bt
        0x75t
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    nop

    .line 71
    :array_1
    .array-data 1
        0x6dt
        0x69t
        0x72t
        0x75t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x72t
    .end array-data

    :array_3
    .array-data 1
        0x53t
        0x48t
        0x41t
    .end array-data

    :array_4
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x2dt
        0x35t
        0x31t
        0x32t
    .end array-data

    :array_5
    .array-data 1
        0x6dt
        0x75t
        0x72t
    .end array-data

    :array_6
    .array-data 1
        0x71t
        0x66t
        0x4ct
        0x37t
        0x2ft
        0x43t
        0x65t
        0x78t
        0x30t
        0x38t
        0x4bt
        0x77t
        0x4bt
        0x42t
        0x65t
        0x6ft
        0x73t
        0x30t
        0x6bt
        0x64t
        0x61t
        0x59t
        0x4et
        0x41t
        0x33t
        0x65t
        0x67t
        0x3dt
        0xat
    .end array-data
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-eqz p0, :cond_3

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v4, v3, [B

    .line 17
    .line 18
    const/16 v5, -0x17

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    aput-byte v5, v4, v6

    .line 22
    .line 23
    new-array v5, v1, [B

    .line 24
    .line 25
    fill-array-data v5, :array_0

    .line 26
    .line 27
    .line 28
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move v4, v6

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-ge v4, v5, :cond_2

    .line 41
    .line 42
    if-lez v4, :cond_1

    .line 43
    .line 44
    new-array v5, v0, [B

    .line 45
    .line 46
    fill-array-data v5, :array_1

    .line 47
    .line 48
    .line 49
    new-array v7, v1, [B

    .line 50
    .line 51
    fill-array-data v7, :array_2

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Landroid/content/ComponentName;

    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    new-array p0, v3, [B

    .line 78
    .line 79
    const/16 v0, -0x37

    .line 80
    .line 81
    aput-byte v0, p0, v6

    .line 82
    .line 83
    new-array v0, v1, [B

    .line 84
    .line 85
    fill-array-data v0, :array_3

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0, v2}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_3
    :goto_1
    new-array p0, v0, [B

    .line 94
    .line 95
    fill-array-data p0, :array_4

    .line 96
    .line 97
    .line 98
    new-array v0, v1, [B

    .line 99
    .line 100
    fill-array-data v0, :array_5

    .line 101
    .line 102
    .line 103
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    nop

    .line 109
    :array_0
    .array-data 1
        -0x4et
        -0x15t
        -0x25t
        0x7et
        -0x6bt
        -0x3et
        -0x23t
        -0x11t
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 1
        0x4ct
        -0x42t
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    nop

    .line 123
    :array_2
    .array-data 1
        0x60t
        -0x62t
        0x65t
        0x2et
        0x40t
        -0x58t
        -0x72t
        0x79t
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_3
    .array-data 1
        -0x6ct
        -0x47t
        -0x75t
        -0x12t
        -0x1ct
        -0x3bt
        0x1dt
        0x30t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_4
    .array-data 1
        0x28t
        0x20t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    nop

    .line 145
    :array_5
    .array-data 1
        0x73t
        0x7dt
        0xft
        -0x3at
        0x7dt
        -0x3ct
        0x67t
        0x46t
    .end array-data
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    const/16 v1, -0x1d

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-byte v1, v0, v2

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    new-array v2, v1, [B

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Le0/m;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_0
    invoke-static {p0}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 p2, 0x2

    .line 46
    new-array p2, p2, [B

    .line 47
    .line 48
    fill-array-data p2, :array_1

    .line 49
    .line 50
    .line 51
    new-array v0, v1, [B

    .line 52
    .line 53
    fill-array-data v0, :array_2

    .line 54
    .line 55
    .line 56
    invoke-static {p2, v0, p0, p1}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :array_0
    .array-data 1
        -0x22t
        -0x28t
        0x46t
        0x5at
        0x15t
        -0x35t
        0x5et
        -0x5bt
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 1
        0x21t
        -0x13t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    nop

    .line 75
    :array_2
    .array-data 1
        0x1at
        -0x33t
        0x1at
        -0x47t
        0x1dt
        0x5ft
        -0x64t
        -0x38t
    .end array-data
.end method

.method public static c()V
    .locals 10

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/bluetooth/BluetoothAdapter;

    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v2, Le0/m;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v2, 0x12

    .line 15
    .line 16
    :try_start_0
    new-array v2, v2, [B

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    new-array v4, v3, [B

    .line 24
    .line 25
    fill-array-data v4, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_4

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 69
    .line 70
    const-class v6, Landroid/bluetooth/BluetoothDevice;

    .line 71
    .line 72
    const/16 v7, 0xb

    .line 73
    .line 74
    new-array v7, v7, [B

    .line 75
    .line 76
    fill-array-data v7, :array_2

    .line 77
    .line 78
    .line 79
    new-array v8, v3, [B

    .line 80
    .line 81
    fill-array-data v8, :array_3

    .line 82
    .line 83
    .line 84
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v6, v7, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    sget-object v8, Le0/m;->d:Ljava/util/ArrayList;

    .line 110
    .line 111
    if-eqz v7, :cond_1

    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-eqz v9, :cond_2

    .line 122
    .line 123
    :cond_1
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    :cond_2
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    sget-object v7, Le0/m;->d:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    new-array v7, v7, [Ljava/lang/String;

    .line 137
    .line 138
    const/4 v8, 0x0

    .line 139
    :goto_1
    sget-object v9, Le0/m;->d:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-ge v8, v9, :cond_3

    .line 146
    .line 147
    sget-object v9, Le0/m;->d:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    check-cast v9, Ljava/lang/String;

    .line 154
    .line 155
    aput-object v9, v7, v8

    .line 156
    .line 157
    add-int/lit8 v8, v8, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    sput-object v7, Le0/m;->c:[Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v6, :cond_0

    .line 163
    .line 164
    sget-object v6, Le0/m;->a:Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-nez v6, :cond_0

    .line 171
    .line 172
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 173
    .line 174
    sput-object v6, Le0/m;->a:Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    sput-object v5, Le0/m;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_4
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :array_0
    .array-data 1
        0x52t
        0x7at
        -0x1at
        -0x71t
        -0x31t
        -0x73t
        0x2t
        -0x19t
        0x56t
        0x6bt
        -0x5t
        -0x5dt
        -0x32t
        -0x50t
        0x18t
        -0x1dt
        0x41t
        0x7at
    .end array-data

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
    .line 201
    .line 202
    nop

    .line 203
    :array_1
    .array-data 1
        0x35t
        0x1ft
        -0x6et
        -0x34t
        -0x60t
        -0x1dt
        0x6ct
        -0x7et
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_2
    .array-data 1
        -0x26t
        0x6dt
        0x3at
        0x47t
        0x67t
        -0x47t
        -0x6t
        -0x1t
        -0x39t
        0x7bt
        0x1dt
    .end array-data

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
    :array_3
    .array-data 1
        -0x4dt
        0x1et
        0x79t
        0x28t
        0x9t
        -0x29t
        -0x61t
        -0x64t
    .end array-data
.end method

.method public static d(Lcom/example/navistart/UpdateActivity;Ljava/lang/String;)Le0/r;
    .locals 13

    .line 1
    const/16 v0, 0xd

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
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 25
    .line 26
    new-instance v3, Landroid/content/ComponentName;

    .line 27
    .line 28
    const-class v0, Lcom/example/navistart/DPups;

    .line 29
    .line 30
    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Le0/m;->j(Landroid/content/Context;)Le0/s;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-boolean v4, v5, Le0/s;->a:Z

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    invoke-static {p0}, Le0/m;->j(Landroid/content/Context;)Le0/s;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    new-instance v4, Le0/r;

    .line 46
    .line 47
    const/16 p0, 0x1b

    .line 48
    .line 49
    new-array p0, p0, [B

    .line 50
    .line 51
    fill-array-data p0, :array_2

    .line 52
    .line 53
    .line 54
    new-array v0, v1, [B

    .line 55
    .line 56
    fill-array-data v0, :array_3

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    const/4 v12, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    invoke-direct/range {v4 .. v12}, Le0/r;-><init>(Le0/s;Le0/s;ZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Le0/r;->a()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    return-object v4

    .line 79
    :cond_0
    const/4 v6, 0x1

    .line 80
    const/4 v7, 0x0

    .line 81
    if-nez v4, :cond_1

    .line 82
    .line 83
    iget-boolean v0, v5, Le0/s;->b:Z

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    move v8, v7

    .line 98
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_4

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Landroid/content/ComponentName;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    if-nez v10, :cond_2

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    :try_start_2
    invoke-static {p0, v2, v9, p1}, Le0/m;->e(Lcom/example/navistart/UpdateActivity;Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    .line 127
    .line 128
    move v8, v6

    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    move v8, v6

    .line 132
    goto :goto_1

    .line 133
    :catch_1
    move-exception v0

    .line 134
    goto :goto_1

    .line 135
    :catch_2
    move-exception v0

    .line 136
    move v8, v7

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    move v8, v7

    .line 139
    goto :goto_2

    .line 140
    :goto_1
    const/16 v9, 0x2c

    .line 141
    .line 142
    new-array v9, v9, [B

    .line 143
    .line 144
    fill-array-data v9, :array_4

    .line 145
    .line 146
    .line 147
    new-array v10, v1, [B

    .line 148
    .line 149
    fill-array-data v10, :array_5

    .line 150
    .line 151
    .line 152
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-static {p1, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_2
    if-nez v8, :cond_5

    .line 160
    .line 161
    invoke-static {p0, v2, v3, p1}, Le0/m;->e(Lcom/example/navistart/UpdateActivity;Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    const/4 v8, 0x0

    .line 165
    if-eqz v4, :cond_6

    .line 166
    .line 167
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->clearDeviceOwnerApp(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 172
    .line 173
    .line 174
    move v4, v7

    .line 175
    move-object v9, v8

    .line 176
    move-object v11, v9

    .line 177
    move v7, v6

    .line 178
    move v8, v7

    .line 179
    goto :goto_4

    .line 180
    :catch_3
    move-exception v0

    .line 181
    invoke-static {v0}, Le0/m;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    const/16 v9, 0x1a

    .line 186
    .line 187
    new-array v9, v9, [B

    .line 188
    .line 189
    fill-array-data v9, :array_6

    .line 190
    .line 191
    .line 192
    new-array v10, v1, [B

    .line 193
    .line 194
    fill-array-data v10, :array_7

    .line 195
    .line 196
    .line 197
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-static {p1, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .line 203
    .line 204
    move-object v11, v4

    .line 205
    move v4, v7

    .line 206
    move-object v9, v8

    .line 207
    move v7, v6

    .line 208
    :goto_3
    move v8, v4

    .line 209
    goto :goto_4

    .line 210
    :cond_6
    move v4, v7

    .line 211
    move-object v9, v8

    .line 212
    move-object v11, v9

    .line 213
    goto :goto_3

    .line 214
    :goto_4
    invoke-static {p0}, Le0/m;->j(Landroid/content/Context;)Le0/s;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iget-boolean v0, v0, Le0/s;->b:Z

    .line 219
    .line 220
    if-eqz v0, :cond_7

    .line 221
    .line 222
    :try_start_4
    invoke-static {p0, v2, v3, p1}, Le0/m;->k(Lcom/example/navistart/UpdateActivity;Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 223
    .line 224
    .line 225
    move v10, v6

    .line 226
    :goto_5
    move-object v12, v9

    .line 227
    move v9, v10

    .line 228
    goto :goto_6

    .line 229
    :catch_4
    move-exception v0

    .line 230
    invoke-static {v0}, Le0/m;->i(Ljava/lang/Exception;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    const/16 v3, 0x18

    .line 235
    .line 236
    new-array v3, v3, [B

    .line 237
    .line 238
    fill-array-data v3, :array_8

    .line 239
    .line 240
    .line 241
    new-array v1, v1, [B

    .line 242
    .line 243
    fill-array-data v1, :array_9

    .line 244
    .line 245
    .line 246
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .line 252
    .line 253
    move-object v12, v2

    .line 254
    move v10, v4

    .line 255
    move v9, v6

    .line 256
    goto :goto_6

    .line 257
    :cond_7
    move v10, v4

    .line 258
    goto :goto_5

    .line 259
    :goto_6
    invoke-static {p0}, Le0/m;->j(Landroid/content/Context;)Le0/s;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    new-instance v4, Le0/r;

    .line 264
    .line 265
    invoke-direct/range {v4 .. v12}, Le0/r;-><init>(Le0/s;Le0/s;ZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Le0/r;->a()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    return-object v4

    .line 276
    nop

    .line 277
    :array_0
    .array-data 1
        0x42t
        -0x6t
        -0xat
        0x51t
        -0x72t
        0x6ft
        -0x71t
        0x3at
        0x49t
        -0xdt
        -0x17t
        0x5bt
        -0x6ct
    .end array-data

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
    :array_1
    .array-data 1
        0x26t
        -0x61t
        -0x80t
        0x38t
        -0x13t
        0xat
        -0x30t
        0x4at
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_2
    .array-data 1
        0x26t
        -0x2ct
        -0x1et
        -0x47t
        0x19t
        -0x46t
        -0x11t
        -0x20t
        0xet
        -0x28t
        -0x9t
        -0x57t
        0x37t
        -0x42t
        -0x2ft
        -0x12t
        0x5t
        -0x2ct
        -0x1at
        -0x10t
        0x13t
        -0x54t
        -0x61t
        -0x1ft
        0x17t
        -0x23t
        -0x8t
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
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
    :array_3
    .array-data 1
        0x62t
        -0x4ft
        -0x6ct
        -0x30t
        0x7at
        -0x21t
        -0x41t
        -0x71t
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :array_4
    .array-data 1
        -0x61t
        0x70t
        0x71t
        -0x47t
        -0x66t
        -0x13t
        -0x24t
        -0x6dt
        -0x63t
        0x54t
        0x61t
        -0x6bt
        -0x70t
        -0x9t
        -0x3at
        -0x3bt
        -0x62t
        0x74t
        0x6ct
        -0x6ct
        -0x64t
        -0x3t
        -0x6bt
        -0x79t
        -0x63t
        0x73t
        0x6at
        -0x76t
        -0x64t
        -0x47t
        -0x3bt
        -0x76t
        -0x6ct
        0x7ct
        0x66t
        -0x7ft
        -0x27t
        -0x6t
        -0x27t
        -0x80t
        -0x67t
        0x7bt
        0x70t
        -0x78t
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
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
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :array_5
    .array-data 1
        -0x8t
        0x15t
        0x5t
        -0x8t
        -0x7t
        -0x67t
        -0x4bt
        -0x1bt
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_6
    .array-data 1
        0x60t
        -0xet
        -0x5ct
        0x1t
        0x9t
        0xdt
        0x56t
        -0x3ct
        0x6at
        -0x3t
        -0x5ct
        0x2ft
        0xct
        0x27t
        0x56t
        -0x40t
        0x42t
        -0x12t
        -0x4ft
        0x40t
        0x1dt
        0x28t
        0x5at
        -0x22t
        0x66t
        -0x6t
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    nop

    .line 375
    :array_7
    .array-data 1
        0x3t
        -0x62t
        -0x3ft
        0x60t
        0x7bt
        0x49t
        0x33t
        -0x4et
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    :array_8
    .array-data 1
        0x47t
        0x2t
        -0x1et
        -0x71t
        0x3bt
        -0x1bt
        -0x72t
        0x67t
        0x41t
        0xet
        -0x7t
        -0x7bt
        0xct
        -0x1ct
        -0x5et
        0x6dt
        0x5bt
        0x47t
        -0x17t
        -0x7ft
        0x24t
        -0x14t
        -0x56t
        0x60t
    .end array-data

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_9
    .array-data 1
        0x35t
        0x67t
        -0x71t
        -0x20t
        0x4dt
        -0x80t
        -0x31t
        0x4t
    .end array-data
.end method

.method public static e(Lcom/example/navistart/UpdateActivity;Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1, p2, p0, v1}, Landroid/app/admin/DevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/16 v3, 0x22

    .line 21
    .line 22
    new-array v3, v3, [B

    .line 23
    .line 24
    fill-array-data v3, :array_0

    .line 25
    .line 26
    .line 27
    new-array v4, v2, [B

    .line 28
    .line 29
    fill-array-data v4, :array_1

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    new-array v3, v2, [B

    .line 43
    .line 44
    fill-array-data v3, :array_2

    .line 45
    .line 46
    .line 47
    new-array v4, v2, [B

    .line 48
    .line 49
    fill-array-data v4, :array_3

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const/16 v4, 0x29

    .line 77
    .line 78
    new-array v4, v4, [B

    .line 79
    .line 80
    fill-array-data v4, :array_4

    .line 81
    .line 82
    .line 83
    new-array v5, v2, [B

    .line 84
    .line 85
    fill-array-data v5, :array_5

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v5, v3, v0}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {p3, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    :goto_0
    const/16 v1, 0x11

    .line 96
    .line 97
    const/16 v3, 0x38

    .line 98
    .line 99
    :try_start_1
    new-array v1, v1, [B

    .line 100
    .line 101
    fill-array-data v1, :array_6

    .line 102
    .line 103
    .line 104
    new-array v4, v2, [B

    .line 105
    .line 106
    fill-array-data v4, :array_7

    .line 107
    .line 108
    .line 109
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {p1, p2, v1}, Landroid/app/admin/DevicePolicyManager;->clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    new-array v4, v3, [B

    .line 122
    .line 123
    fill-array-data v4, :array_8

    .line 124
    .line 125
    .line 126
    new-array v5, v2, [B

    .line 127
    .line 128
    fill-array-data v5, :array_9

    .line 129
    .line 130
    .line 131
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catch_1
    move-exception v1

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const/16 v5, 0x3c

    .line 156
    .line 157
    new-array v5, v5, [B

    .line 158
    .line 159
    fill-array-data v5, :array_a

    .line 160
    .line 161
    .line 162
    new-array v6, v2, [B

    .line 163
    .line 164
    fill-array-data v6, :array_b

    .line 165
    .line 166
    .line 167
    invoke-static {v5, v6, v4, v0}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {p3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    .line 174
    :goto_1
    const/16 v1, 0xf

    .line 175
    .line 176
    :try_start_2
    new-array v1, v1, [B

    .line 177
    .line 178
    fill-array-data v1, :array_c

    .line 179
    .line 180
    .line 181
    new-array v4, v2, [B

    .line 182
    .line 183
    fill-array-data v4, :array_d

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, p2, v1}, Landroid/app/admin/DevicePolicyManager;->clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const/16 v4, 0x36

    .line 199
    .line 200
    new-array v4, v4, [B

    .line 201
    .line 202
    fill-array-data v4, :array_e

    .line 203
    .line 204
    .line 205
    new-array v5, v2, [B

    .line 206
    .line 207
    fill-array-data v5, :array_f

    .line 208
    .line 209
    .line 210
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :catch_2
    move-exception v1

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const/16 v5, 0x3a

    .line 235
    .line 236
    new-array v5, v5, [B

    .line 237
    .line 238
    fill-array-data v5, :array_10

    .line 239
    .line 240
    .line 241
    new-array v6, v2, [B

    .line 242
    .line 243
    fill-array-data v6, :array_11

    .line 244
    .line 245
    .line 246
    invoke-static {v5, v6, v4, v0}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-static {p3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .line 252
    .line 253
    :goto_2
    :try_start_3
    invoke-virtual {p1, p2, p0}, Landroid/app/admin/DevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    const/16 p2, 0x31

    .line 262
    .line 263
    new-array p2, p2, [B

    .line 264
    .line 265
    fill-array-data p2, :array_12

    .line 266
    .line 267
    .line 268
    new-array v1, v2, [B

    .line 269
    .line 270
    fill-array-data v1, :array_13

    .line 271
    .line 272
    .line 273
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    new-array p0, v2, [B

    .line 284
    .line 285
    fill-array-data p0, :array_14

    .line 286
    .line 287
    .line 288
    new-array p2, v2, [B

    .line 289
    .line 290
    fill-array-data p2, :array_15

    .line 291
    .line 292
    .line 293
    invoke-static {p0, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :catch_3
    move-exception p0

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    new-array p2, v3, [B

    .line 318
    .line 319
    fill-array-data p2, :array_16

    .line 320
    .line 321
    .line 322
    new-array v1, v2, [B

    .line 323
    .line 324
    fill-array-data v1, :array_17

    .line 325
    .line 326
    .line 327
    invoke-static {p2, v1, p1, v0}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .line 333
    .line 334
    :goto_3
    return-void

    .line 335
    :array_0
    .array-data 1
        -0x1et
        0x44t
        0x1t
        -0x9t
        0x1et
        0x7at
        -0xdt
        -0x7at
        -0x1bt
        0x40t
        0x19t
        -0x32t
        0x32t
        0x7ft
        -0xet
        -0x6at
        -0x6t
        0x44t
        0x11t
        -0x76t
        0x16t
        0x72t
        -0xft
        -0x7at
        -0xct
        0x8t
        0x55t
        -0x33t
        0x1bt
        0x33t
        -0x5t
        -0x66t
        -0x1dt
        0x1t
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    nop

    .line 357
    :array_1
    .array-data 1
        -0x6ft
        0x21t
        0x75t
        -0x5et
        0x70t
        0x13t
        -0x63t
        -0xbt
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_2
    .array-data 1
        -0x14t
        0x59t
        0x6ct
        0x36t
        -0x3t
        0x41t
        0x38t
        -0x43t
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_3
    .array-data 1
        -0x40t
        0x79t
        0xdt
        0x52t
        -0x70t
        0x28t
        0x56t
        -0x80t
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_4
    .array-data 1
        -0x34t
        0x42t
        0x6dt
        0x1ct
        0x47t
        0x17t
        -0x15t
        -0x4at
        -0x35t
        0x46t
        0x75t
        0x25t
        0x6bt
        0x12t
        -0x16t
        -0x5at
        -0x2ct
        0x42t
        0x7dt
        0x61t
        0x4ft
        0x1ft
        -0x17t
        -0x4at
        -0x26t
        0xet
        0x39t
        0x2ft
        0x48t
        0x17t
        -0x17t
        -0x60t
        -0x25t
        0xbt
        0x39t
        0x28t
        0x4dt
        0x13t
        -0x14t
        -0x55t
        -0x7et
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    nop

    .line 407
    :array_5
    .array-data 1
        -0x41t
        0x27t
        0x19t
        0x49t
        0x29t
        0x7et
        -0x7bt
        -0x3bt
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_6
    .array-data 1
        0x67t
        -0x6ct
        -0x5dt
        -0x2t
        -0x2t
        0x10t
        -0x24t
        0x18t
        0x7dt
        -0x66t
        -0x70t
        -0x19t
        -0x31t
        0x18t
        -0x3et
        0x1bt
        0x7at
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    nop

    .line 429
    :array_7
    .array-data 1
        0x9t
        -0x5t
        -0x4t
        -0x75t
        -0x70t
        0x79t
        -0x4et
        0x6bt
    .end array-data

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_8
    .array-data 1
        -0x1at
        -0x3ct
        -0x5ct
        -0x39t
        0x53t
        0x56t
        0x11t
        0x4dt
        -0x9t
        -0x6t
        -0x5ct
        -0x2bt
        0x55t
        0x71t
        0xbt
        0x4bt
        -0xft
        -0x3ft
        -0x52t
        -0x38t
        0x9t
        0x47t
        0x2bt
        0x7bt
        -0x3ct
        -0x1ct
        -0x73t
        -0x17t
        0x76t
        0x5ct
        0x37t
        0x66t
        -0x34t
        -0x1at
        -0x6et
        -0xet
        0x60t
        0x4ft
        0x2et
        0x77t
        -0x3ct
        -0x8t
        -0x6ft
        -0xbt
        0x8t
        0x23t
        0xdt
        0x43t
        -0x57t
        -0x78t
        -0x60t
        -0x3et
        0x4ct
        0x6at
        0xct
        0x15t
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
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
    .line 469
    :array_9
    .array-data 1
        -0x7bt
        -0x58t
        -0x3ft
        -0x5at
        0x21t
        0x3t
        0x62t
        0x28t
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_a
    .array-data 1
        0x36t
        0x68t
        -0x77t
        0x49t
        -0x1at
        0x41t
        -0x75t
        0xet
        0x27t
        0x56t
        -0x77t
        0x5bt
        -0x20t
        0x66t
        -0x6ft
        0x8t
        0x21t
        0x6dt
        -0x7dt
        0x46t
        -0x44t
        0x50t
        -0x4ft
        0x38t
        0x14t
        0x48t
        -0x60t
        0x67t
        -0x3dt
        0x4bt
        -0x53t
        0x25t
        0x1ct
        0x4at
        -0x41t
        0x7ct
        -0x2bt
        0x58t
        -0x4ct
        0x34t
        0x14t
        0x54t
        -0x44t
        0x7bt
        -0x43t
        0x34t
        -0x62t
        0xat
        0x3ct
        0x68t
        -0x77t
        0x4ct
        -0x48t
        0x34t
        -0x67t
        0xft
        0x38t
        0x6dt
        -0x7et
        0x15t
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
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :array_b
    .array-data 1
        0x55t
        0x4t
        -0x14t
        0x28t
        -0x6ct
        0x14t
        -0x8t
        0x6bt
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_c
    .array-data 1
        -0x6et
        0x6bt
        -0x19t
        0x59t
        -0x17t
        -0x42t
        0x35t
        0x42t
        -0x6dt
        0x68t
        -0x19t
        0x5bt
        -0xat
        -0x60t
        0x32t
    .end array-data

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
    :array_d
    .array-data 1
        -0x4t
        0x4t
        -0x48t
        0x3at
        -0x7at
        -0x30t
        0x41t
        0x30t
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :array_e
    .array-data 1
        -0x7ct
        0x42t
        -0x7at
        -0x6at
        0x3bt
        -0x55t
        0x4ft
        0x46t
        -0x6bt
        0x7ct
        -0x7at
        -0x7ct
        0x3dt
        -0x74t
        0x55t
        0x40t
        -0x6dt
        0x47t
        -0x74t
        -0x67t
        0x61t
        -0x46t
        0x75t
        0x70t
        -0x5at
        0x62t
        -0x51t
        -0x48t
        0x1et
        -0x5ft
        0x7dt
        0x73t
        -0x49t
        0x7dt
        -0x44t
        -0x4ct
        0x6t
        -0x50t
        0x68t
        0x71t
        -0x58t
        0x62t
        -0x36t
        -0x29t
        0x26t
        -0x6bt
        0x10t
        0x3t
        -0x7at
        0x4at
        -0x72t
        -0x62t
        0x27t
        -0x3dt
    .end array-data

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
    nop

    .line 571
    :array_f
    .array-data 1
        -0x19t
        0x2et
        -0x1dt
        -0x9t
        0x49t
        -0x2t
        0x3ct
        0x23t
    .end array-data

    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_10
    .array-data 1
        0x22t
        0x64t
        -0x77t
        -0x5ft
        -0xct
        -0x33t
        -0x27t
        0x22t
        0x33t
        0x5at
        -0x77t
        -0x4dt
        -0xet
        -0x16t
        -0x3dt
        0x24t
        0x35t
        0x61t
        -0x7dt
        -0x52t
        -0x52t
        -0x24t
        -0x1dt
        0x14t
        0x0t
        0x44t
        -0x60t
        -0x71t
        -0x2ft
        -0x39t
        -0x15t
        0x17t
        0x11t
        0x5bt
        -0x4dt
        -0x7dt
        -0x37t
        -0x2at
        -0x2t
        0x15t
        0xet
        0x44t
        -0x3bt
        -0x20t
        -0x20t
        -0x7t
        -0x3dt
        0x2bt
        0x24t
        0x6ct
        -0x40t
        -0x20t
        -0x19t
        -0x4t
        -0x39t
        0x2et
        0x2ft
        0x35t
    .end array-data

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
    .line 595
    .line 596
    .line 597
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
    nop

    .line 613
    :array_11
    .array-data 1
        0x41t
        0x8t
        -0x14t
        -0x40t
        -0x7at
        -0x68t
        -0x56t
        0x47t
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :array_12
    .array-data 1
        0x6ft
        -0x26t
        -0x30t
        -0x27t
        -0x78t
        0x5dt
        -0x47t
        -0x63t
        0x67t
        -0x29t
        -0x2et
        -0x23t
        -0x56t
        0x68t
        -0x56t
        -0x73t
        0x65t
        -0x3bt
        -0x3ft
        -0x23t
        -0x6ct
        0x79t
        -0x78t
        -0x74t
        0x69t
        -0x30t
        -0x30t
        -0x36t
        -0x78t
        0x68t
        -0x44t
        -0x41t
        0x6ft
        -0x3et
        -0x24t
        -0x32t
        -0x6dt
        0x79t
        -0x4ft
        -0x65t
        0x7ft
        -0x6at
        -0x26t
        -0x2dt
        -0x26t
        0x6bt
        -0x49t
        -0x74t
        0x2ct
    .end array-data

    .line 622
    .line 623
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
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    nop

    .line 651
    :array_13
    .array-data 1
        0xct
        -0x4at
        -0x4bt
        -0x48t
        -0x6t
        0xdt
        -0x28t
        -0x2t
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_14
    .array-data 1
        0x29t
        -0x55t
        0x14t
        -0x63t
        -0x4ct
        -0x24t
        0x9t
        0x54t
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    :array_15
    .array-data 1
        0x5t
        -0x75t
        0x75t
        -0x7t
        -0x27t
        -0x4bt
        0x67t
        0x69t
    .end array-data

    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_16
    .array-data 1
        -0x6bt
        0x31t
        0x20t
        -0x29t
        0x4et
        -0x38t
        -0x6dt
        0x31t
        -0x63t
        0x3ct
        0x22t
        -0x2dt
        0x6ct
        -0x3t
        -0x80t
        0x21t
        -0x61t
        0x2et
        0x31t
        -0x2dt
        0x52t
        -0x14t
        -0x5et
        0x20t
        -0x6dt
        0x3bt
        0x20t
        -0x3ct
        0x4et
        -0x3t
        -0x6at
        0x13t
        -0x6bt
        0x29t
        0x2ct
        -0x40t
        0x55t
        -0x14t
        -0x65t
        0x37t
        -0x7bt
        0x7dt
        0x23t
        -0x29t
        0x55t
        -0xct
        -0x69t
        0x36t
        -0x26t
        0x7dt
        0x24t
        -0x2et
        0x51t
        -0xft
        -0x64t
        0x6ft
    .end array-data

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
    :array_17
    .array-data 1
        -0xat
        0x5dt
        0x45t
        -0x4at
        0x3ct
        -0x68t
        -0xet
        0x52t
    .end array-data
.end method

.method public static f(Landroid/content/pm/PackageInstaller$Session;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const/16 v0, 0x12

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    new-array v2, v1, [B

    .line 18
    .line 19
    fill-array-data v2, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const/16 v3, 0x14

    .line 32
    .line 33
    new-array v3, v3, [B

    .line 34
    .line 35
    fill-array-data v3, :array_2

    .line 36
    .line 37
    .line 38
    new-array v1, v1, [B

    .line 39
    .line 40
    fill-array-data v1, :array_3

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void

    .line 61
    :array_0
    .array-data 1
        0x8t
        -0x46t
        -0x3ct
        -0x78t
        0x50t
        -0x77t
        0x33t
        0x70t
        0x76t
        -0x44t
        -0x18t
        -0x48t
        0x4ct
        -0x73t
        0x30t
        0x65t
        0x2ft
        -0x44t
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
    nop

    .line 75
    :array_1
    .array-data 1
        0x5bt
        -0x14t
        -0x7bt
        -0x5t
        0x23t
        -0x20t
        0x40t
        0x4t
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_2
    .array-data 1
        -0x66t
        0x1ct
        0x4dt
        -0x45t
        0x55t
        -0x69t
        -0x2ft
        0x26t
        -0x58t
        0x1at
        0x55t
        -0x48t
        0x5ft
        -0x51t
        -0x46t
        0x73t
        -0x5ct
        -0x70t
        -0x63t
        0x4et
    .end array-data

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
    .line 97
    :array_3
    .array-data 1
        -0x3ft
        0x7ft
        0x21t
        -0x2ct
        0x26t
        -0xet
        -0x80t
        0x53t
    .end array-data
.end method

.method public static g(Landroid/content/Context;Landroid/content/pm/PackageInstaller;I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const/high16 p2, 0x2000000

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p0, v1, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Le0/m;->f(Landroid/content/pm/PackageInstaller$Session;)V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Le0/m;->f(Landroid/content/pm/PackageInstaller$Session;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :goto_0
    invoke-static {v0}, Le0/m;->f(Landroid/content/pm/PackageInstaller$Session;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public static h([B[B)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    array-length v2, p1

    .line 5
    const/4 v3, 0x0

    .line 6
    move v4, v3

    .line 7
    move v5, v4

    .line 8
    :goto_0
    if-ge v4, v1, :cond_1

    .line 9
    .line 10
    if-lt v5, v2, :cond_0

    .line 11
    .line 12
    move v5, v3

    .line 13
    :cond_0
    aget-byte v6, p0, v4

    .line 14
    .line 15
    aget-byte v7, p1, v5

    .line 16
    .line 17
    xor-int/2addr v6, v7

    .line 18
    int-to-byte v6, v6

    .line 19
    aput-byte v6, p0, v4

    .line 20
    .line 21
    add-int/lit8 v4, v4, 0x1

    .line 22
    .line 23
    add-int/lit8 v5, v5, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static i(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [B

    .line 19
    .line 20
    fill-array-data v1, :array_0

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    new-array v2, v2, [B

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :array_0
    .array-data 1
        -0x11t
        0x7ct
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    nop

    .line 55
    :array_1
    .array-data 1
        -0x2bt
        0x5ct
        -0x44t
        -0x50t
        0x14t
        0x4et
        -0x38t
        0x4et
    .end array-data
.end method

.method public static j(Landroid/content/Context;)Le0/s;
    .locals 13

    .line 1
    const/16 v0, 0xd

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
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 24
    .line 25
    new-instance v3, Landroid/content/ComponentName;

    .line 26
    .line 27
    const-class v4, Lcom/example/navistart/DPups;

    .line 28
    .line 29
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const-string v5, ""

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    new-instance p0, Le0/s;

    .line 38
    .line 39
    const/16 v0, 0x1b

    .line 40
    .line 41
    new-array v0, v0, [B

    .line 42
    .line 43
    fill-array-data v0, :array_2

    .line 44
    .line 45
    .line 46
    new-array v1, v2, [B

    .line 47
    .line 48
    fill-array-data v1, :array_3

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p0, v4, v4, v5, v0}, Le0/s;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_0
    const/4 v6, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v7

    .line 70
    const/16 v8, 0x10

    .line 71
    .line 72
    new-array v8, v8, [B

    .line 73
    .line 74
    fill-array-data v8, :array_4

    .line 75
    .line 76
    .line 77
    new-array v9, v2, [B

    .line 78
    .line 79
    fill-array-data v9, :array_5

    .line 80
    .line 81
    .line 82
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v6, v8, v7}, Le0/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    move v7, v4

    .line 91
    :goto_0
    const/4 v8, 0x1

    .line 92
    :try_start_1
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-static {v9}, Le0/m;->a(Ljava/util/List;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-eqz v9, :cond_2

    .line 101
    .line 102
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 106
    move v10, v4

    .line 107
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-eqz v11, :cond_3

    .line 112
    .line 113
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    check-cast v11, Landroid/content/ComponentName;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    if-eqz v11, :cond_1

    .line 132
    .line 133
    move v10, v8

    .line 134
    goto :goto_1

    .line 135
    :catch_1
    move-exception p0

    .line 136
    goto :goto_2

    .line 137
    :catch_2
    move-exception p0

    .line 138
    move v10, v4

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    move v10, v4

    .line 141
    goto :goto_3

    .line 142
    :goto_2
    const/16 v9, 0xf

    .line 143
    .line 144
    new-array v9, v9, [B

    .line 145
    .line 146
    fill-array-data v9, :array_6

    .line 147
    .line 148
    .line 149
    new-array v11, v2, [B

    .line 150
    .line 151
    fill-array-data v11, :array_7

    .line 152
    .line 153
    .line 154
    invoke-static {v9, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-static {v6, v9, p0}, Le0/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    :cond_3
    :goto_3
    if-nez v10, :cond_4

    .line 163
    .line 164
    :try_start_3
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    .line 165
    .line 166
    .line 167
    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 168
    if-eqz p0, :cond_5

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :catch_3
    move-exception p0

    .line 172
    new-array v0, v0, [B

    .line 173
    .line 174
    fill-array-data v0, :array_8

    .line 175
    .line 176
    .line 177
    new-array v1, v2, [B

    .line 178
    .line 179
    fill-array-data v1, :array_9

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v6, v0, p0}, Le0/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    goto :goto_5

    .line 191
    :cond_4
    :goto_4
    move v4, v8

    .line 192
    :cond_5
    move v10, v4

    .line 193
    :goto_5
    new-instance p0, Le0/s;

    .line 194
    .line 195
    invoke-direct {p0, v7, v10, v5, v6}, Le0/s;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-object p0

    .line 199
    :array_0
    .array-data 1
        0x6ct
        0x6ft
        -0x5at
        0xbt
        -0x4bt
        -0x73t
        0x66t
        -0x4ft
        0x67t
        0x66t
        -0x47t
        0x1t
        -0x51t
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    nop

    .line 211
    :array_1
    .array-data 1
        0x8t
        0xat
        -0x30t
        0x62t
        -0x2at
        -0x18t
        0x39t
        -0x3ft
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_2
    .array-data 1
        0x4ft
        0x55t
        -0x3et
        -0x52t
        -0x7et
        0x9t
        0x77t
        -0x6ft
        0x67t
        0x59t
        -0x29t
        -0x42t
        -0x54t
        0xdt
        0x49t
        -0x61t
        0x6ct
        0x55t
        -0x3at
        -0x19t
        -0x78t
        0x1ft
        0x7t
        -0x70t
        0x7et
        0x5ct
        -0x28t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_3
    .array-data 1
        0xbt
        0x30t
        -0x4ct
        -0x39t
        -0x1ft
        0x6ct
        0x27t
        -0x2t
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_4
    .array-data 1
        -0x38t
        -0x37t
        0x28t
        0x7dt
        0x38t
        0x4bt
        -0x5bt
        -0x7et
        -0x12t
        -0x33t
        0x2t
        0x7dt
        0x3ct
        0x63t
        -0x4at
        -0x69t
    .end array-data

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
    :array_5
    .array-data 1
        -0x5ft
        -0x46t
        0x6ct
        0x18t
        0x4et
        0x22t
        -0x3at
        -0x19t
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_6
    .array-data 1
        0x56t
        0x1at
        0xat
        -0x42t
        -0x43t
        0x65t
        0x2t
        0x2ct
        0x54t
        0x3et
        0x1at
        -0x6et
        -0x49t
        0x7ft
        0x18t
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_7
    .array-data 1
        0x31t
        0x7ft
        0x7et
        -0x1t
        -0x22t
        0x11t
        0x6bt
        0x5at
    .end array-data

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_8
    .array-data 1
        0x45t
        -0x2dt
        0x1dt
        0x3at
        -0xbt
        -0x28t
        -0x6ct
        -0x1et
        0x4ft
        -0x2ct
        0x35t
        0x28t
        -0x3t
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    nop

    .line 297
    :array_9
    .array-data 1
        0x2ct
        -0x60t
        0x5ct
        0x5et
        -0x68t
        -0x4ft
        -0x6t
        -0x5dt
    .end array-data
.end method

.method public static k(Lcom/example/navistart/UpdateActivity;Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    if-eqz v3, :cond_3

    .line 10
    .line 11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_3

    .line 20
    .line 21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroid/content/ComponentName;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x1

    .line 43
    :try_start_1
    invoke-virtual {p1, v4}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x16

    .line 52
    .line 53
    new-array v6, v6, [B

    .line 54
    .line 55
    fill-array-data v6, :array_0

    .line 56
    .line 57
    .line 58
    new-array v7, v0, [B

    .line 59
    .line 60
    fill-array-data v7, :array_1

    .line 61
    .line 62
    .line 63
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {p3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v5

    .line 86
    if-nez v2, :cond_1

    .line 87
    .line 88
    move-object v2, v5

    .line 89
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const/16 v7, 0x1a

    .line 95
    .line 96
    new-array v7, v7, [B

    .line 97
    .line 98
    fill-array-data v7, :array_2

    .line 99
    .line 100
    .line 101
    new-array v8, v0, [B

    .line 102
    .line 103
    fill-array-data v8, :array_3

    .line 104
    .line 105
    .line 106
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {p3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_1
    move-exception p0

    .line 129
    if-nez v2, :cond_2

    .line 130
    .line 131
    move-object v2, p0

    .line 132
    :cond_2
    const/16 v3, 0x24

    .line 133
    .line 134
    new-array v3, v3, [B

    .line 135
    .line 136
    fill-array-data v3, :array_4

    .line 137
    .line 138
    .line 139
    new-array v4, v0, [B

    .line 140
    .line 141
    fill-array-data v4, :array_5

    .line 142
    .line 143
    .line 144
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {p3, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .line 150
    .line 151
    :cond_3
    if-nez v1, :cond_5

    .line 152
    .line 153
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 160
    .line 161
    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const/16 p1, 0x1f

    .line 168
    .line 169
    new-array p1, p1, [B

    .line 170
    .line 171
    fill-array-data p1, :array_6

    .line 172
    .line 173
    .line 174
    new-array v1, v0, [B

    .line 175
    .line 176
    fill-array-data v1, :array_7

    .line 177
    .line 178
    .line 179
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catch_2
    move-exception p0

    .line 202
    if-nez v2, :cond_4

    .line 203
    .line 204
    move-object v2, p0

    .line 205
    :cond_4
    const/16 p1, 0x21

    .line 206
    .line 207
    new-array p1, p1, [B

    .line 208
    .line 209
    fill-array-data p1, :array_8

    .line 210
    .line 211
    .line 212
    new-array p2, v0, [B

    .line 213
    .line 214
    fill-array-data p2, :array_9

    .line 215
    .line 216
    .line 217
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .line 223
    .line 224
    :cond_5
    :goto_1
    if-nez v2, :cond_6

    .line 225
    .line 226
    return-void

    .line 227
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 228
    .line 229
    const/16 p1, 0x2a

    .line 230
    .line 231
    new-array p1, p1, [B

    .line 232
    .line 233
    fill-array-data p1, :array_a

    .line 234
    .line 235
    .line 236
    new-array p2, v0, [B

    .line 237
    .line 238
    fill-array-data p2, :array_b

    .line 239
    .line 240
    .line 241
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-direct {p0, p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    throw p0

    .line 249
    :array_0
    .array-data 1
        -0x6bt
        -0x38t
        0x27t
        -0x2bt
        0x43t
        -0x13t
        0x33t
        0x2t
        -0x6dt
        -0x3ct
        0x3ct
        -0x21t
        0x74t
        -0x14t
        0x1ft
        0x8t
        -0x77t
        -0x73t
        0x25t
        -0x2ft
        0xft
        -0x58t
    .end array-data

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
    nop

    .line 265
    :array_1
    .array-data 1
        -0x19t
        -0x53t
        0x4at
        -0x46t
        0x35t
        -0x78t
        0x72t
        0x61t
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_2
    .array-data 1
        0x1at
        0x5et
        -0xbt
        0x17t
        0x5at
        -0x62t
        -0x41t
        0x4dt
        0x1ct
        0x52t
        -0x12t
        0x1dt
        0x6dt
        -0x61t
        -0x6dt
        0x47t
        0x6t
        0x1bt
        -0x2t
        0x19t
        0x45t
        -0x69t
        -0x65t
        0x4at
        0x52t
        0x1bt
    .end array-data

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
    .line 289
    .line 290
    nop

    .line 291
    :array_3
    .array-data 1
        0x68t
        0x3bt
        -0x68t
        0x78t
        0x2ct
        -0x5t
        -0x2t
        0x2et
    .end array-data

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_4
    .array-data 1
        0x2ft
        -0x5at
        0x1ft
        0x7ct
        -0x6ft
        -0x43t
        0x5ct
        -0x29t
        0x2dt
        -0x7et
        0xft
        0x50t
        -0x65t
        -0x59t
        0x46t
        -0x7ft
        0x2et
        -0x5et
        0x2t
        0x51t
        -0x69t
        -0x53t
        0x15t
        -0x3dt
        0x2dt
        -0x5bt
        0x4t
        0x4ft
        -0x69t
        -0x17t
        0x47t
        -0x3ct
        0x25t
        -0x54t
        0x1dt
        0x58t
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
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
    .line 321
    :array_5
    .array-data 1
        0x48t
        -0x3dt
        0x6bt
        0x3dt
        -0xet
        -0x37t
        0x35t
        -0x5ft
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_6
    .array-data 1
        -0xbt
        0x4at
        0x18t
        0x48t
        -0x1ft
        0xat
        0x13t
        -0x60t
        -0xdt
        0x46t
        0x3t
        0x42t
        -0x2at
        0xbt
        0x3ft
        -0x56t
        -0x17t
        0xft
        0x13t
        0x46t
        -0x5t
        0x3t
        0x30t
        -0x5et
        -0x1ct
        0x44t
        0x55t
        0x48t
        -0x4t
        0x55t
        0x72t
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
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :array_7
    .array-data 1
        -0x79t
        0x2ft
        0x75t
        0x27t
        -0x69t
        0x6ft
        0x52t
        -0x3dt
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_8
    .array-data 1
        0x50t
        -0x9t
        0x17t
        0x6ft
        0x19t
        0x16t
        0x6dt
        0x4ct
        0x56t
        -0x5t
        0xct
        0x65t
        0x2et
        0x17t
        0x41t
        0x46t
        0x4ct
        -0x4et
        0x1ct
        0x61t
        0x3t
        0x1ft
        0x4et
        0x4et
        0x41t
        -0x7t
        0x5at
        0x66t
        0xet
        0x1at
        0x40t
        0x4at
        0x46t
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    nop

    .line 379
    :array_9
    .array-data 1
        0x22t
        -0x6et
        0x7at
        0x0t
        0x6ft
        0x73t
        0x2ct
        0x2ft
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_a
    .array-data 1
        -0x20t
        -0x26t
        0xbt
        -0x44t
        -0x6t
        -0x2ct
        -0x4ft
        0x65t
        -0x37t
        -0x65t
        0x10t
        -0x4bt
        -0xet
        -0x21t
        -0x19t
        0x74t
        -0x7at
        -0x2ct
        0xct
        -0x4bt
        -0x41t
        -0x21t
        -0x1dt
        0x31t
        -0x35t
        -0x2ct
        0x10t
        -0x4bt
        -0x41t
        -0x2ft
        -0xet
        0x65t
        -0x31t
        -0x33t
        0x7t
        -0x10t
        -0x2t
        -0x2ct
        -0x4t
        0x78t
        -0x38t
        -0x38t
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    nop

    .line 413
    :array_b
    .array-data 1
        -0x5at
        -0x45t
        0x62t
        -0x30t
        -0x61t
        -0x50t
        -0x6ft
        0x11t
    .end array-data
.end method

.method public static l(Lcom/example/navistart/MainActivity;ZZZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->H:Lcom/example/navistart/mainview/HeatManSetView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    move p2, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p2, v1

    .line 11
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/example/navistart/MainActivity;->I:Lcom/example/navistart/mainview/HeatManSetView;

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    move p3, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move p3, v1

    .line 21
    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/example/navistart/MainActivity;->J:Lcom/example/navistart/mainview/HeatManSetView;

    .line 25
    .line 26
    if-eqz p4, :cond_2

    .line 27
    .line 28
    move p3, v2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move p3, v1

    .line 31
    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/example/navistart/MainActivity;->O:Landroidx/cardview/widget/CardView;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static m(Lcom/example/navistart/MainActivity;Lcom/example/navistart/cores/BezFunEnum;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/navistart/MainActivity;->d1:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p1, 0x8

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public static n(Lcom/example/navistart/MainActivity;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->W0:Landroidx/cardview/widget/CardView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 p1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Le0/m;->w(Lcom/example/navistart/MainActivity;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static o(Lcom/example/navistart/MainActivity;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/navistart/MainActivity;->L:Landroidx/cardview/widget/CardView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 p1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static p(Lcom/example/navistart/MainActivity;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, v0, v0, v0}, Le0/m;->l(Lcom/example/navistart/MainActivity;ZZZZ)V

    .line 3
    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x1

    .line 10
    move-object v1, p0

    .line 11
    invoke-static/range {v1 .. v6}, Le0/m;->t(Lcom/example/navistart/MainActivity;ZZZZZ)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Le0/m;->n(Lcom/example/navistart/MainActivity;Z)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lcom/example/navistart/cores/BezFunEnum;->ID_CAR_SPD_LIMIT_WARN_SET:Lcom/example/navistart/cores/BezFunEnum;

    .line 18
    .line 19
    invoke-static {v1, p0, v0}, Le0/m;->m(Lcom/example/navistart/MainActivity;Lcom/example/navistart/cores/BezFunEnum;Z)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lcom/example/navistart/cores/BezFunEnum;->ID_SPD_LIMIT_VALUE_CHANGE:Lcom/example/navistart/cores/BezFunEnum;

    .line 23
    .line 24
    invoke-static {v1, p0, v0}, Le0/m;->m(Lcom/example/navistart/MainActivity;Lcom/example/navistart/cores/BezFunEnum;Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0, v0}, Le0/m;->q(Lcom/example/navistart/MainActivity;ZZ)V

    .line 28
    .line 29
    .line 30
    iget-object p0, v1, Lcom/example/navistart/MainActivity;->Y0:Landroidx/cardview/widget/CardView;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Le0/m;->o(Lcom/example/navistart/MainActivity;Z)V

    .line 37
    .line 38
    .line 39
    iget-object p0, v1, Lcom/example/navistart/MainActivity;->M:Landroidx/cardview/widget/CardView;

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p0, v1, Lcom/example/navistart/MainActivity;->N:Landroidx/cardview/widget/CardView;

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0, v0}, Le0/m;->v(Lcom/example/navistart/MainActivity;ZZ)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v0}, Le0/m;->r(Lcom/example/navistart/MainActivity;Z)V

    .line 53
    .line 54
    .line 55
    iget-object p0, v1, Lcom/example/navistart/MainActivity;->Q:Landroidx/cardview/widget/CardView;

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p0, v1, Lcom/example/navistart/MainActivity;->b0:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Le0/m;->w(Lcom/example/navistart/MainActivity;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, v1, Lcom/example/navistart/MainActivity;->c0:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v0}, Le0/m;->u(Lcom/example/navistart/MainActivity;Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0}, Le0/m;->s(Lcom/example/navistart/MainActivity;Z)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static q(Lcom/example/navistart/MainActivity;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->T:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move p1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/example/navistart/MainActivity;->U:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static r(Lcom/example/navistart/MainActivity;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/navistart/MainActivity;->a1:Lcom/example/navistart/mainview/MainWidjet;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 p1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static s(Lcom/example/navistart/MainActivity;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/navistart/MainActivity;->c1:Lcom/example/navistart/mainview/MainView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 p1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static t(Lcom/example/navistart/MainActivity;ZZZZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->R:Landroidx/cardview/widget/CardView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move p1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/example/navistart/MainActivity;->X:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    move p2, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move p2, v1

    .line 21
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/example/navistart/MainActivity;->V:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    if-eqz p3, :cond_2

    .line 27
    .line 28
    move p2, v2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move p2, v1

    .line 31
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/example/navistart/MainActivity;->W:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    if-eqz p4, :cond_3

    .line 37
    .line 38
    move p2, v2

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move p2, v1

    .line 41
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/example/navistart/MainActivity;->Y:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    if-eqz p5, :cond_4

    .line 47
    .line 48
    move v1, v2

    .line 49
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Le0/m;->w(Lcom/example/navistart/MainActivity;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static u(Lcom/example/navistart/MainActivity;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->k0:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/example/navistart/MainActivity;->l0:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static v(Lcom/example/navistart/MainActivity;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->P:Landroidx/cardview/widget/CardView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move p1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/example/navistart/MainActivity;->Z0:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v1

    .line 21
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/example/navistart/MainActivity;->b1:Landroid/widget/Button;

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static w(Lcom/example/navistart/MainActivity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->V:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->W:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->b0:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->d0:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/example/navistart/MainActivity;->W0:Landroidx/cardview/widget/CardView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v0, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 46
    :goto_1
    iget-object p0, p0, Lcom/example/navistart/MainActivity;->S:Landroidx/cardview/widget/CardView;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v1, 0x8

    .line 52
    .line 53
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static x(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gtz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v2, 0x2d0

    .line 21
    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    int-to-float v1, v1

    .line 26
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 27
    .line 28
    div-float v2, v1, v2

    .line 29
    .line 30
    const/high16 v3, 0x44340000    # 720.0f

    .line 31
    .line 32
    div-float/2addr v1, v3

    .line 33
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .line 35
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 44
    .line 45
    div-float v0, v1, v0

    .line 46
    .line 47
    const/high16 v2, 0x3f800000    # 1.0f

    .line 48
    .line 49
    sub-float/2addr v0, v2

    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const v2, 0x3d4ccccd    # 0.05f

    .line 55
    .line 56
    .line 57
    cmpg-float v0, v0, v2

    .line 58
    .line 59
    if-gez v0, :cond_2

    .line 60
    .line 61
    :goto_0
    return-object p0

    .line 62
    :cond_2
    new-instance v0, Landroid/content/res/Configuration;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 73
    .line 74
    .line 75
    const/high16 v2, 0x43200000    # 160.0f

    .line 76
    .line 77
    mul-float/2addr v1, v2

    .line 78
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method

.method public static y(Landroid/content/pm/PackageInstaller$Session;Ljava/io/File;[JJ)Z
    .locals 9

    .line 1
    const/16 p3, 0x8

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    .line 5
    .line 6
    new-instance v0, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    const/high16 p1, 0x100000

    .line 15
    .line 16
    :try_start_1
    new-array p1, p1, [B

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x4

    .line 36
    new-array v3, v3, [B

    .line 37
    .line 38
    fill-array-data v3, :array_0

    .line 39
    .line 40
    .line 41
    new-array v4, p3, [B

    .line 42
    .line 43
    fill-array-data v4, :array_1

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-wide/16 v5, 0x0

    .line 71
    .line 72
    const-wide/16 v7, -0x1

    .line 73
    .line 74
    move-object v3, p0

    .line 75
    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    .line 76
    .line 77
    .line 78
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :goto_1
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v2, -0x1

    .line 84
    if-eq v0, v2, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0, p1, p4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 87
    .line 88
    .line 89
    aget-wide v4, p2, p4

    .line 90
    .line 91
    int-to-long v6, v0

    .line 92
    add-long/2addr v4, v6

    .line 93
    aput-wide v4, p2, p4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    move-object p1, v0

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    invoke-virtual {v3, p0}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    move-object p0, v0

    .line 110
    goto :goto_5

    .line 111
    :cond_3
    :goto_2
    move-object p0, v3

    .line 112
    goto :goto_0

    .line 113
    :goto_3
    if-eqz p0, :cond_4

    .line 114
    .line 115
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :catchall_2
    move-exception v0

    .line 120
    move-object p0, v0

    .line 121
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_4
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    :cond_5
    const/4 p0, 0x1

    .line 126
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 127
    .line 128
    .line 129
    return p0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    move-object p0, v0

    .line 132
    goto :goto_7

    .line 133
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 134
    .line 135
    .line 136
    goto :goto_6

    .line 137
    :catchall_3
    move-exception v0

    .line 138
    move-object p1, v0

    .line 139
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :goto_6
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 143
    :goto_7
    const/4 p1, 0x7

    .line 144
    new-array p1, p1, [B

    .line 145
    .line 146
    fill-array-data p1, :array_2

    .line 147
    .line 148
    .line 149
    new-array p2, p3, [B

    .line 150
    .line 151
    fill-array-data p2, :array_3

    .line 152
    .line 153
    .line 154
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const/16 p2, 0x10

    .line 159
    .line 160
    new-array p2, p2, [B

    .line 161
    .line 162
    fill-array-data p2, :array_4

    .line 163
    .line 164
    .line 165
    new-array p3, p3, [B

    .line 166
    .line 167
    fill-array-data p3, :array_5

    .line 168
    .line 169
    .line 170
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .line 176
    .line 177
    return p4

    .line 178
    nop

    .line 179
    :array_0
    .array-data 1
        0x78t
        -0x2dt
        -0x17t
        0x4ct
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_1
    .array-data 1
        0x56t
        -0x4et
        -0x67t
        0x27t
        -0x27t
        -0x11t
        0x7dt
        -0x15t
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_2
    .array-data 1
        -0x3at
        0x33t
        0x1at
        -0x1bt
        0x5t
        0x6bt
        -0x2ft
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_3
    .array-data 1
        -0x71t
        0x7dt
        0x49t
        -0x4ft
        0x44t
        0x27t
        -0x63t
        -0x10t
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_4
    .array-data 1
        -0x1ct
        -0x5dt
        -0x3dt
        -0x7dt
        0x63t
        -0x61t
        0x12t
        0x7ct
        -0x25t
        -0x36t
        -0xbt
        -0x3et
        0x7dt
        -0x7ft
        0x1et
        0x6ct
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
    :array_5
    .array-data 1
        -0x42t
        -0x16t
        -0x6dt
        -0x5dt
        0x14t
        -0x13t
        0x7bt
        0x8t
    .end array-data
.end method
