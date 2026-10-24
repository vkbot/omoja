.class public abstract Lj0/b;
.super Lg0/b;
.source "SourceFile"


# static fields
.field public static final n:Landroid/graphics/Rect;

.field public static final o:Lg2/e;

.field public static final p:Lg2/e;


# instance fields
.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:[I

.field public final h:Landroid/view/accessibility/AccessibilityManager;

.field public final i:Landroid/view/View;

.field public j:Lj0/a;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lj0/b;->n:Landroid/graphics/Rect;

    new-instance v0, Lg2/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg2/e;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lj0/b;->o:Lg2/e;

    new-instance v0, Lg2/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lg2/e;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lj0/b;->p:Lg2/e;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lg0/b;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lj0/b;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lj0/b;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lj0/b;->f:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lj0/b;->g:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Lj0/b;->k:I

    iput v0, p0, Lj0/b;->l:I

    iput v0, p0, Lj0/b;->m:I

    if-eqz p1, :cond_1

    iput-object p1, p0, Lj0/b;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lj0/b;->h:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    sget-object v1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/a0;->c(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lg0/a0;->s(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b(Landroid/view/View;)Landroidx/appcompat/app/f0;
    .locals 0

    iget-object p1, p0, Lj0/b;->j:Lj0/a;

    if-nez p1, :cond_0

    new-instance p1, Lj0/a;

    invoke-direct {p1, p0}, Lj0/a;-><init>(Lj0/b;)V

    iput-object p1, p0, Lj0/b;->j:Lj0/a;

    :cond_0
    iget-object p1, p0, Lj0/b;->j:Lj0/a;

    return-object p1
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lg0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final d(Landroid/view/View;Lh0/c;)V
    .locals 2

    iget-object v0, p2, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lg0/b;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0, p2}, Lj0/b;->t(Lh0/c;)V

    return-void
.end method

.method public final j(I)Z
    .locals 2

    iget v0, p0, Lj0/b;->l:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Lj0/b;->l:I

    invoke-virtual {p0, p1, v1}, Lj0/b;->v(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lj0/b;->x(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final k(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lj0/b;->i:Landroid/view/View;

    if-eq p1, v0, :cond_2

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, Lj0/b;->r(I)Lh0/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lh0/c;->e()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_2
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method public final l(I)Lh0/c;
    .locals 11

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Lh0/c;

    invoke-direct {v1, v0}, Lh0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    const-string v3, "android.view.View"

    invoke-virtual {v1, v3}, Lh0/c;->f(Ljava/lang/CharSequence;)V

    sget-object v3, Lj0/b;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    const/4 v4, -0x1

    iput v4, v1, Lh0/c;->b:I

    iget-object v5, p0, Lj0/b;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {p0, p1, v1}, Lj0/b;->u(ILh0/c;)V

    invoke-virtual {v1}, Lh0/c;->e()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v6, p0, Lj0/b;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Lh0/c;->d(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v7

    and-int/lit8 v8, v7, 0x40

    if-nez v8, :cond_10

    const/16 v8, 0x80

    and-int/2addr v7, v8

    if-nez v7, :cond_f

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iput p1, v1, Lh0/c;->c:I

    invoke-virtual {v0, v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v7, p0, Lj0/b;->k:I

    const/4 v9, 0x0

    if-ne v7, p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {v1, v8}, Lh0/c;->a(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Lh0/c;->a(I)V

    :goto_1
    iget v7, p0, Lj0/b;->l:I

    if-ne v7, p1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v9

    :goto_2
    if-eqz p1, :cond_4

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lh0/c;->a(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1, v2}, Lh0/c;->a(I)V

    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    iget-object p1, p0, Lj0/b;->g:[I

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v7, p0, Lj0/b;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1, v7}, Lh0/c;->d(Landroid/graphics/Rect;)V

    iget v0, v1, Lh0/c;->b:I

    if-eq v0, v4, :cond_7

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v8, Lh0/c;

    invoke-direct {v8, v0}, Lh0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, v1, Lh0/c;->b:I

    :goto_4
    iget-object v10, v8, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq v0, v4, :cond_6

    iput v4, v8, Lh0/c;->b:I

    invoke-virtual {v10, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    invoke-virtual {v10, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, v8}, Lj0/b;->u(ILh0/c;)V

    invoke-virtual {v8, v6}, Lh0/c;->d(Landroid/graphics/Rect;)V

    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v0, v10}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v8, Lh0/c;->b:I

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_7
    aget v0, p1, v9

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    aget v3, p1, v2

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v7, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_8
    iget-object v0, p0, Lj0/b;->f:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_e

    aget v3, p1, v9

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    aget p1, p1, v2

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {v0, v3, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, v1, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_5
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_c

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    move v9, v2

    :cond_d
    :goto_6
    if-eqz v9, :cond_e

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_e
    return-object v1

    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lj0/b;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x100

    const/16 v3, 0x80

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    if-eq v0, v4, :cond_4

    const/16 v4, 0x9

    if-eq v0, v4, :cond_4

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    return v2

    :cond_1
    iget p1, p0, Lj0/b;->m:I

    if-eq p1, v6, :cond_3

    if-ne p1, v6, :cond_2

    goto :goto_0

    :cond_2
    iput v6, p0, Lj0/b;->m:I

    invoke-virtual {p0, v6, v3}, Lj0/b;->x(II)V

    invoke-virtual {p0, p1, v1}, Lj0/b;->x(II)V

    :goto_0
    return v5

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lj0/b;->n(FF)I

    move-result p1

    iget v0, p0, Lj0/b;->m:I

    if-ne v0, p1, :cond_5

    goto :goto_1

    :cond_5
    iput p1, p0, Lj0/b;->m:I

    invoke-virtual {p0, p1, v3}, Lj0/b;->x(II)V

    invoke-virtual {p0, v0, v1}, Lj0/b;->x(II)V

    :goto_1
    if-eq p1, v6, :cond_6

    move v2, v5

    :cond_6
    :goto_2
    return v2
.end method

.method public abstract n(FF)I
.end method

.method public abstract o(Ljava/util/ArrayList;)V
.end method

.method public final p(I)V
    .locals 3

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lj0/b;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x800

    invoke-virtual {p0, p1, v2}, Lj0/b;->k(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-interface {v1, v0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method public final q(ILandroid/graphics/Rect;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Lj0/b;->o(Ljava/util/ArrayList;)V

    new-instance v4, Lj/k;

    invoke-direct {v4}, Lj/k;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lj0/b;->l(I)Lh0/c;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8, v7}, Lj/k;->d(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v3, v0, Lj0/b;->l:I

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    if-ne v3, v7, :cond_1

    move-object v3, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3, v6}, Lj/k;->c(ILjava/lang/Integer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh0/c;

    :goto_1
    sget-object v8, Lj0/b;->o:Lg2/e;

    sget-object v9, Lj0/b;->p:Lg2/e;

    const/4 v11, 0x1

    iget-object v12, v0, Lj0/b;->i:Landroid/view/View;

    const/4 v13, 0x2

    if-eq v1, v11, :cond_16

    if-eq v1, v13, :cond_16

    const/16 v13, 0x82

    const/16 v14, 0x42

    const/16 v15, 0x21

    const/16 v6, 0x11

    if-eq v1, v6, :cond_3

    if-eq v1, v15, :cond_3

    if-eq v1, v14, :cond_3

    if-ne v1, v13, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_2
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget v5, v0, Lj0/b;->l:I

    const-string v10, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    if-eq v5, v7, :cond_4

    invoke-virtual {v0, v5}, Lj0/b;->r(I)Lh0/c;

    move-result-object v2

    invoke-virtual {v2, v11}, Lh0/c;->d(Landroid/graphics/Rect;)V

    :goto_3
    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eq v1, v6, :cond_9

    if-eq v1, v15, :cond_8

    if-eq v1, v14, :cond_7

    if-ne v1, v13, :cond_6

    const/4 v5, 0x0

    const/4 v12, -0x1

    invoke-virtual {v11, v5, v12, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    move v12, v5

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/4 v2, 0x0

    const/4 v12, -0x1

    invoke-virtual {v11, v12, v2, v12, v5}, Landroid/graphics/Rect;->set(IIII)V

    move v12, v2

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v5, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v11, v2, v12, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eq v1, v6, :cond_d

    if-eq v1, v15, :cond_c

    if-eq v1, v14, :cond_b

    if-ne v1, v13, :cond_a

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    neg-int v5, v5

    invoke-virtual {v2, v12, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const/4 v6, 0x1

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v6

    neg-int v5, v5

    invoke-virtual {v2, v5, v12}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_c
    const/4 v6, 0x1

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v2, v12, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_d
    const/4 v6, 0x1

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v2, v5, v12}, Landroid/graphics/Rect;->offset(II)V

    :goto_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Lj/k;->d:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move v9, v12

    const/16 v16, 0x0

    :goto_6
    if-ge v9, v5, :cond_15

    iget-object v10, v4, Lj/k;->c:[Ljava/lang/Object;

    aget-object v10, v10, v9

    check-cast v10, Lh0/c;

    if-ne v10, v3, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v6}, Lh0/c;->d(Landroid/graphics/Rect;)V

    invoke-static {v1, v11, v6}, Lcom/google/android/material/slider/h;->F0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_f

    goto :goto_8

    :cond_f
    invoke-static {v1, v11, v2}, Lcom/google/android/material/slider/h;->F0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_10

    goto :goto_7

    :cond_10
    invoke-static {v1, v11, v6, v2}, Lcom/google/android/material/slider/h;->m(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {v1, v11, v2, v6}, Lcom/google/android/material/slider/h;->m(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_12

    goto :goto_8

    :cond_12
    invoke-static {v1, v11, v6}, Lcom/google/android/material/slider/h;->M0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v13

    invoke-static {v1, v11, v6}, Lcom/google/android/material/slider/h;->O0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v14

    mul-int/lit8 v15, v13, 0xd

    mul-int/2addr v15, v13

    mul-int/2addr v14, v14

    add-int/2addr v14, v15

    invoke-static {v1, v11, v2}, Lcom/google/android/material/slider/h;->M0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v13

    invoke-static {v1, v11, v2}, Lcom/google/android/material/slider/h;->O0(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v15

    mul-int/lit8 v17, v13, 0xd

    mul-int v17, v17, v13

    mul-int/2addr v15, v15

    add-int v15, v15, v17

    if-ge v14, v15, :cond_13

    :goto_7
    const/4 v13, 0x1

    goto :goto_9

    :cond_13
    :goto_8
    move v13, v12

    :goto_9
    if-eqz v13, :cond_14

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v16, v10

    :cond_14
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_15
    move v2, v12

    move-object/from16 v1, v16

    const/4 v3, -0x1

    goto/16 :goto_11

    :cond_16
    const/4 v2, 0x0

    sget-object v5, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v12}, Lg0/b0;->d(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    const/4 v5, 0x1

    goto :goto_b

    :cond_17
    move v5, v2

    :goto_b
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v4, Lj/k;->d:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v2

    :goto_c
    if-ge v10, v6, :cond_18

    iget-object v11, v4, Lj/k;->c:[Ljava/lang/Object;

    aget-object v11, v11, v10

    check-cast v11, Lh0/c;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_18
    new-instance v6, Lj0/c;

    invoke-direct {v6, v5, v8}, Lj0/c;-><init>(ZLg2/e;)V

    invoke-static {v9, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1c

    if-ne v1, v13, :cond_1b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v3, :cond_19

    const/4 v12, -0x1

    goto :goto_d

    :cond_19
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v12

    :goto_d
    add-int/2addr v12, v5

    if-ge v12, v1, :cond_1a

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    goto :goto_e

    :cond_1a
    const/4 v6, 0x0

    :goto_e
    const/4 v3, -0x1

    goto :goto_10

    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v3, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_f
    const/4 v3, -0x1

    add-int/2addr v1, v3

    if-ltz v1, :cond_1e

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_10

    :cond_1e
    const/4 v6, 0x0

    :goto_10
    move-object/from16 v16, v6

    check-cast v16, Lh0/c;

    move-object/from16 v1, v16

    :goto_11
    if-nez v1, :cond_1f

    goto :goto_14

    :cond_1f
    move v5, v2

    :goto_12
    iget v2, v4, Lj/k;->d:I

    if-ge v5, v2, :cond_21

    iget-object v2, v4, Lj/k;->c:[Ljava/lang/Object;

    aget-object v2, v2, v5

    if-ne v2, v1, :cond_20

    move v10, v5

    goto :goto_13

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_21
    move v10, v3

    :goto_13
    iget-object v1, v4, Lj/k;->b:[I

    aget v7, v1, v10

    :goto_14
    invoke-virtual {v0, v7}, Lj0/b;->w(I)Z

    move-result v1

    return v1
.end method

.method public final r(I)Lh0/c;
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lj0/b;->i:Landroid/view/View;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Lh0/c;

    invoke-direct {v1, v0}, Lh0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v2, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, Lj0/b;->o(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Views cannot have both real and virtual children"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0, p1}, Lj0/b;->l(I)Lh0/c;

    move-result-object p1

    return-object p1
.end method

.method public abstract s(IILandroid/os/Bundle;)Z
.end method

.method public t(Lh0/c;)V
    .locals 0

    return-void
.end method

.method public abstract u(ILh0/c;)V
.end method

.method public v(IZ)V
    .locals 0

    return-void
.end method

.method public final w(I)Z
    .locals 3

    iget-object v0, p0, Lj0/b;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lj0/b;->l:I

    if-ne v0, p1, :cond_1

    return v2

    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lj0/b;->j(I)Z

    :cond_2
    if-ne p1, v1, :cond_3

    return v2

    :cond_3
    iput p1, p0, Lj0/b;->l:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lj0/b;->v(IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lj0/b;->x(II)V

    return v0
.end method

.method public final x(II)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lj0/b;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj0/b;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lj0/b;->k(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_2
    :goto_0
    return-void
.end method
