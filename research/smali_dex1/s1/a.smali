.class public final Ls1/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Ls1/b;


# direct methods
.method public constructor <init>(Ls1/b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls1/a;->a:Ls1/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    iget-object p1, p0, Ls1/a;->a:Ls1/b;

    .line 2
    .line 3
    iget-boolean v0, p1, Ls1/b;->j:Z

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    check-cast p2, Ls1/y;

    .line 9
    .line 10
    iget-object p2, p2, Ls1/y;->c:Lcom/example/navistart/home/LauncherWindowService;

    .line 11
    .line 12
    iput-object p2, p1, Ls1/b;->g:Lcom/example/navistart/home/LauncherWindowService;

    .line 13
    .line 14
    invoke-virtual {p1}, Ls1/b;->a()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Ls1/a;->a:Ls1/b;

    .line 3
    .line 4
    iput-object p1, v0, Ls1/b;->g:Lcom/example/navistart/home/LauncherWindowService;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, v0, Ls1/b;->o:I

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v0, Ls1/b;->m:Z

    .line 11
    .line 12
    const/16 p1, 0x26

    .line 13
    .line 14
    new-array p1, p1, [B

    .line 15
    .line 16
    fill-array-data p1, :array_22

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_3a

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ls1/b;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_22
    .array-data 1
        -0x44t
        -0x36t
        0x59t
        0x11t
        -0x13t
        0x24t
        -0x9t
        0x23t
        -0x44t
        -0x2dt
        0x58t
        0x25t
        0x1ct
        0x74t
        -0x67t
        0x41t
        -0x2at
        -0x45t
        0x37t
        0x74t
        -0x7ft
        -0x7ct
        -0x9t
        0x2ft
        -0x43t
        -0x17t
        0x59t
        0x1et
        -0x14t
        0x1ft
        -0xat
        0x1ft
        -0x43t
        -0x14t
        0x58t
        0x35t
        -0x14t
        0x19t
    .end array-data

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
    nop

    .line 59
    :array_3a
    .array-data 1
        0x6ct
        0x6bt
        -0x77t
        -0x5ct
        0x3ct
        -0x5ct
        0x27t
        -0x6ft
    .end array-data
.end method
