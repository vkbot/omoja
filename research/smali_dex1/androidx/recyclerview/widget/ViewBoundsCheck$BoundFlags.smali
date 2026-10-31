.class Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 5
    .line 6
    return-void
.end method

.method public boundsMatch()Z
    .registers 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x7

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_13

    .line 7
    .line 8
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 9
    .line 10
    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 11
    .line 12
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    and-int/2addr v0, v1

    .line 17
    if-nez v0, :cond_13

    .line 18
    .line 19
    return v2

    .line 20
    :cond_13
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 21
    .line 22
    and-int/lit8 v1, v0, 0x70

    .line 23
    .line 24
    if-eqz v1, :cond_27

    .line 25
    .line 26
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 27
    .line 28
    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 29
    .line 30
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    shl-int/lit8 v1, v1, 0x4

    .line 35
    .line 36
    and-int/2addr v0, v1

    .line 37
    if-nez v0, :cond_27

    .line 38
    .line 39
    return v2

    .line 40
    :cond_27
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 41
    .line 42
    and-int/lit16 v1, v0, 0x700

    .line 43
    .line 44
    if-eqz v1, :cond_3b

    .line 45
    .line 46
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 47
    .line 48
    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 49
    .line 50
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    shl-int/lit8 v1, v1, 0x8

    .line 55
    .line 56
    and-int/2addr v0, v1

    .line 57
    if-nez v0, :cond_3b

    .line 58
    .line 59
    return v2

    .line 60
    :cond_3b
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 61
    .line 62
    and-int/lit16 v1, v0, 0x7000

    .line 63
    .line 64
    if-eqz v1, :cond_4f

    .line 65
    .line 66
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 67
    .line 68
    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 69
    .line 70
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    shl-int/lit8 v1, v1, 0xc

    .line 75
    .line 76
    and-int/2addr v0, v1

    .line 77
    if-nez v0, :cond_4f

    .line 78
    .line 79
    return v2

    .line 80
    :cond_4f
    const/4 v0, 0x1

    .line 81
    return v0
.end method

.method public compare(II)I
    .registers 3

    .line 1
    if-le p1, p2, :cond_4

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    if-ne p1, p2, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    return p1

    .line 9
    :cond_8
    const/4 p1, 0x4

    .line 10
    return p1
.end method

.method public resetFlags()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 3
    .line 4
    return-void
.end method

.method public setBounds(IIII)V
    .registers 5

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 4
    .line 5
    iput p3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 6
    .line 7
    iput p4, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 8
    .line 9
    return-void
.end method
