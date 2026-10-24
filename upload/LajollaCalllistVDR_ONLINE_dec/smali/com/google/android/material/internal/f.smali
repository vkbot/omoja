.class public final Lcom/google/android/material/internal/f;
.super Landroidx/appcompat/view/menu/p;
.source "SourceFile"


# virtual methods
.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/p;->a(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/r;

    move-result-object p1

    new-instance p2, Lcom/google/android/material/internal/q;

    iget-object p3, p0, Landroidx/appcompat/view/menu/p;->a:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lcom/google/android/material/internal/q;-><init>(Landroid/content/Context;Lcom/google/android/material/internal/f;Landroidx/appcompat/view/menu/r;)V

    iput-object p2, p1, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/i0;

    iget-object p1, p1, Landroidx/appcompat/view/menu/r;->e:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/i0;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p2
.end method
