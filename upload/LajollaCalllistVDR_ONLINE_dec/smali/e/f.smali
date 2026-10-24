.class public final Le/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a;


# instance fields
.field public final a:Landroid/view/ActionMode$Callback;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lj/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/f;->b:Landroid/content/Context;

    iput-object p2, p0, Le/f;->a:Landroid/view/ActionMode$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/f;->c:Ljava/util/ArrayList;

    new-instance p1, Lj/j;

    invoke-direct {p1}, Lj/j;-><init>()V

    iput-object p1, p0, Le/f;->d:Lj/j;

    return-void
.end method


# virtual methods
.method public final a(Le/b;Landroidx/appcompat/view/menu/p;)Z
    .locals 3

    invoke-virtual {p0, p1}, Le/f;->e(Le/b;)Le/g;

    move-result-object p1

    iget-object v0, p0, Le/f;->d:Lj/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/f0;

    iget-object v2, p0, Le/f;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/f0;-><init>(Landroid/content/Context;La0/a;)V

    invoke-virtual {v0, p2, v1}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Le/f;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {p2, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final b(Le/b;)V
    .locals 1

    invoke-virtual {p0, p1}, Le/f;->e(Le/b;)Le/g;

    move-result-object p1

    iget-object v0, p0, Le/f;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final c(Le/b;Landroidx/appcompat/view/menu/p;)Z
    .locals 3

    invoke-virtual {p0, p1}, Le/f;->e(Le/b;)Le/g;

    move-result-object p1

    iget-object v0, p0, Le/f;->d:Lj/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/f0;

    iget-object v2, p0, Le/f;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/f0;-><init>(Landroid/content/Context;La0/a;)V

    invoke-virtual {v0, p2, v1}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Le/f;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {p2, p1, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final d(Le/b;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0, p1}, Le/f;->e(Le/b;)Le/g;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/x;

    iget-object v1, p0, Le/f;->b:Landroid/content/Context;

    check-cast p2, La0/b;

    invoke-direct {v0, v1, p2}, Landroidx/appcompat/view/menu/x;-><init>(Landroid/content/Context;La0/b;)V

    iget-object p2, p0, Le/f;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {p2, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final e(Le/b;)Le/g;
    .locals 5

    iget-object v0, p0, Le/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/g;

    if-eqz v3, :cond_0

    iget-object v4, v3, Le/g;->b:Le/b;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Le/g;

    iget-object v2, p0, Le/f;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Le/g;-><init>(Landroid/content/Context;Le/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
