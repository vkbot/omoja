.class public Lcom/example/navistart/ZaglushkaActivity;
.super Landroid/app/Activity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/example/navistart/BlackActivity;->t(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0c002d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    new-array v2, v0, [B

    .line 33
    .line 34
    fill-array-data v2, :array_0

    .line 35
    .line 36
    .line 37
    new-array v3, v0, [B

    .line 38
    .line 39
    fill-array-data v3, :array_1

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    :cond_0
    const/16 p1, 0x11

    .line 51
    .line 52
    new-array p1, p1, [B

    .line 53
    .line 54
    fill-array-data p1, :array_2

    .line 55
    .line 56
    .line 57
    new-array v0, v0, [B

    .line 58
    .line 59
    fill-array-data v0, :array_3

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 v0, -0x1

    .line 67
    invoke-static {v0, p1}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, La4/g;

    .line 72
    .line 73
    const/16 v2, 0x17

    .line 74
    .line 75
    invoke-direct {v0, v2, p0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    int-to-long v1, v1

    .line 79
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :array_0
    .array-data 1
        -0xat
        0x20t
        -0x71t
        0x57t
        -0x1ct
        -0x6at
        -0x38t
        0x4dt
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 1
        -0x7et
        0x49t
        -0x1et
        0x33t
        -0x7ft
        -0x6t
        -0x53t
        0x34t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_2
    .array-data 1
        -0x24t
        -0x6ct
        -0x4at
        0x6dt
        -0x3ft
        -0x53t
        0x41t
        -0xft
        -0x19t
        -0x4ct
        -0x4et
        0x75t
        -0x23t
        -0x58t
        0x40t
        -0x12t
        -0x1t
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
    nop

    .line 115
    :array_3
    .array-data 1
        -0x7at
        -0xbt
        -0x2ft
        0x1t
        -0x4ct
        -0x22t
        0x29t
        -0x66t
    .end array-data
.end method
