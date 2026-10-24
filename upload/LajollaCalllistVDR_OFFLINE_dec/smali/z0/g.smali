.class public final Lz0/g;
.super Lh0/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lz0/g;->d:I

    iput-object p1, p0, Lz0/g;->e:Landroid/view/View;

    invoke-direct {p0}, Lh0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget v0, p0, Lz0/g;->d:I

    iget-object v1, p0, Lz0/g;->e:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lh0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :pswitch_1
    invoke-super {p0, p1, p2}, Lh0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void

    :pswitch_2
    invoke-super {p0, p1, p2}, Lh0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    move-object p0, v1

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p0

    const/16 p1, 0x1000

    if-ne p0, p1, :cond_0

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Landroid/view/View;Li0/c;)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p2, Li0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v2, p0, Lz0/g;->d:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lz0/g;->e:Landroid/view/View;

    iget-object p0, p0, Lh0/b;->a:Landroid/view/View$AccessibilityDelegate;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v5, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p0, v5, Lcom/google/android/material/internal/CheckableImageButton;->e:Z

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {v5}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v5, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    sget p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move p0, v4

    move v1, p0

    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v2, :cond_2

    invoke-virtual {v5, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p0

    invoke-static {v4, v0, v3, v0, p0}, Landroidx/appcompat/app/f0;->d(IIIIZ)Landroidx/appcompat/app/f0;

    move-result-object p0

    invoke-virtual {p2, p0}, Li0/c;->g(Landroidx/appcompat/app/f0;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Li0/c;->f(Ljava/lang/CharSequence;)V

    move-object p0, v5

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    check-cast v5, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x1000

    invoke-virtual {p2, p0}, Li0/c;->a(I)V

    :cond_4
    invoke-virtual {v5, v3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x2000

    invoke-virtual {p2, p0}, Li0/c;->a(I)V

    :cond_5
    return-void

    :goto_2
    invoke-virtual {p0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v5, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean p0, v5, Lcom/google/android/material/internal/NavigationMenuItemView;->x:Z

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget v0, p0, Lz0/g;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lh0/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lh0/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x1000

    iget-object p0, p0, Lz0/g;->e:Landroid/view/View;

    if-eq p2, p1, :cond_2

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rsub-int/lit8 p1, p3, 0x0

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_2
    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p3, 0x0

    :goto_1
    return p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
