.class public final Landroidx/appcompat/widget/l;
.super Landroidx/appcompat/widget/j1;
.source "SourceFile"


# instance fields
.field public final synthetic k:I

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/appcompat/widget/l;->k:I

    iput-object p1, p0, Landroidx/appcompat/widget/l;->m:Landroid/view/View;

    iput-object p3, p0, Landroidx/appcompat/widget/l;->l:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/j1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/appcompat/view/menu/g0;
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/l;->k:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/l;->m:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/widget/m;

    iget-object v0, v0, Landroidx/appcompat/widget/m;->e:Landroidx/appcompat/widget/o;

    iget-object v0, v0, Landroidx/appcompat/widget/o;->u:Landroidx/appcompat/widget/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->a()Landroidx/appcompat/view/menu/y;

    move-result-object v0

    :goto_0
    return-object v0

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/n0;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 4

    iget v0, p0, Landroidx/appcompat/widget/l;->k:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/appcompat/widget/l;->m:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/appcompat/widget/m;

    iget-object v0, v2, Landroidx/appcompat/widget/m;->e:Landroidx/appcompat/widget/o;

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->p()Z

    return v1

    :goto_0
    check-cast v2, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/p0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/p0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTextDirection()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getTextAlignment()I

    move-result v3

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->g:Landroidx/appcompat/widget/p0;

    invoke-interface {v2, v0, v3}, Landroidx/appcompat/widget/p0;->d(II)V

    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/l;->k:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/l;->m:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/widget/m;

    iget-object v0, v0, Landroidx/appcompat/widget/m;->e:Landroidx/appcompat/widget/o;

    iget-object v2, v0, Landroidx/appcompat/widget/o;->w:Landroidx/appcompat/widget/k;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->e()Z

    :goto_0
    return v1

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->b()Landroidx/appcompat/view/menu/g0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/appcompat/view/menu/g0;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroidx/appcompat/view/menu/g0;->dismiss()V

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
