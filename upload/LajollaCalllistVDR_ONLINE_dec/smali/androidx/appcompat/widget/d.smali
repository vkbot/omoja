.class public final Landroidx/appcompat/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionBarContextView;Le/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/d;->b:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/d;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/d3;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/d;->b:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/appcompat/view/menu/a;

    iget-object v1, p1, Landroidx/appcompat/widget/d3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Landroidx/appcompat/widget/d3;->i:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/appcompat/widget/d;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Landroidx/appcompat/widget/d;->b:I

    iget-object v0, p0, Landroidx/appcompat/widget/d;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Le/b;

    invoke-virtual {v0}, Le/b;->a()V

    return-void

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/d;->d:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/d3;

    iget-object v1, p1, Landroidx/appcompat/widget/d3;->l:Landroid/view/Window$Callback;

    if-eqz v1, :cond_0

    iget-boolean p1, p1, Landroidx/appcompat/widget/d3;->m:Z

    if-eqz p1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/a;

    const/4 p1, 0x0

    invoke-interface {v1, p1, v0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
