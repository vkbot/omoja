.class public final Landroidx/appcompat/view/menu/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field public final a:Landroid/view/MenuItem$OnActionExpandListener;

.field public final synthetic b:Landroidx/appcompat/view/menu/x;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/x;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/v;->b:Landroidx/appcompat/view/menu/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/v;->a:Landroid/view/MenuItem$OnActionExpandListener;

    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/v;->b:Landroidx/appcompat/view/menu/x;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->n(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/view/menu/v;->a:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {p0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/v;->b:Landroidx/appcompat/view/menu/x;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->n(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/view/menu/v;->a:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {p0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
