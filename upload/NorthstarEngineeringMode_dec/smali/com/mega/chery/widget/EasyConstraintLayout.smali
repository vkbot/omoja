.class public Lcom/mega/chery/widget/EasyConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/chery/widget/EasyConstraintLayout$a;
    }
.end annotation


# instance fields
.field public a:J


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

    invoke-static {v2, p1}, Lcom/mega/chery/widget/EasyConstraintLayout;->a(Landroid/view/ViewGroup;Z)V

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
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mega/chery/widget/EasyConstraintLayout;->a:J

    sub-long v2, v0, v2

    const/4 p1, 0x0

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const-string p1, "EasyConstraintLayout"

    const-string v2, "fast click return"

    invoke-static {p1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/mega/chery/widget/EasyConstraintLayout;->a:J

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/mega/chery/widget/EasyConstraintLayout;->a:J

    return-void
.end method

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

.method public final performClick()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "EasyConstraintLayout"

    const-string v0, "is disabled,can not perform click"

    invoke-static {p0, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {p0, p1}, Lcom/mega/chery/widget/EasyConstraintLayout;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnInterceptTouchEventListener(Lcom/mega/chery/widget/EasyConstraintLayout$a;)V
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
