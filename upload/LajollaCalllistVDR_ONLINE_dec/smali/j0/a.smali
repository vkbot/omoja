.class public final Lj0/a;
.super Landroidx/appcompat/app/f0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lj0/b;


# direct methods
.method public constructor <init>(Lj0/b;)V
    .locals 0

    iput-object p1, p0, Lj0/a;->b:Lj0/b;

    invoke-direct {p0}, Landroidx/appcompat/app/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lh0/c;
    .locals 1

    iget-object v0, p0, Lj0/a;->b:Lj0/b;

    invoke-virtual {v0, p1}, Lj0/b;->r(I)Lh0/c;

    move-result-object p1

    iget-object p1, p1, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    new-instance v0, Lh0/c;

    invoke-direct {v0, p1}, Lh0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public final b(I)Lh0/c;
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lj0/a;->b:Lj0/b;

    if-ne p1, v0, :cond_0

    iget p1, v1, Lj0/b;->k:I

    goto :goto_0

    :cond_0
    iget p1, v1, Lj0/b;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lj0/a;->a(I)Lh0/c;

    move-result-object p1

    return-object p1
.end method

.method public final e(IILandroid/os/Bundle;)Z
    .locals 7

    iget-object v0, p0, Lj0/a;->b:Lj0/b;

    iget-object v1, v0, Lj0/b;->i:Landroid/view/View;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    const/4 v2, 0x1

    if-eq p2, v2, :cond_6

    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    const/16 v3, 0x40

    const/high16 v4, 0x10000

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    if-eq p2, v3, :cond_2

    const/16 v3, 0x80

    if-eq p2, v3, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lj0/b;->s(IILandroid/os/Bundle;)Z

    move-result p1

    goto :goto_2

    :cond_0
    iget p2, v0, Lj0/b;->k:I

    if-ne p2, p1, :cond_1

    iput v6, v0, Lj0/b;->k:I

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0, p1, v4}, Lj0/b;->x(II)V

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    :goto_1
    move p1, v2

    goto :goto_2

    :cond_2
    iget-object p2, v0, Lj0/b;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget p2, v0, Lj0/b;->k:I

    if-eq p2, p1, :cond_1

    if-eq p2, v6, :cond_4

    iput v6, v0, Lj0/b;->k:I

    iget-object p3, v0, Lj0/b;->i:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0, p2, v4}, Lj0/b;->x(II)V

    :cond_4
    iput p1, v0, Lj0/b;->k:I

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    invoke-virtual {v0, p1, p2}, Lj0/b;->x(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1}, Lj0/b;->j(I)Z

    move-result p1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1}, Lj0/b;->w(I)Z

    move-result p1

    goto :goto_2

    :cond_7
    sget-object p1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, p2, p3}, Lg0/a0;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    :goto_2
    return p1
.end method
