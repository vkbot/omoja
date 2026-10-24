.class public final Landroidx/appcompat/app/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/r;
.implements Landroidx/appcompat/widget/h1;
.implements Landroidx/appcompat/widget/z0;
.implements Landroidx/appcompat/view/menu/b0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/appcompat/app/a0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/a0;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/app/q;->b:I

    iput-object p1, p0, Landroidx/appcompat/app/q;->c:Landroidx/appcompat/app/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/p;Z)V
    .locals 9

    iget v0, p0, Landroidx/appcompat/app/q;->b:I

    iget-object v1, p0, Landroidx/appcompat/app/q;->c:Landroidx/appcompat/app/a0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/a0;->l(Landroidx/appcompat/view/menu/p;)V

    return-void

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->k()Landroidx/appcompat/view/menu/p;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, p1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_1

    move-object p1, v0

    :cond_1
    iget-object v5, v1, Landroidx/appcompat/app/a0;->G:[Landroidx/appcompat/app/z;

    if-eqz v5, :cond_2

    array-length v6, v5

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v7, v5, v2

    if-eqz v7, :cond_3

    iget-object v8, v7, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-ne v8, p1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_6

    if-eqz v4, :cond_5

    iget p1, v7, Landroidx/appcompat/app/z;->a:I

    invoke-virtual {v1, p1, v7, v0}, Landroidx/appcompat/app/a0;->k(ILandroidx/appcompat/app/z;Landroidx/appcompat/view/menu/p;)V

    invoke-virtual {v1, v7, v3}, Landroidx/appcompat/app/a0;->m(Landroidx/appcompat/app/z;Z)V

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v7, p2}, Landroidx/appcompat/app/a0;->m(Landroidx/appcompat/app/z;Z)V

    :cond_6
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/view/View;Lg0/i1;)Lg0/i1;
    .locals 4

    invoke-virtual {p2}, Lg0/i1;->d()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/app/q;->c:Landroidx/appcompat/app/a0;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroidx/appcompat/app/a0;->C(Lg0/i1;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lg0/i1;->b()I

    move-result v0

    invoke-virtual {p2}, Lg0/i1;->c()I

    move-result v2

    invoke-virtual {p2}, Lg0/i1;->a()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lg0/i1;->f(IIII)Lg0/i1;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Lg0/s0;->h(Landroid/view/View;Lg0/i1;)Lg0/i1;

    move-result-object p1

    return-object p1
.end method

.method public final o(Landroidx/appcompat/view/menu/p;)Z
    .locals 4

    iget v0, p0, Landroidx/appcompat/app/q;->b:I

    const/4 v1, 0x1

    const/16 v2, 0x6c

    iget-object v3, p0, Landroidx/appcompat/app/q;->c:Landroidx/appcompat/app/a0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3}, Landroidx/appcompat/app/a0;->v()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    return v1

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->k()Landroidx/appcompat/view/menu/p;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, v3, Landroidx/appcompat/app/a0;->A:Z

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroidx/appcompat/app/a0;->v()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v3, v3, Landroidx/appcompat/app/a0;->L:Z

    if-nez v3, :cond_1

    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
