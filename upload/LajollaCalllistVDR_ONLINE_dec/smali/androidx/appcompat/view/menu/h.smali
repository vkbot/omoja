.class public final Landroidx/appcompat/view/menu/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Landroidx/appcompat/view/menu/h;->b:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/view/menu/h;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/view/menu/h;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/appcompat/view/menu/h;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Landroidx/appcompat/view/menu/h;->b:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->e:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->d:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/appcompat/view/menu/h;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Landroidx/appcompat/view/menu/j;

    if-eqz v3, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/i;

    iget-object v4, v0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/view/menu/k;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/view/menu/k;->B:Z

    iget-object v3, v3, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/p;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/p;->c(Z)V

    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/k;

    iput-boolean v4, v0, Landroidx/appcompat/view/menu/k;->B:Z

    :cond_0
    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v1, Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroidx/appcompat/view/menu/p;->q(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/c0;I)Z

    :cond_1
    return-void

    :goto_0
    check-cast v3, Landroidx/fragment/app/c1;

    check-cast v2, Landroid/view/View;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroidx/fragment/app/c1;->h(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
