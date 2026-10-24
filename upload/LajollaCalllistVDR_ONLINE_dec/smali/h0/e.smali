.class public abstract Lh0/e;
.super Lh0/d;
.source "SourceFile"


# virtual methods
.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Lh0/d;->a:Landroidx/appcompat/app/f0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/f0;->b(I)Lh0/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method
