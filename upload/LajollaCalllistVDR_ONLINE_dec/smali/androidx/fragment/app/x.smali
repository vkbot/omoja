.class public final Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/x;->b:I

    iput-object p2, p0, Landroidx/fragment/app/x;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/fragment/app/x;->b:I

    iget-object v1, p0, Landroidx/fragment/app/x;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v1, Landroidx/fragment/app/k0;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k0;->x(Z)Z

    return-void

    :pswitch_1
    check-cast v1, Landroidx/fragment/app/p;

    iget-object v0, v1, Landroidx/fragment/app/p;->W:Landroidx/fragment/app/m;

    iget-object v1, v1, Landroidx/fragment/app/p;->e0:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_2
    check-cast v1, Landroidx/fragment/app/e;

    iget-object v0, v1, Landroidx/fragment/app/e;->b:Landroid/view/ViewGroup;

    iget-object v2, v1, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, v1, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()V

    return-void

    :pswitch_3
    check-cast v1, Landroidx/fragment/app/e;

    iget-object v0, v1, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/t;

    iget-object v2, v2, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/r;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroidx/fragment/app/r;->a:Landroid/view/View;

    :goto_0
    if-eqz v2, :cond_1

    check-cast v0, Landroidx/fragment/app/t;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->e()Landroidx/fragment/app/r;

    move-result-object v0

    iput-object v3, v0, Landroidx/fragment/app/r;->a:Landroid/view/View;

    iget-object v0, v1, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/e0;

    iget-object v2, v1, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/t;

    iget-object v1, v1, Landroidx/fragment/app/e;->e:Ljava/lang/Object;

    check-cast v1, Lc0/c;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/e0;->c(Landroidx/fragment/app/t;Lc0/c;)V

    :cond_1
    return-void

    :goto_1
    check-cast v1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-static {v1, v0}, Landroidx/fragment/app/v0;->c(Ljava/util/ArrayList;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
