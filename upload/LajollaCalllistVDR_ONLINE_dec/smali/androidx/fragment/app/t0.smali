.class public final Landroidx/fragment/app/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/k;Ljava/util/ArrayList;Landroidx/fragment/app/h1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/t0;->b:I

    iput-object p1, p0, Landroidx/fragment/app/t0;->e:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/t0;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/fragment/app/t0;->b:I

    iget-object v1, p0, Landroidx/fragment/app/t0;->e:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/t0;->d:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/t0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Landroidx/fragment/app/e0;

    check-cast v2, Landroidx/fragment/app/t;

    check-cast v1, Lc0/c;

    invoke-virtual {v3, v2, v1}, Landroidx/fragment/app/e0;->c(Landroidx/fragment/app/t;Lc0/c;)V

    return-void

    :pswitch_1
    check-cast v3, Landroidx/fragment/app/e0;

    check-cast v2, Landroidx/fragment/app/t;

    check-cast v1, Lc0/c;

    invoke-virtual {v3, v2, v1}, Landroidx/fragment/app/e0;->c(Landroidx/fragment/app/t;Lc0/c;)V

    return-void

    :goto_0
    check-cast v3, Ljava/util/List;

    check-cast v2, Landroidx/fragment/app/h1;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    check-cast v1, Landroidx/fragment/app/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Landroidx/fragment/app/h1;->c:Landroidx/fragment/app/t;

    iget-object v0, v0, Landroidx/fragment/app/t;->F:Landroid/view/View;

    iget-object v1, v2, Landroidx/fragment/app/h1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
