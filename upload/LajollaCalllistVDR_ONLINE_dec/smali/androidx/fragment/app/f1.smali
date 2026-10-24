.class public final Landroidx/fragment/app/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/fragment/app/h1;

.field public final synthetic d:Landroidx/fragment/app/i1;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/i1;Landroidx/fragment/app/h1;I)V
    .locals 0

    iput p3, p0, Landroidx/fragment/app/f1;->b:I

    iput-object p1, p0, Landroidx/fragment/app/f1;->d:Landroidx/fragment/app/i1;

    iput-object p2, p0, Landroidx/fragment/app/f1;->c:Landroidx/fragment/app/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/f1;->b:I

    iget-object v1, p0, Landroidx/fragment/app/f1;->c:Landroidx/fragment/app/h1;

    iget-object v2, p0, Landroidx/fragment/app/f1;->d:Landroidx/fragment/app/i1;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v2, Landroidx/fragment/app/i1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/h1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    iget-object v1, v1, Landroidx/fragment/app/h1;->c:Landroidx/fragment/app/t;

    iget-object v1, v1, Landroidx/fragment/app/t;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    :cond_0
    return-void

    :goto_0
    iget-object v0, v2, Landroidx/fragment/app/i1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Landroidx/fragment/app/i1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
