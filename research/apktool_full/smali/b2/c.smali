.class public final Lb2/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le2/e;


# instance fields
.field public final a:Ln/p;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/net/URL;

.field public final e:Lm2/a;

.field public final f:Lm2/a;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm2/a;Lm2/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz4/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lz4/c;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lc2/c;->a:Lc2/c;

    .line 10
    .line 11
    const-class v2, Lc2/p;

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 14
    .line 15
    .line 16
    const-class v2, Lc2/i;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 19
    .line 20
    .line 21
    sget-object v1, Lc2/f;->a:Lc2/f;

    .line 22
    .line 23
    const-class v2, Lc2/t;

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 26
    .line 27
    .line 28
    const-class v2, Lc2/m;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 31
    .line 32
    .line 33
    sget-object v1, Lc2/d;->a:Lc2/d;

    .line 34
    .line 35
    const-class v2, Lc2/r;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 38
    .line 39
    .line 40
    const-class v2, Lc2/j;

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 43
    .line 44
    .line 45
    sget-object v1, Lc2/b;->a:Lc2/b;

    .line 46
    .line 47
    const-class v2, Lc2/a;

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 50
    .line 51
    .line 52
    const-class v2, Lc2/h;

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 55
    .line 56
    .line 57
    sget-object v1, Lc2/e;->a:Lc2/e;

    .line 58
    .line 59
    const-class v2, Lc2/s;

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 62
    .line 63
    .line 64
    const-class v2, Lc2/l;

    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 67
    .line 68
    .line 69
    sget-object v1, Lc2/g;->a:Lc2/g;

    .line 70
    .line 71
    const-class v2, Lc2/w;

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 74
    .line 75
    .line 76
    const-class v2, Lc2/o;

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Lz4/c;->a(Ljava/lang/Class;Lx4/d;)Ly4/a;

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    iput-boolean v1, v0, Lz4/c;->d:Z

    .line 83
    .line 84
    new-instance v1, Ln/p;

    .line 85
    .line 86
    const/16 v2, 0x14

    .line 87
    .line 88
    invoke-direct {v1, v2, v0}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lb2/c;->a:Ln/p;

    .line 92
    .line 93
    iput-object p1, p0, Lb2/c;->c:Landroid/content/Context;

    .line 94
    .line 95
    const-string v0, "connectivity"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 102
    .line 103
    iput-object p1, p0, Lb2/c;->b:Landroid/net/ConnectivityManager;

    .line 104
    .line 105
    sget-object p1, Lb2/a;->c:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1}, Lb2/c;->a(Ljava/lang/String;)Ljava/net/URL;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lb2/c;->d:Ljava/net/URL;

    .line 112
    .line 113
    iput-object p3, p0, Lb2/c;->e:Lm2/a;

    .line 114
    .line 115
    iput-object p2, p0, Lb2/c;->f:Lm2/a;

    .line 116
    .line 117
    const p1, 0x1fbd0

    .line 118
    .line 119
    .line 120
    iput p1, p0, Lb2/c;->g:I

    .line 121
    .line 122
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v2, "Invalid url: "

    .line 11
    .line 12
    invoke-static {v2, p0}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method
