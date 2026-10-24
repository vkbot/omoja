.class public final Landroidx/appcompat/widget/i;
.super Landroidx/appcompat/view/menu/a0;
.source "SourceFile"


# instance fields
.field public final synthetic m:I

.field public final synthetic n:Landroidx/appcompat/widget/o;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/o;Landroid/content/Context;Landroidx/appcompat/view/menu/i0;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/i;->m:I

    .line 8
    iput-object p1, p0, Landroidx/appcompat/widget/i;->n:Landroidx/appcompat/widget/o;

    const/4 v5, 0x0

    .line 9
    sget v6, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/a0;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/p;Landroid/view/View;ZI)V

    .line 10
    iget-object p2, p3, Landroidx/appcompat/view/menu/i0;->A:Landroidx/appcompat/view/menu/r;

    .line 11
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/r;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    iget-object p2, p1, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p1, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    .line 14
    check-cast p2, Landroid/view/View;

    .line 15
    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    .line 16
    :cond_1
    iget-object p1, p1, Landroidx/appcompat/widget/o;->y:Landroidx/appcompat/view/menu/i;

    .line 17
    iput-object p1, p0, Landroidx/appcompat/view/menu/a0;->i:Landroidx/appcompat/view/menu/b0;

    .line 18
    iget-object p2, p0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    if-eqz p2, :cond_2

    .line 19
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/c0;->k(Landroidx/appcompat/view/menu/b0;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/o;Landroid/content/Context;Landroidx/appcompat/view/menu/p;Landroidx/appcompat/widget/m;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/i;->m:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/i;->n:Landroidx/appcompat/widget/o;

    .line 2
    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/a0;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/p;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 3
    iput p2, p0, Landroidx/appcompat/view/menu/a0;->g:I

    .line 4
    iget-object p1, p1, Landroidx/appcompat/widget/o;->y:Landroidx/appcompat/view/menu/i;

    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/a0;->i:Landroidx/appcompat/view/menu/b0;

    .line 6
    iget-object p2, p0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/c0;->k(Landroidx/appcompat/view/menu/b0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget v0, p0, Landroidx/appcompat/widget/i;->m:I

    iget-object v1, p0, Landroidx/appcompat/widget/i;->n:Landroidx/appcompat/widget/o;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object v2, v1, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/i;

    const/4 v0, 0x0

    iput v0, v1, Landroidx/appcompat/widget/o;->z:I

    invoke-super {p0}, Landroidx/appcompat/view/menu/a0;->c()V

    return-void

    :goto_0
    iget-object v0, v1, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/p;->c(Z)V

    :cond_0
    iput-object v2, v1, Landroidx/appcompat/widget/o;->u:Landroidx/appcompat/widget/i;

    invoke-super {p0}, Landroidx/appcompat/view/menu/a0;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
