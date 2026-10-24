.class public abstract Li0/e;
.super Li0/d;
.source "SourceFile"


# virtual methods
.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Li0/d;->a:Landroidx/appcompat/app/f0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f0;->b(I)Li0/c;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Li0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method
