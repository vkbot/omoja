.class public final Landroidx/appcompat/app/i0;
.super Ly1/l;
.source "SourceFile"


# instance fields
.field public final synthetic u:I

.field public final synthetic v:Landroidx/appcompat/app/k0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/k0;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/app/i0;->u:I

    iput-object p1, p0, Landroidx/appcompat/app/i0;->v:Landroidx/appcompat/app/k0;

    invoke-direct {p0}, Ly1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/app/i0;->u:I

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/appcompat/app/i0;->v:Landroidx/appcompat/app/k0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Landroidx/appcompat/app/k0;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/k0;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iput-object v1, p0, Landroidx/appcompat/app/k0;->s:Lf/m;

    iget-object v0, p0, Landroidx/appcompat/app/k0;->k:Lf/b;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/app/k0;->j:Landroidx/appcompat/app/j0;

    invoke-interface {v0, v2}, Lf/b;->c(Lf/c;)V

    iput-object v1, p0, Landroidx/appcompat/app/k0;->j:Landroidx/appcompat/app/j0;

    iput-object v1, p0, Landroidx/appcompat/app/k0;->k:Lf/b;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_2

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/d0;->c(Landroid/view/View;)V

    :cond_2
    return-void

    :goto_0
    iput-object v1, p0, Landroidx/appcompat/app/k0;->s:Lf/m;

    iget-object p0, p0, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
