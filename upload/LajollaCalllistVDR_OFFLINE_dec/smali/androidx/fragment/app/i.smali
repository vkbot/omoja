.class public abstract Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/g1;

.field public final b:Ld0/c;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/g1;Ld0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    iput-object p2, p0, Landroidx/fragment/app/i;->b:Ld0/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    iget-object v1, v0, Landroidx/fragment/app/g1;->e:Ljava/util/HashSet;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Ld0/c;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/g1;->b()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    iget-object v0, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    iget-object v0, v0, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-static {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v0, p0, :cond_1

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v0, v1, :cond_0

    if-eq p0, v1, :cond_0

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
