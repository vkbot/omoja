.class public final Landroidx/appcompat/view/menu/h0;
.super Landroidx/appcompat/view/menu/y;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final v:I


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroidx/appcompat/view/menu/p;

.field public final d:Landroidx/appcompat/view/menu/MenuAdapter;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Landroidx/appcompat/widget/o1;

.field public final j:Landroidx/appcompat/view/menu/f;

.field public final k:Landroidx/appcompat/view/menu/g;

.field public l:Landroid/widget/PopupWindow$OnDismissListener;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroidx/appcompat/view/menu/b0;

.field public p:Landroid/view/ViewTreeObserver;

.field public q:Z

.field public r:Z

.field public s:I

.field public t:I

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/h0;->v:I

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/p;Z)V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/h0;->j:Landroidx/appcompat/view/menu/f;

    new-instance v0, Landroidx/appcompat/view/menu/g;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/y;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/h0;->k:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/h0;->t:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/h0;->b:Landroid/content/Context;

    iput-object p5, p0, Landroidx/appcompat/view/menu/h0;->c:Landroidx/appcompat/view/menu/p;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/h0;->e:Z

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/MenuAdapter;

    sget v2, Landroidx/appcompat/view/menu/h0;->v:I

    invoke-direct {v1, p5, v0, p6, v2}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/p;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/h0;->d:Landroidx/appcompat/view/menu/MenuAdapter;

    iput p1, p0, Landroidx/appcompat/view/menu/h0;->g:I

    iput p2, p0, Landroidx/appcompat/view/menu/h0;->h:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Landroidx/appcompat/view/menu/h0;->f:I

    iput-object p4, p0, Landroidx/appcompat/view/menu/h0;->m:Landroid/view/View;

    new-instance p4, Landroidx/appcompat/widget/o1;

    invoke-direct {p4, p3, p1, p2}, Landroidx/appcompat/widget/o1;-><init>(Landroid/content/Context;II)V

    iput-object p4, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/o1;

    invoke-virtual {p5, p0, p3}, Landroidx/appcompat/view/menu/p;->b(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/p;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->c:Landroidx/appcompat/view/menu/p;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h0;->dismiss()V

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->o:Landroidx/appcompat/view/menu/b0;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/b0;->b(Landroidx/appcompat/view/menu/p;Z)V

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h0;->q:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/o1;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/o1;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h0;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h0;->q:Z

    const/4 v2, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->m:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iput-object v0, p0, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/o1;

    iget-object v3, v0, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroidx/appcompat/widget/g0;

    invoke-virtual {v3, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object p0, v0, Landroidx/appcompat/widget/ListPopupWindow;->p:Landroid/widget/AdapterView$OnItemClickListener;

    iput-boolean v1, v0, Landroidx/appcompat/widget/ListPopupWindow;->x:Z

    iget-object v3, v0, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroidx/appcompat/widget/g0;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v4, p0, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    iget-object v5, p0, Landroidx/appcompat/view/menu/h0;->p:Landroid/view/ViewTreeObserver;

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/view/menu/h0;->p:Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroidx/appcompat/view/menu/h0;->j:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v6, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/h0;->k:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v4, v0, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroid/view/View;

    iget v4, p0, Landroidx/appcompat/view/menu/h0;->t:I

    iput v4, v0, Landroidx/appcompat/widget/ListPopupWindow;->l:I

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/h0;->r:Z

    iget-object v5, p0, Landroidx/appcompat/view/menu/h0;->b:Landroid/content/Context;

    iget-object v6, p0, Landroidx/appcompat/view/menu/h0;->d:Landroidx/appcompat/view/menu/MenuAdapter;

    if-nez v4, :cond_4

    iget v4, p0, Landroidx/appcompat/view/menu/h0;->f:I

    invoke-static {v6, v5, v4}, Landroidx/appcompat/view/menu/y;->p(Landroidx/appcompat/view/menu/MenuAdapter;Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/view/menu/h0;->s:I

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/h0;->r:Z

    :cond_4
    iget v4, p0, Landroidx/appcompat/view/menu/h0;->s:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->r(I)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/y;->a:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    move-object v7, v4

    :goto_1
    iput-object v7, v0, Landroidx/appcompat/widget/ListPopupWindow;->w:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->e()V

    iget-object v3, v0, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/d1;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v7, p0, Landroidx/appcompat/view/menu/h0;->u:Z

    if-eqz v7, :cond_7

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->c:Landroidx/appcompat/view/menu/p;

    iget-object v7, p0, Landroidx/appcompat/view/menu/p;->m:Ljava/lang/CharSequence;

    if-eqz v7, :cond_7

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v7, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v5, v7, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v7, 0x1020016

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_6

    iget-object p0, p0, Landroidx/appcompat/view/menu/p;->m:Ljava/lang/CharSequence;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, v5, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_7
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/ListPopupWindow;->o(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->e()V

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/o1;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/d1;

    return-object p0
.end method

.method public final k(Landroidx/appcompat/view/menu/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h0;->o:Landroidx/appcompat/view/menu/b0;

    return-void
.end method

.method public final m(Landroidx/appcompat/view/menu/i0;)Z
    .locals 9

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Landroidx/appcompat/view/menu/a0;

    iget-object v5, p0, Landroidx/appcompat/view/menu/h0;->b:Landroid/content/Context;

    iget-object v6, p0, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    iget-boolean v8, p0, Landroidx/appcompat/view/menu/h0;->e:Z

    iget v3, p0, Landroidx/appcompat/view/menu/h0;->g:I

    iget v4, p0, Landroidx/appcompat/view/menu/h0;->h:I

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/a0;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/p;Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/h0;->o:Landroidx/appcompat/view/menu/b0;

    iput-object v2, v0, Landroidx/appcompat/view/menu/a0;->i:Landroidx/appcompat/view/menu/b0;

    iget-object v3, v0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Landroidx/appcompat/view/menu/c0;->k(Landroidx/appcompat/view/menu/b0;)V

    :cond_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/y;->x(Landroidx/appcompat/view/menu/p;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/appcompat/view/menu/a0;->h:Z

    iget-object v3, v0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/y;->r(Z)V

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/h0;->l:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object v2, v0, Landroidx/appcompat/view/menu/a0;->k:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/appcompat/view/menu/h0;->l:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Landroidx/appcompat/view/menu/h0;->c:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/p;->c(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/o1;

    iget v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->f()I

    move-result v2

    iget v4, p0, Landroidx/appcompat/view/menu/h0;->t:I

    iget-object v5, p0, Landroidx/appcompat/view/menu/h0;->m:Landroid/view/View;

    sget-object v6, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, Lh0/a0;->d(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Landroidx/appcompat/view/menu/h0;->m:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    if-nez v4, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3, v2, v5, v5}, Landroidx/appcompat/view/menu/a0;->d(IIZZ)V

    :goto_0
    move v0, v5

    :goto_1
    if-eqz v0, :cond_6

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->o:Landroidx/appcompat/view/menu/b0;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/b0;->o(Landroidx/appcompat/view/menu/p;)Z

    :cond_5
    return v5

    :cond_6
    return v1
.end method

.method public final n(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h0;->r:Z

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->d:Landroidx/appcompat/view/menu/MenuAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final o(Landroidx/appcompat/view/menu/p;)V
    .locals 0

    return-void
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h0;->q:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/h0;->c:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/p;->c(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->p:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/h0;->p:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->p:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h0;->j:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/h0;->p:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h0;->k:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->l:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

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

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h0;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h0;->m:Landroid/view/View;

    return-void
.end method

.method public final r(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->d:Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    return-void
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/h0;->t:I

    return-void
.end method

.method public final t(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/o1;

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    return-void
.end method

.method public final u(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h0;->l:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h0;->u:Z

    return-void
.end method

.method public final w(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/o1;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->n(I)V

    return-void
.end method
