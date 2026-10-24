.class public final Landroidx/appcompat/view/menu/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/f;->a:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    iget v0, p0, Landroidx/appcompat/view/menu/f;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/view/menu/f;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    check-cast v3, Landroidx/appcompat/widget/n0;

    iget-object p0, v3, Landroidx/appcompat/widget/n0;->D:Landroidx/appcompat/widget/AppCompatSpinner;

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/c0;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Landroidx/appcompat/widget/n0;->B:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroidx/appcompat/widget/n0;->s()V

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->e()V

    :goto_1
    return-void

    :pswitch_1
    check-cast v3, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/p0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/p0;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTextDirection()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    iget-object v2, v3, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/p0;

    invoke-interface {v2, v0, v1}, Landroidx/appcompat/widget/p0;->d(II)V

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    return-void

    :pswitch_2
    check-cast v3, Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->e()V

    iget-object p0, v3, Landroidx/appcompat/widget/ActivityChooserView;->g:Lh0/d;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lh0/d;->a:Lh0/c;

    if-eqz p0, :cond_5

    check-cast p0, Landroidx/appcompat/widget/o;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/o;->o(Z)V

    :cond_5
    :goto_2
    return-void

    :pswitch_3
    check-cast v3, Landroidx/appcompat/view/menu/h0;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h0;->c()Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, v3, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/o1;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->x:Z

    if-nez v0, :cond_8

    iget-object v0, v3, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->e()V

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h0;->dismiss()V

    :cond_8
    :goto_4
    return-void

    :pswitch_4
    check-cast v3, Landroidx/appcompat/view/menu/k;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/k;->c()Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, v3, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/j;

    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->x:Z

    if-nez v0, :cond_b

    iget-object v0, v3, Landroidx/appcompat/view/menu/k;->p:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/j;

    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->e()V

    goto :goto_5

    :cond_a
    :goto_6
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/k;->dismiss()V

    :cond_b
    return-void

    :goto_7
    check-cast v3, Lcom/google/android/material/navigation/NavigationView;

    iget-object p0, v3, Lcom/google/android/material/navigation/NavigationView;->i:[I

    invoke-virtual {v3, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p0, v3, Lcom/google/android/material/navigation/NavigationView;->i:[I

    aget p0, p0, v1

    if-nez p0, :cond_c

    move p0, v1

    goto :goto_8

    :cond_c
    move p0, v2

    :goto_8
    iget-object v0, v3, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/p;

    iget-boolean v4, v0, Lcom/google/android/material/internal/p;->u:Z

    if-eq v4, p0, :cond_e

    iput-boolean p0, v0, Lcom/google/android/material/internal/p;->u:Z

    iget-object v4, v0, Lcom/google/android/material/internal/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_d

    iget-boolean v4, v0, Lcom/google/android/material/internal/p;->u:Z

    if-eqz v4, :cond_d

    iget v4, v0, Lcom/google/android/material/internal/p;->w:I

    goto :goto_9

    :cond_d
    move v4, v2

    :goto_9
    iget-object v0, v0, Lcom/google/android/material/internal/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_e
    if-eqz p0, :cond_f

    iget-boolean p0, v3, Lcom/google/android/material/navigation/NavigationView;->l:Z

    if-eqz p0, :cond_f

    move p0, v1

    goto :goto_a

    :cond_f
    move p0, v2

    :goto_a
    invoke-virtual {v3, p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawTopInsetForeground(Z)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    :goto_b
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_11

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    check-cast p0, Landroid/app/Activity;

    goto :goto_c

    :cond_10
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_b

    :cond_11
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_15

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ne v0, v4, :cond_12

    move v0, v1

    goto :goto_d

    :cond_12
    move v0, v2

    :goto_d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    if-eqz p0, :cond_13

    move p0, v1

    goto :goto_e

    :cond_13
    move p0, v2

    :goto_e
    if-eqz v0, :cond_14

    if-eqz p0, :cond_14

    iget-boolean p0, v3, Lcom/google/android/material/navigation/NavigationView;->m:Z

    if-eqz p0, :cond_14

    goto :goto_f

    :cond_14
    move v1, v2

    :goto_f
    invoke-virtual {v3, v1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawBottomInsetForeground(Z)V

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
