.class public final Landroidx/appcompat/view/menu/k;
.super Landroidx/appcompat/view/menu/y;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field public static final B:I


# instance fields
.field public A:Z

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Landroidx/appcompat/view/menu/f;

.field public final k:Landroidx/appcompat/view/menu/g;

.field public final l:Landroidx/appcompat/view/menu/i;

.field public m:I

.field public n:I

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Landroidx/appcompat/view/menu/b0;

.field public y:Landroid/view/ViewTreeObserver;

.field public z:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/appcompat/R$layout;->abc_cascading_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/k;->B:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/view/menu/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->j:Landroidx/appcompat/view/menu/f;

    new-instance v0, Landroidx/appcompat/view/menu/g;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/y;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->k:Landroidx/appcompat/view/menu/g;

    new-instance v0, Landroidx/appcompat/view/menu/i;

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/i;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->l:Landroidx/appcompat/view/menu/i;

    iput v1, p0, Landroidx/appcompat/view/menu/k;->m:I

    iput v1, p0, Landroidx/appcompat/view/menu/k;->n:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    iput p3, p0, Landroidx/appcompat/view/menu/k;->d:I

    iput p4, p0, Landroidx/appcompat/view/menu/k;->e:I

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/k;->f:Z

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/k;->v:Z

    sget-object p3, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p2}, Lh0/a0;->d(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    iput v1, p0, Landroidx/appcompat/view/menu/k;->q:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/k;->c:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/p;Z)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/j;

    iget-object v4, v4, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/p;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/j;

    iget-object v1, v1, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/p;->c(Z)V

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/j;

    iget-object v3, v1, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v3, p0}, Landroidx/appcompat/view/menu/p;->r(Landroidx/appcompat/view/menu/c0;)V

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/k;->A:Z

    const/4 v4, 0x0

    iget-object v1, v1, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    if-eqz v3, :cond_4

    iget-object v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroidx/appcompat/widget/g0;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    iget-object v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroidx/appcompat/widget/g0;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_5

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/j;

    iget v5, v5, Landroidx/appcompat/view/menu/j;->c:I

    iput v5, p0, Landroidx/appcompat/view/menu/k;->q:I

    goto :goto_3

    :cond_5
    iget-object v5, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    sget-object v6, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, Lh0/a0;->d(Landroid/view/View;)I

    move-result v5

    if-ne v5, v3, :cond_6

    move v5, v2

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_2
    iput v5, p0, Landroidx/appcompat/view/menu/k;->q:I

    :goto_3
    if-nez v1, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->dismiss()V

    iget-object p2, p0, Landroidx/appcompat/view/menu/k;->x:Landroidx/appcompat/view/menu/b0;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, v3}, Landroidx/appcompat/view/menu/b0;->b(Landroidx/appcompat/view/menu/p;Z)V

    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->y:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->y:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Landroidx/appcompat/view/menu/k;->j:Landroidx/appcompat/view/menu/f;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    iput-object v4, p0, Landroidx/appcompat/view/menu/k;->y:Landroid/view/ViewTreeObserver;

    :cond_9
    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->p:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/view/menu/k;->k:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->z:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_4

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/j;

    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/p;->c(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/j;

    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final dismiss()V
    .locals 3

    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-array v1, v0, [Landroidx/appcompat/view/menu/j;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/appcompat/view/menu/j;

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget-object v1, p0, v0

    iget-object v2, v1, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/p;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/k;->y(Landroidx/appcompat/view/menu/p;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->p:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/k;->y:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->y:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/k;->j:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->p:Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->k:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final j()Landroidx/appcompat/widget/d1;
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/j;

    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/d1;

    :goto_0
    return-object p0
.end method

.method public final k(Landroidx/appcompat/view/menu/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->x:Landroidx/appcompat/view/menu/b0;

    return-void
.end method

.method public final m(Landroidx/appcompat/view/menu/i0;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/j;

    iget-object v3, v1, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/p;

    if-ne p1, v3, :cond_0

    iget-object p0, v1, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/d1;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/k;->o(Landroidx/appcompat/view/menu/p;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->x:Landroidx/appcompat/view/menu/b0;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/b0;->o(Landroidx/appcompat/view/menu/p;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final n(Z)V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/j;

    iget-object p1, p1, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/d1;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuAdapter;

    goto :goto_1

    :cond_0
    check-cast p1, Landroidx/appcompat/view/menu/MenuAdapter;

    :goto_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o(Landroidx/appcompat/view/menu/p;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->b:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/p;->b(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/k;->y(Landroidx/appcompat/view/menu/p;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final onDismiss()V
    .locals 5

    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/j;

    iget-object v4, v3, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object p0, v3, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/p;->c(Z)V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    iget v0, p0, Landroidx/appcompat/view/menu/k;->m:I

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/a0;->d(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/k;->n:I

    :cond_0
    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/k;->v:Z

    return-void
.end method

.method public final s(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/k;->m:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/appcompat/view/menu/k;->m:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lh0/a0;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/k;->n:I

    :cond_0
    return-void
.end method

.method public final t(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/k;->r:Z

    iput p1, p0, Landroidx/appcompat/view/menu/k;->t:I

    return-void
.end method

.method public final u(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->z:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/k;->w:Z

    return-void
.end method

.method public final w(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/k;->s:Z

    iput p1, p0, Landroidx/appcompat/view/menu/k;->u:I

    return-void
.end method

.method public final y(Landroidx/appcompat/view/menu/p;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/appcompat/view/menu/k;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    new-instance v4, Landroidx/appcompat/view/menu/MenuAdapter;

    iget-boolean v5, v0, Landroidx/appcompat/view/menu/k;->f:Z

    sget v6, Landroidx/appcompat/view/menu/k;->B:I

    invoke-direct {v4, v1, v3, v5, v6}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/p;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/k;->c()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget-boolean v5, v0, Landroidx/appcompat/view/menu/k;->v:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/k;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/y;->x(Landroidx/appcompat/view/menu/p;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    :cond_1
    :goto_0
    iget v5, v0, Landroidx/appcompat/view/menu/k;->c:I

    invoke-static {v4, v2, v5}, Landroidx/appcompat/view/menu/y;->p(Landroidx/appcompat/view/menu/MenuAdapter;Landroid/content/Context;I)I

    move-result v5

    new-instance v7, Landroidx/appcompat/widget/o1;

    iget v8, v0, Landroidx/appcompat/view/menu/k;->d:I

    iget v9, v0, Landroidx/appcompat/view/menu/k;->e:I

    invoke-direct {v7, v2, v8, v9}, Landroidx/appcompat/widget/o1;-><init>(Landroid/content/Context;II)V

    iget-object v2, v0, Landroidx/appcompat/view/menu/k;->l:Landroidx/appcompat/view/menu/i;

    iput-object v2, v7, Landroidx/appcompat/widget/o1;->z:Landroidx/appcompat/widget/n1;

    iput-object v0, v7, Landroidx/appcompat/widget/ListPopupWindow;->p:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, v7, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroidx/appcompat/widget/g0;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v8, v0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    iput-object v8, v7, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroid/view/View;

    iget v8, v0, Landroidx/appcompat/view/menu/k;->n:I

    iput v8, v7, Landroidx/appcompat/widget/ListPopupWindow;->l:I

    iput-boolean v6, v7, Landroidx/appcompat/widget/ListPopupWindow;->x:Z

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/ListPopupWindow;->o(Landroid/widget/ListAdapter;)V

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/ListPopupWindow;->r(I)V

    iget v4, v0, Landroidx/appcompat/view/menu/k;->n:I

    iput v4, v7, Landroidx/appcompat/widget/ListPopupWindow;->l:I

    iget-object v4, v0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/j;

    iget-object v12, v9, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/p;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    invoke-virtual {v12, v14}, Landroidx/appcompat/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    if-ne v1, v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x2

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    :cond_4
    :goto_3
    const/4 v6, 0x0

    goto :goto_7

    :cond_5
    iget-object v8, v9, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    iget-object v8, v8, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/d1;

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    if-eqz v13, :cond_6

    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v13

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/MenuAdapter;

    goto :goto_4

    :cond_6
    check-cast v12, Landroidx/appcompat/view/menu/MenuAdapter;

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v14

    const/4 v6, 0x0

    :goto_5
    const/4 v11, -0x1

    if-ge v6, v14, :cond_8

    invoke-virtual {v12, v6}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/r;

    move-result-object v10

    if-ne v15, v10, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    move v6, v11

    :goto_6
    if-ne v6, v11, :cond_9

    goto :goto_3

    :cond_9
    add-int/2addr v6, v13

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v6, v10

    if-ltz v6, :cond_4

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lt v6, v10, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_7
    if-eqz v6, :cond_13

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/j;

    iget-object v2, v2, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/o1;

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/d1;

    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {v2, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Landroidx/appcompat/view/menu/k;->p:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v11, v0, Landroidx/appcompat/view/menu/k;->q:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v11, 0x0

    aget v8, v8, v11

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v8

    add-int/2addr v2, v5

    iget v8, v10, Landroid/graphics/Rect;->right:I

    if-le v2, v8, :cond_d

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    aget v2, v8, v11

    sub-int/2addr v2, v5

    if-gez v2, :cond_e

    :cond_d
    const/4 v2, 0x1

    :goto_8
    const/4 v8, 0x1

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v2, 0x0

    goto :goto_8

    :goto_a
    if-ne v2, v8, :cond_f

    const/4 v8, 0x1

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    :goto_b
    iput v2, v0, Landroidx/appcompat/view/menu/k;->q:I

    iput-object v6, v7, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroid/view/View;

    iget v2, v0, Landroidx/appcompat/view/menu/k;->n:I

    const/4 v10, 0x5

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_11

    if-eqz v8, :cond_10

    const/4 v2, 0x0

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    if-eqz v8, :cond_12

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    :goto_c
    add-int/2addr v5, v2

    goto :goto_e

    :cond_12
    :goto_d
    rsub-int/lit8 v5, v5, 0x0

    :goto_e
    iput v5, v7, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    const/4 v5, 0x1

    iput-boolean v5, v7, Landroidx/appcompat/widget/ListPopupWindow;->k:Z

    iput-boolean v5, v7, Landroidx/appcompat/widget/ListPopupWindow;->j:Z

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->n(I)V

    goto :goto_10

    :cond_13
    iget-boolean v2, v0, Landroidx/appcompat/view/menu/k;->r:Z

    if-eqz v2, :cond_14

    iget v2, v0, Landroidx/appcompat/view/menu/k;->t:I

    iput v2, v7, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    :cond_14
    iget-boolean v2, v0, Landroidx/appcompat/view/menu/k;->s:Z

    if-eqz v2, :cond_15

    iget v2, v0, Landroidx/appcompat/view/menu/k;->u:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->n(I)V

    :cond_15
    iget-object v2, v0, Landroidx/appcompat/view/menu/y;->a:Landroid/graphics/Rect;

    if-eqz v2, :cond_16

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_f

    :cond_16
    const/4 v8, 0x0

    :goto_f
    iput-object v8, v7, Landroidx/appcompat/widget/ListPopupWindow;->w:Landroid/graphics/Rect;

    :goto_10
    new-instance v2, Landroidx/appcompat/view/menu/j;

    iget v5, v0, Landroidx/appcompat/view/menu/k;->q:I

    invoke-direct {v2, v7, v1, v5}, Landroidx/appcompat/view/menu/j;-><init>(Landroidx/appcompat/widget/o1;Landroidx/appcompat/view/menu/p;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->e()V

    iget-object v2, v7, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/d1;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v9, :cond_17

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/k;->w:Z

    if-eqz v0, :cond_17

    iget-object v0, v1, Landroidx/appcompat/view/menu/p;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    sget v0, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v3, 0x1020016

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v1, Landroidx/appcompat/view/menu/p;->m:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->e()V

    :cond_17
    return-void
.end method
