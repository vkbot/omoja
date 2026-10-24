.class public final Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/x;->a:I

    iput-object p2, p0, Landroidx/fragment/app/x;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/x;->a:I

    iget-object p0, p0, Landroidx/fragment/app/x;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Landroidx/fragment/app/k0;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/k0;->x(Z)Z

    return-void

    :pswitch_1
    check-cast p0, Landroidx/fragment/app/p;

    iget-object v0, p0, Landroidx/fragment/app/p;->V:Landroidx/fragment/app/m;

    iget-object p0, p0, Landroidx/fragment/app/p;->d0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/fragment/app/e;

    iget-object v0, p0, Landroidx/fragment/app/e;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/i;->a()V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/fragment/app/e;

    iget-object v0, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/t;

    iget-object v1, v1, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/r;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroidx/fragment/app/r;->a:Landroid/view/View;

    :goto_0
    if-eqz v1, :cond_1

    check-cast v0, Landroidx/fragment/app/t;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->e()Landroidx/fragment/app/r;

    move-result-object v0

    iput-object v2, v0, Landroidx/fragment/app/r;->a:Landroid/view/View;

    iget-object v0, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/e0;

    iget-object v1, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/t;

    iget-object p0, p0, Landroidx/fragment/app/e;->e:Ljava/lang/Object;

    check-cast p0, Ld0/c;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/e0;->c(Landroidx/fragment/app/t;Ld0/c;)V

    :cond_1
    return-void

    :goto_1
    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroidx/fragment/app/u0;->b(Ljava/util/ArrayList;I)V

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
