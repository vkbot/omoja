.class public abstract Lf1/i;
.super Lu/b;
.source "SourceFile"


# instance fields
.field public a:Lf1/j;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf1/i;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lu/b;-><init>(I)V

    .line 4
    iput p1, p0, Lf1/i;->b:I

    return-void
.end method


# virtual methods
.method public h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lf1/i;->t(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lf1/i;->a:Lf1/j;

    if-nez p1, :cond_0

    new-instance p1, Lf1/j;

    invoke-direct {p1, p2}, Lf1/j;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lf1/i;->a:Lf1/j;

    :cond_0
    iget-object p1, p0, Lf1/i;->a:Lf1/j;

    iget-object p2, p1, Lf1/j;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iput p3, p1, Lf1/j;->b:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Lf1/j;->c:I

    iget-object p1, p0, Lf1/i;->a:Lf1/j;

    invoke-virtual {p1}, Lf1/j;->a()V

    iget p1, p0, Lf1/i;->b:I

    if-eqz p1, :cond_1

    iget-object p2, p0, Lf1/i;->a:Lf1/j;

    invoke-virtual {p2, p1}, Lf1/j;->b(I)Z

    const/4 p1, 0x0

    iput p1, p0, Lf1/i;->b:I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final s()I
    .locals 0

    iget-object p0, p0, Lf1/i;->a:Lf1/j;

    if-eqz p0, :cond_0

    iget p0, p0, Lf1/j;->d:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v(Landroid/view/View;I)V

    return-void
.end method
