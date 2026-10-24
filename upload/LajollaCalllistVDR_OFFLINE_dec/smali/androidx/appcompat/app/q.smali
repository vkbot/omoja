.class public final Landroidx/appcompat/app/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/q;
.implements Landroidx/appcompat/widget/e1;
.implements Landroidx/appcompat/widget/x0;
.implements Landroidx/appcompat/view/menu/b0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/app/a0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/a0;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/app/q;->a:I

    iput-object p1, p0, Landroidx/appcompat/app/q;->b:Landroidx/appcompat/app/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lh0/f1;)Lh0/f1;
    .locals 4

    invoke-virtual {p2}, Lh0/f1;->d()I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/app/q;->b:Landroidx/appcompat/app/a0;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/app/a0;->H(Lh0/f1;Landroid/graphics/Rect;)I

    move-result p0

    if-eq v0, p0, :cond_0

    invoke-virtual {p2}, Lh0/f1;->b()I

    move-result v0

    invoke-virtual {p2}, Lh0/f1;->c()I

    move-result v1

    invoke-virtual {p2}, Lh0/f1;->a()I

    move-result v2

    new-instance v3, Lh0/x0;

    invoke-direct {v3, p2}, Lh0/x0;-><init>(Lh0/f1;)V

    invoke-static {v0, p0, v1, v2}, Lz/b;->a(IIII)Lz/b;

    move-result-object p0

    invoke-virtual {v3, p0}, Lh0/w0;->d(Lz/b;)V

    invoke-virtual {v3}, Lh0/w0;->b()Lh0/f1;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Lh0/q0;->f(Landroid/view/View;Lh0/f1;)Lh0/f1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroidx/appcompat/view/menu/p;Z)V
    .locals 8

    iget v0, p0, Landroidx/appcompat/app/q;->a:I

    iget-object p0, p0, Landroidx/appcompat/app/q;->b:Landroidx/appcompat/app/a0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->n(Landroidx/appcompat/view/menu/p;)V

    return-void

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->k()Landroidx/appcompat/view/menu/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    move-object p1, v0

    :cond_1
    iget-object v4, p0, Landroidx/appcompat/app/a0;->F:[Landroidx/appcompat/app/z;

    if-eqz v4, :cond_2

    array-length v5, v4

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    if-eqz v6, :cond_3

    iget-object v7, v6, Landroidx/appcompat/app/z;->h:Landroidx/appcompat/view/menu/p;

    if-ne v7, p1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_6

    if-eqz v3, :cond_5

    iget p1, v6, Landroidx/appcompat/app/z;->a:I

    invoke-virtual {p0, p1, v6, v0}, Landroidx/appcompat/app/a0;->m(ILandroidx/appcompat/app/z;Landroidx/appcompat/view/menu/p;)V

    invoke-virtual {p0, v6, v2}, Landroidx/appcompat/app/a0;->o(Landroidx/appcompat/app/z;Z)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v6, p2}, Landroidx/appcompat/app/a0;->o(Landroidx/appcompat/app/z;Z)V

    :cond_6
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Landroidx/appcompat/view/menu/p;)Z
    .locals 3

    iget v0, p0, Landroidx/appcompat/app/q;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x6c

    iget-object p0, p0, Landroidx/appcompat/app/q;->b:Landroidx/appcompat/app/a0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->y()Landroid/view/Window$Callback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    return v1

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->k()Landroidx/appcompat/view/menu/p;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->z:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->y()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Landroidx/appcompat/app/a0;->K:Z

    if-nez p0, :cond_1

    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
