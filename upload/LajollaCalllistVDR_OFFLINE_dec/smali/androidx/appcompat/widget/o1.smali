.class public final Landroidx/appcompat/widget/o1;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/n1;


# instance fields
.field public z:Landroidx/appcompat/widget/n1;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final g(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/o1;->z:Landroidx/appcompat/widget/n1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/widget/n1;->g(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/view/menu/r;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/o1;->z:Landroidx/appcompat/widget/n1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/widget/n1;->l(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/view/menu/r;)V

    :cond_0
    return-void
.end method

.method public final q(Landroid/content/Context;Z)Landroidx/appcompat/widget/d1;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroidx/appcompat/widget/n1;)V

    return-object v0
.end method
