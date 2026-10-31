.class public Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .registers 4

    .line 1
    iget p2, p0, Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;->b:I

    .line 2
    .line 3
    const/high16 v0, -0x80000000

    .line 4
    .line 5
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;->b:I

    .line 2
    .line 3
    return-void
.end method
