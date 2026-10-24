.class public final Landroidx/appcompat/view/menu/b;
.super Landroidx/appcompat/widget/g1;
.source "SourceFile"


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/b;->j:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->k:Landroid/view/View;

    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/g1;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/b;->j:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->k:Landroid/view/View;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/g1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/appcompat/view/menu/g0;
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/b;->j:I

    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->k:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object p0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:Landroidx/appcompat/view/menu/c;

    if-eqz p0, :cond_0

    check-cast p0, Landroidx/appcompat/widget/j;

    iget-object p0, p0, Landroidx/appcompat/widget/j;->a:Landroidx/appcompat/widget/o;

    iget-object p0, p0, Landroidx/appcompat/widget/o;->u:Landroidx/appcompat/widget/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/a0;->a()Landroidx/appcompat/view/menu/y;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :goto_1
    check-cast p0, Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/b;->j:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->k:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Landroidx/appcompat/view/menu/o;

    if-eqz v0, :cond_0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->f:Landroidx/appcompat/view/menu/r;

    invoke-interface {v0, v2}, Landroidx/appcompat/view/menu/o;->a(Landroidx/appcompat/view/menu/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b;->b()Landroidx/appcompat/view/menu/g0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/appcompat/view/menu/g0;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :goto_1
    check-cast v2, Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, v2, Landroidx/appcompat/widget/ActivityChooserView;->k:Z

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, v2, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No data model. Did you call #setDataModel?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/b;->j:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->k:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->a()V

    return v1

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b;->b()Landroidx/appcompat/view/menu/g0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/appcompat/view/menu/g0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/appcompat/view/menu/g0;->dismiss()V

    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
