.class public final Lr0/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Le0/d0;

.field public final b:Lcom/example/navistart/LounchB;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lr0/a;->c:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 1
        0x25t
        -0x2at
        -0x5at
        0x9t
        0x5bt
        0xat
        0x60t
        0x2bt
        0x3ct
        -0x36t
        -0x5bt
        0x13t
        0x6dt
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    nop

    .line 35
    :array_1
    .array-data 1
        0x48t
        -0x5dt
        -0x36t
        0x7dt
        0x32t
        0x55t
        0x1t
        0x48t
    .end array-data
.end method

.method public constructor <init>(Lcom/example/navistart/LounchB;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr0/a;->b:Lcom/example/navistart/LounchB;

    .line 5
    .line 6
    new-instance v0, Le0/d0;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Le0/d0;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lr0/a;->a:Le0/d0;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lr0/a;->b:Lcom/example/navistart/LounchB;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x7

    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    const/16 v3, 0x8

    .line 24
    .line 25
    new-array v4, v3, [B

    .line 26
    .line 27
    fill-array-data v4, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    array-length v2, v1

    .line 45
    if-le v2, p1, :cond_1

    .line 46
    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v4, 0x1a

    .line 50
    .line 51
    if-lt v2, v4, :cond_0

    .line 52
    .line 53
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    aget-object p1, v1, p1

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-static {v2, p1}, Lc5/h;->b(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    const/4 p1, 0x0

    .line 71
    :goto_0
    const/high16 v1, 0x10000000

    .line 72
    .line 73
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x16

    .line 77
    .line 78
    new-array v1, v1, [B

    .line 79
    .line 80
    fill-array-data v1, :array_2

    .line 81
    .line 82
    .line 83
    new-array v2, v3, [B

    .line 84
    .line 85
    fill-array-data v2, :array_3

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p2, p1}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void

    .line 103
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :array_0
    .array-data 1
        -0x59t
        -0x50t
        -0x31t
        0x57t
        0x2bt
        -0x78t
        0xft
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 1
        -0x3dt
        -0x27t
        -0x44t
        0x27t
        0x47t
        -0x17t
        0x76t
        0x78t
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_2
    .array-data 1
        0x46t
        -0x1dt
        0x5bt
        0x61t
        -0x7ct
        0x48t
        0x3dt
        -0x4dt
        0x6at
        -0xet
        0x41t
        0x66t
        -0x7ct
        0x52t
        0x6et
        -0xft
        0x6ct
        -0x4dt
        0x41t
        0x7dt
        -0x79t
        0x4at
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
    :array_3
    .array-data 1
        0x9t
        -0x6dt
        0x2ft
        0x8t
        -0x15t
        0x26t
        0x4et
        -0x6dt
    .end array-data
.end method
