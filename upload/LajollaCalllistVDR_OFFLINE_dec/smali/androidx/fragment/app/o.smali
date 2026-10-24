.class public final Landroidx/fragment/app/o;
.super Ly1/l;
.source "SourceFile"


# instance fields
.field public final synthetic u:Ly1/l;

.field public final synthetic v:Landroidx/fragment/app/p;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p;Landroidx/fragment/app/q;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/o;->v:Landroidx/fragment/app/p;

    iput-object p2, p0, Landroidx/fragment/app/o;->u:Ly1/l;

    invoke-direct {p0}, Ly1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final X0(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/o;->u:Ly1/l;

    invoke-virtual {v0}, Ly1/l;->Y0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ly1/l;->X0(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/o;->v:Landroidx/fragment/app/p;

    iget-object p0, p0, Landroidx/fragment/app/p;->d0:Landroid/app/Dialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final Y0()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o;->u:Ly1/l;

    invoke-virtual {v0}, Ly1/l;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/o;->v:Landroidx/fragment/app/p;

    iget-boolean p0, p0, Landroidx/fragment/app/p;->g0:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
