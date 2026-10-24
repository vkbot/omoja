.class public Lcom/mega/chery/widget/EasyLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/chery/widget/EasyLinearLayout$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/mega/chery/widget/EasyLinearLayout;->a(Landroid/view/ViewGroup;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {p0, p1}, Lcom/mega/chery/widget/EasyLinearLayout;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setOnInterceptTouchEventListener(Lcom/mega/chery/widget/EasyLinearLayout$a;)V
    .locals 0

    return-void
.end method

.method public setOnSetEnabledListener(Lb1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/c<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
