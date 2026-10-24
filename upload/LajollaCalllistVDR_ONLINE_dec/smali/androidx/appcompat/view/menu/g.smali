.class public final Landroidx/appcompat/view/menu/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/appcompat/view/menu/y;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/y;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/view/menu/g;->b:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/g;->c:Landroidx/appcompat/view/menu/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/g;->b:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/g;->c:Landroidx/appcompat/view/menu/y;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/appcompat/view/menu/k;

    iget-object v0, v1, Landroidx/appcompat/view/menu/k;->z:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/view/menu/k;->z:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, v1, Landroidx/appcompat/view/menu/k;->z:Landroid/view/ViewTreeObserver;

    iget-object v1, v1, Landroidx/appcompat/view/menu/k;->k:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :goto_0
    check-cast v1, Landroidx/appcompat/view/menu/h0;

    iget-object v0, v1, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    :cond_2
    iget-object v0, v1, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    iget-object v1, v1, Landroidx/appcompat/view/menu/h0;->k:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
