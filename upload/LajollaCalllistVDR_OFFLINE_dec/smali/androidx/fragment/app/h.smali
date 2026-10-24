.class public final Landroidx/fragment/app/h;
.super Landroidx/fragment/app/i;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public d:Z

.field public e:Landroidx/fragment/app/z;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/g1;Ld0/c;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/g1;Ld0/c;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/h;->d:Z

    iput-boolean p3, p0, Landroidx/fragment/app/h;->c:Z

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Landroidx/fragment/app/z;
    .locals 4

    iget-boolean v0, p0, Landroidx/fragment/app/h;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/h;->e:Landroidx/fragment/app/z;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    iget-object v1, v0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    iget-object v0, v0, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/h;->c:Z

    invoke-static {p1, v1, v0, v2}, Ly1/l;->O0(Landroid/content/Context;Landroidx/fragment/app/t;ZZ)Landroidx/fragment/app/z;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/h;->e:Landroidx/fragment/app/z;

    iput-boolean v3, p0, Landroidx/fragment/app/h;->d:Z

    return-object p1
.end method
