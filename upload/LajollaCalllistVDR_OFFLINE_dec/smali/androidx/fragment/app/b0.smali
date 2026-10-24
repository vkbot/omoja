.class public final Landroidx/fragment/app/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/p0;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/p0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/b0;->a:I

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/b0;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/p0;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/b0;->a:I

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/p0;

    iput-object p2, p0, Landroidx/fragment/app/b0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Landroidx/fragment/app/b0;->a:I

    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/p0;

    iget-object p1, p0, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/t;

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->k()V

    iget-object p0, p1, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    check-cast v0, Landroidx/fragment/app/c0;

    iget-object p1, v0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/k0;

    invoke-virtual {p1}, Landroidx/fragment/app/k0;->G()Landroidx/fragment/app/e0;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/fragment/app/h1;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/e0;)Landroidx/fragment/app/h1;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/h1;->e()V

    return-void

    :goto_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object p0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lh0/d0;->c(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
