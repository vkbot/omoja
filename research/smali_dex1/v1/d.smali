.class public final Lv1/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static b:Lv1/d;


# instance fields
.field public final a:Landroidx/lifecycle/ViewModelProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/example/navistart/MyApplication;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 5
    .line 6
    check-cast p1, Landroid/app/Application;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p2, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lv1/d;->a:Landroidx/lifecycle/ViewModelProvider;

    .line 16
    .line 17
    return-void
.end method

.method public static a()Lv1/d;
    .registers 2

    .line 1
    sget-object v0, Lv1/d;->b:Lv1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    const/16 v0, 0x26

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    fill-array-data v0, :array_1c

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    fill-array-data v1, :array_34

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :array_1c
    .array-data 1
        0x5dt
        -0x4ct
        0x57t
        -0x2ft
        0x6bt
        -0x12t
        -0x1t
        -0x45t
        0x67t
        -0x67t
        0x5bt
        -0x2bt
        0x56t
        -0x20t
        -0x11t
        -0x43t
        0x63t
        -0x48t
        0x40t
        -0x7at
        0x4ft
        -0xet
        -0x45t
        -0x50t
        0x64t
        -0x57t
        0x12t
        -0x31t
        0x48t
        -0x18t
        -0x11t
        -0x49t
        0x6at
        -0x4ft
        0x5bt
        -0x24t
        0x43t
        -0x1bt
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
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
    nop

    .line 53
    :array_34
    .array-data 1
        0xbt
        -0x23t
        0x32t
        -0x5at
        0x26t
        -0x7ft
        -0x65t
        -0x22t
    .end array-data
.end method


# virtual methods
.method public final b()Lv1/a;
    .registers 3

    .line 1
    const-class v0, Lv1/a;

    .line 2
    .line 3
    iget-object v1, p0, Lv1/d;->a:Landroidx/lifecycle/ViewModelProvider;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lv1/a;

    .line 10
    .line 11
    return-object v0
.end method

.method public final c()Li7/s;
    .registers 3

    .line 1
    const-class v0, Li7/s;

    .line 2
    .line 3
    iget-object v1, p0, Lv1/d;->a:Landroidx/lifecycle/ViewModelProvider;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Li7/s;

    .line 10
    .line 11
    return-object v0
.end method

.method public final d()Lv1/c;
    .registers 3

    .line 1
    const-class v0, Lv1/c;

    .line 2
    .line 3
    iget-object v1, p0, Lv1/d;->a:Landroidx/lifecycle/ViewModelProvider;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lv1/c;

    .line 10
    .line 11
    return-object v0
.end method
