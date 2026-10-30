.class public abstract Lc3/h;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Lc3/i;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lc3/h;->b:I

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lc3/h;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/h;->a:Lc3/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lc3/i;->c:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc3/h;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lc3/h;->a:Lc3/i;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lc3/i;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p1, Lc3/i;->d:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Lc3/h;->a:Lc3/i;

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lc3/h;->a:Lc3/i;

    .line 18
    .line 19
    iget-object p2, p1, Lc3/i;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p2, Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    iput p3, p1, Lc3/i;->a:I

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iput p2, p1, Lc3/i;->b:I

    .line 34
    .line 35
    iget-object p1, p0, Lc3/h;->a:Lc3/i;

    .line 36
    .line 37
    invoke-virtual {p1}, Lc3/i;->b()V

    .line 38
    .line 39
    .line 40
    iget p1, p0, Lc3/h;->b:I

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Lc3/h;->a:Lc3/i;

    .line 45
    .line 46
    iget p3, p2, Lc3/i;->c:I

    .line 47
    .line 48
    if-eq p3, p1, :cond_1

    .line 49
    .line 50
    iput p1, p2, Lc3/i;->c:I

    .line 51
    .line 52
    invoke-virtual {p2}, Lc3/i;->b()V

    .line 53
    .line 54
    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lc3/h;->b:I

    .line 57
    .line 58
    :cond_2
    const/4 p1, 0x1

    .line 59
    return p1
.end method
