.class Landroidx/recyclerview/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I
    .registers 9

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v3, v1

    .line 10
    :goto_9
    iget-object v4, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    if-nez v4, :cond_f

    .line 13
    .line 14
    move v4, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v4, v1

    .line 17
    :goto_10
    const/4 v5, -0x1

    .line 18
    if-eq v3, v4, :cond_17

    .line 19
    .line 20
    if-nez v0, :cond_16

    .line 21
    .line 22
    return v2

    .line 23
    :cond_16
    return v5

    .line 24
    :cond_17
    iget-boolean v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 25
    .line 26
    iget-boolean v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 27
    .line 28
    if-eq v0, v3, :cond_21

    .line 29
    .line 30
    if-eqz v0, :cond_20

    .line 31
    .line 32
    return v5

    .line 33
    :cond_20
    return v2

    .line 34
    :cond_21
    iget v0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 35
    .line 36
    iget v2, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 37
    .line 38
    sub-int/2addr v0, v2

    .line 39
    if-eqz v0, :cond_29

    .line 40
    .line 41
    return v0

    .line 42
    :cond_29
    iget p1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 43
    .line 44
    iget p2, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 45
    .line 46
    sub-int/2addr p1, p2

    .line 47
    if-eqz p1, :cond_31

    .line 48
    .line 49
    return p1

    .line 50
    :cond_31
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 51
    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GapWorker$1;->compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I

    move-result p1

    return p1
.end method
