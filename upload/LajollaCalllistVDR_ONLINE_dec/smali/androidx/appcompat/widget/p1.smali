.class public final Landroidx/appcompat/widget/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/p1;->b:I

    iput-object p2, p0, Landroidx/appcompat/widget/p1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget p1, p0, Landroidx/appcompat/widget/p1;->b:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object v2, p0, Landroidx/appcompat/widget/p1;->c:Ljava/lang/Object;

    if-nez p1, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v4, v3, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroidx/appcompat/widget/g0;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ltz v1, :cond_0

    iget-object v4, v3, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroidx/appcompat/widget/g0;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    if-ge v1, v5, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object p1, v3, Landroidx/appcompat/widget/ListPopupWindow;->v:Landroid/os/Handler;

    iget-object p2, v3, Landroidx/appcompat/widget/ListPopupWindow;->r:Landroidx/appcompat/widget/l1;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    check-cast v2, Landroidx/appcompat/widget/ListPopupWindow;

    iget-object p1, v2, Landroidx/appcompat/widget/ListPopupWindow;->v:Landroid/os/Handler;

    iget-object p2, v2, Landroidx/appcompat/widget/ListPopupWindow;->r:Landroidx/appcompat/widget/l1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
