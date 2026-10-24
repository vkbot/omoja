.class public final Lw0/d;
.super Lw0/q;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lw0/d;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lw0/q;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw0/d;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lw0/d;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/slider/h;->y1(Landroid/view/ViewGroup;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw0/d;->a:Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lw0/d;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/slider/h;->y1(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final d(Lw0/p;)V
    .locals 2

    iget-boolean v0, p0, Lw0/d;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lw0/d;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/slider/h;->y1(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Lw0/p;->v(Lw0/o;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lw0/d;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/slider/h;->y1(Landroid/view/ViewGroup;Z)V

    return-void
.end method
