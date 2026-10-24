.class public abstract Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/h1;

.field public final b:Lc0/c;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h1;Lc0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/h1;

    iput-object p2, p0, Landroidx/fragment/app/i;->b:Lc0/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/h1;

    iget-object v1, v0, Landroidx/fragment/app/h1;->e:Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/fragment/app/i;->b:Lc0/c;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/h1;->b()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/h1;

    iget-object v1, v0, Landroidx/fragment/app/h1;->c:Landroidx/fragment/app/t;

    iget-object v1, v1, Landroidx/fragment/app/t;->F:Landroid/view/View;

    invoke-static {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    iget-object v0, v0, Landroidx/fragment/app/h1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v1, v0, :cond_1

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v1, v2, :cond_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
