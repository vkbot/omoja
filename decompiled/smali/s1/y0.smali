.class public final Ls1/y0;
.super Landroidx/activity/OnBackPressedCallback;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lcom/example/navistart/home/WebLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/example/navistart/home/WebLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/y0;->a:Lcom/example/navistart/home/WebLauncherActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/y0;->a:Lcom/example/navistart/home/WebLauncherActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/example/navistart/home/WebLauncherActivity;->i:Ls1/q0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-boolean v3, v1, Ls1/q0;->s:Z

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v1, Ls1/q0;->u:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    :cond_1
    invoke-virtual {v1, v0}, Ls1/q0;->u(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ls1/q0;->y()V

    .line 23
    .line 24
    .line 25
    iput-boolean v2, v1, Ls1/q0;->s:Z

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, v1, Ls1/q0;->v:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, v1, Ls1/q0;->u:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, v1, Ls1/q0;->f:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const/16 v3, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ls1/q0;->A()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ls1/q0;->F()V

    .line 43
    .line 44
    .line 45
    iget-object v0, v1, Ls1/q0;->b:Ln/p;

    .line 46
    .line 47
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/example/navistart/home/WebLauncherActivity;

    .line 50
    .line 51
    iput-boolean v2, v0, Lcom/example/navistart/home/WebLauncherActivity;->j:Z

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/example/navistart/home/WebLauncherActivity;->t()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/example/navistart/home/WebLauncherActivity;->d:Ls1/k;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iget-boolean v1, v0, Ls1/k;->j:Z

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ls1/k;->j(Z)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iget-object v1, v0, Ls1/k;->b:Ls1/r;

    .line 70
    .line 71
    invoke-virtual {v1}, Ls1/r;->f()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    iget-boolean v1, v0, Ls1/k;->i:Z

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Ls1/k;->l()V

    .line 82
    .line 83
    .line 84
    :cond_4
    return-void
.end method
