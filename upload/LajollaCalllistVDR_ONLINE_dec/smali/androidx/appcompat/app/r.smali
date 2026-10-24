.class public final Landroidx/appcompat/app/r;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# instance fields
.field public final synthetic x:I

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/app/r;->x:I

    iput-object p2, p0, Landroidx/appcompat/app/r;->y:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/material/slider/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget v0, p0, Landroidx/appcompat/app/r;->x:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/app/r;->y:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Landroidx/appcompat/app/a0;

    iget-object v0, v3, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v3, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    invoke-virtual {v0, v2}, Lg0/v0;->d(Lg0/w0;)V

    iput-object v2, v3, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    return-void

    :pswitch_1
    check-cast v3, Landroidx/appcompat/app/p;

    iget-object v0, v3, Landroidx/appcompat/app/p;->c:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v3, Landroidx/appcompat/app/p;->c:Landroidx/appcompat/app/a0;

    iget-object v1, v0, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    invoke-virtual {v1, v2}, Lg0/v0;->d(Lg0/w0;)V

    iput-object v2, v0, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    return-void

    :goto_0
    check-cast v3, Landroidx/appcompat/app/s;

    iget-object v0, v3, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, v3, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/a0;

    iget-object v1, v0, Landroidx/appcompat/app/a0;->q:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v3, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lg0/e0;->c(Landroid/view/View;)V

    :cond_1
    :goto_1
    iget-object v1, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    iget-object v1, v0, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    invoke-virtual {v1, v2}, Lg0/v0;->d(Lg0/w0;)V

    iput-object v2, v0, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->v:Landroid/view/ViewGroup;

    sget-object v1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lg0/e0;->c(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/app/r;->x:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/appcompat/app/r;->y:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast v2, Landroidx/appcompat/app/a0;

    iget-object v0, v2, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, v2, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lg0/e0;->c(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast v2, Landroidx/appcompat/app/p;

    iget-object v0, v2, Landroidx/appcompat/app/p;->c:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
