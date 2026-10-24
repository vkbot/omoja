.class public final Lg0/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final a:Lg0/b;


# direct methods
.method public constructor <init>(Lg0/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lg0/a;->a:Lg0/b;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lg0/a;->a:Lg0/b;

    invoke-virtual {v0, p1, p2}, Lg0/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lg0/a;->a:Lg0/b;

    invoke-virtual {v0, p1}, Lg0/b;->b(Landroid/view/View;)Landroidx/appcompat/app/f0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/f0;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lg0/a;->a:Lg0/b;

    invoke-virtual {v0, p1, p2}, Lg0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 10

    new-instance v0, Lh0/c;

    invoke-direct {v0, p2}, Lh0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    new-instance v1, Lg0/w;

    sget v2, Landroidx/core/R$id;->tag_screen_reader_focusable:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg0/w;-><init>(II)V

    invoke-virtual {v1, p1}, Lg0/y;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_1

    invoke-static {p2, v1}, Landroidx/appcompat/widget/q0;->u(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7, v5, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    and-int/lit8 v8, v8, -0x2

    or-int/2addr v1, v8

    invoke-virtual {v7, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    new-instance v1, Lg0/w;

    sget v7, Landroidx/core/R$id;->tag_accessibility_heading:I

    const/4 v8, 0x3

    invoke-direct {v1, v7, v8}, Lg0/w;-><init>(II)V

    invoke-virtual {v1, p1}, Lg0/y;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    const/4 v7, 0x2

    if-lt v4, v6, :cond_4

    invoke-static {p2, v1}, Landroidx/appcompat/widget/q0;->B(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8, v5, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    and-int/lit8 v9, v9, -0x3

    if-eqz v1, :cond_5

    move v1, v7

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    or-int/2addr v1, v9

    invoke-virtual {v8, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    :goto_4
    new-instance v1, Lg0/w;

    sget v5, Landroidx/core/R$id;->tag_accessibility_pane_title:I

    const/16 v8, 0x8

    invoke-direct {v1, v5, v8, v6, v2}, Lg0/w;-><init>(IIII)V

    invoke-virtual {v1, p1}, Lg0/y;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-lt v4, v6, :cond_7

    invoke-static {p2, v1}, Landroidx/appcompat/widget/q0;->t(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_5
    new-instance v1, Lg0/w;

    sget v5, Landroidx/core/R$id;->tag_state_description:I

    const/16 v6, 0x40

    const/16 v8, 0x1e

    invoke-direct {v1, v5, v6, v8, v7}, Lg0/w;-><init>(IIII)V

    invoke-virtual {v1, p1}, Lg0/y;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-lt v4, v8, :cond_8

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    if-eqz v2, :cond_9

    invoke-static {p2, v1}, Landroidx/work/impl/utils/a;->f(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_9
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v1, p0, Lg0/a;->a:Lg0/b;

    invoke-virtual {v1, p1, v0}, Lg0/b;->d(Landroid/view/View;Lh0/c;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    sget p2, Landroidx/core/R$id;->tag_accessibility_actions:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_a
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v3, p2, :cond_b

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh0/b;

    invoke-virtual {v0, p2}, Lh0/c;->b(Lh0/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lg0/a;->a:Lg0/b;

    invoke-virtual {v0, p1, p2}, Lg0/b;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lg0/a;->a:Lg0/b;

    invoke-virtual {v0, p1, p2, p3}, Lg0/b;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lg0/a;->a:Lg0/b;

    invoke-virtual {v0, p1, p2, p3}, Lg0/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lg0/a;->a:Lg0/b;

    invoke-virtual {v0, p1, p2}, Lg0/b;->h(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lg0/a;->a:Lg0/b;

    invoke-virtual {v0, p1, p2}, Lg0/b;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
