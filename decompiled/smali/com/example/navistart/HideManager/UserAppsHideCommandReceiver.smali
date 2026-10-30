.class public Lcom/example/navistart/HideManager/UserAppsHideCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x30

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
    sput-object v0, Lcom/example/navistart/HideManager/UserAppsHideCommandReceiver;->a:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0xf

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
    sput-object v0, Lcom/example/navistart/HideManager/UserAppsHideCommandReceiver;->b:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 1
        -0x1dt
        0x71t
        0x2t
        -0x4bt
        0x61t
        0x3ft
        0x7dt
        -0x73t
        -0x10t
        0x72t
        0xat
        -0x4bt
        0x6at
        0x26t
        0x6at
        -0x77t
        -0xdt
        0x6at
        0xet
        -0x17t
        0x70t
        0x69t
        0x7dt
        -0x7dt
        -0xct
        0x77t
        0x0t
        -0xbt
        0x2at
        0x12t
        0x4ft
        -0x5bt
        -0x2et
        0x41t
        0x2et
        -0x35t
        0x54t
        0x14t
        0x43t
        -0x58t
        -0x37t
        0x5at
        0x2at
        -0x3ct
        0x4bt
        0x17t
        0x59t
        -0x52t
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
    .line 53
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
    .line 68
    .line 69
    :array_1
    .array-data 1
        -0x80t
        0x1et
        0x6ft
        -0x65t
        0x4t
        0x47t
        0x1ct
        -0x20t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_2
    .array-data 1
        -0x27t
        0x20t
        0x18t
        -0x5ct
        0x23t
        0x78t
        0xat
        0x25t
        -0x3ct
        0x3at
        0x19t
        -0x4dt
        0x23t
        0x6ct
        0x18t
    .end array-data

    :array_3
    .array-data 1
        -0x74t
        0x53t
        0x7dt
        -0x2at
        0x62t
        0x8t
        0x7at
        0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/example/navistart/HideManager/UserAppsHideCommandReceiver;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Lp0/e;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Lp0/e;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p2, v0}, Lp0/e;->f(Lp0/d;)Lo7/i4;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {}, Lp0/j;->b()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x1c

    .line 39
    .line 40
    new-array v1, v1, [B

    .line 41
    .line 42
    fill-array-data v1, :array_0

    .line 43
    .line 44
    .line 45
    const/16 v2, 0x8

    .line 46
    .line 47
    new-array v3, v2, [B

    .line 48
    .line 49
    fill-array-data v3, :array_1

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v1, p2, Lo7/i4;->b:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x6

    .line 65
    new-array v1, v1, [B

    .line 66
    .line 67
    fill-array-data v1, :array_2

    .line 68
    .line 69
    .line 70
    new-array v2, v2, [B

    .line 71
    .line 72
    fill-array-data v2, :array_3

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget p2, p2, Lo7/i4;->c:I

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    sget-object v0, Lcom/example/navistart/HideManager/UserAppsHideCommandReceiver;->b:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/example/navistart/SystemMessageReceiver;->a(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_0
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 1
        -0xet
        0x3ct
        -0x5et
        0x6at
        -0x80t
        0x4ft
        0x6dt
        -0x3bt
        -0x8t
        0x6ct
        -0x4bt
        0x61t
        -0x2ft
        0x57t
        0x67t
        -0x2et
        -0x17t
        0x29t
        -0x5dt
        0x24t
        -0x2dt
        0x57t
        0x61t
        -0x3et
        -0x8t
        0x3ft
        -0x4ct
        0x39t
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
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 1
        -0x63t
        0x4ct
        -0x39t
        0x4t
        -0x60t
        0x22t
        0x2t
        -0x5ft
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_2
    .array-data 1
        -0x6at
        0x55t
        0xet
        -0x1ct
        0x65t
        0xat
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_3
    .array-data 1
        -0x4at
        0x33t
        0x6ft
        -0x73t
        0x9t
        0x37t
        -0x15t
        -0x67t
    .end array-data
.end method
