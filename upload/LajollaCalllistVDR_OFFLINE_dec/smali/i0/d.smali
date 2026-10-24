.class public abstract Li0/d;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/app/f0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/f0;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    iput-object p1, p0, Li0/d;->a:Landroidx/appcompat/app/f0;

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Li0/d;->a:Landroidx/appcompat/app/f0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f0;->a(I)Li0/c;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Li0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Li0/d;->a:Landroidx/appcompat/app/f0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Li0/d;->a:Landroidx/appcompat/app/f0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/app/f0;->e(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
