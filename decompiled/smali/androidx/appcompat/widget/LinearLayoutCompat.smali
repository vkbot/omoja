.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.appcompat.widget.LinearLayoutCompat"

.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 12
    .line 13
    const v3, 0x800033

    .line 14
    .line 15
    .line 16
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 17
    .line 18
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    .line 19
    .line 20
    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    .line 25
    .line 26
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const/4 v10, 0x0

    .line 31
    move-object v4, p0

    .line 32
    move-object v5, p1

    .line 33
    move-object v7, p2

    .line 34
    move v9, p3

    .line 35
    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 36
    .line 37
    .line 38
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    .line 39
    .line 40
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ltz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    .line 50
    .line 51
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ltz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    .line 61
    .line 62
    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 69
    .line 70
    .line 71
    :cond_2
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    .line 72
    .line 73
    const/high16 p2, -0x40800000    # -1.0f

    .line 74
    .line 75
    invoke-virtual {v3, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 80
    .line 81
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 82
    .line 83
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 88
    .line 89
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    .line 90
    .line 91
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput-boolean p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 96
    .line 97
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    .line 98
    .line 99
    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    .line 105
    .line 106
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    .line 107
    .line 108
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 113
    .line 114
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    .line 115
    .line 116
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 121
    .line 122
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-ge v0, p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 31
    .line 32
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    if-ne v2, v4, :cond_0

    .line 36
    .line 37
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v2, p0

    .line 48
    move v4, p2

    .line 49
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 50
    .line 51
    .line 52
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    move v4, p2

    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    move p2, v4

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-ge v0, p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 31
    .line 32
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    .line 34
    const/4 v5, -0x1

    .line 35
    if-ne v2, v5, :cond_0

    .line 36
    .line 37
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v2, p0

    .line 48
    move v6, p2

    .line 49
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 50
    .line 51
    .line 52
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    move v6, p2

    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    move p2, v6

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    add-int/2addr p4, p2

    .line 2
    add-int/2addr p5, p3

    .line 3
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method public drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/16 v5, 0x8

    .line 23
    .line 24
    if-eq v4, v5, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 45
    .line 46
    add-int/2addr v3, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 53
    .line 54
    sub-int/2addr v3, v4

    .line 55
    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 56
    .line 57
    sub-int/2addr v3, v4

    .line 58
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_6

    .line 69
    .line 70
    add-int/lit8 v0, v0, -0x1

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    sub-int/2addr v0, v1

    .line 94
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 95
    .line 96
    :goto_2
    sub-int/2addr v0, v1

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 111
    .line 112
    sub-int/2addr v0, v1

    .line 113
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 121
    .line 122
    add-int/2addr v0, v1

    .line 123
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 124
    .line 125
    .line 126
    :cond_6
    return-void
.end method

.method public drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 39
    .line 40
    sub-int/2addr v2, v3

    .line 41
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 42
    .line 43
    sub-int/2addr v2, v3

    .line 44
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    sub-int/2addr v0, v1

    .line 73
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 74
    .line 75
    sub-int/2addr v0, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 88
    .line 89
    add-int/2addr v0, v1

    .line 90
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void
.end method

.method public drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 23
    .line 24
    add-int/2addr v3, p2

    .line 25
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 11
    .line 12
    add-int/2addr v2, p2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-int/2addr v3, v4

    .line 22
    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 7
    .line 8
    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .line 32
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 6
    .line 7
    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 18
    .line 19
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 15
    .line 16
    if-le v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x1

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    .line 35
    .line 36
    invoke-static {v0}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    const/4 v0, 0x0

    .line 40
    return v0

    .line 41
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 42
    .line 43
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v3, v4, :cond_5

    .line 47
    .line 48
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 49
    .line 50
    and-int/lit8 v3, v3, 0x70

    .line 51
    .line 52
    const/16 v4, 0x30

    .line 53
    .line 54
    if-eq v3, v4, :cond_5

    .line 55
    .line 56
    const/16 v4, 0x10

    .line 57
    .line 58
    if-eq v3, v4, :cond_4

    .line 59
    .line 60
    const/16 v4, 0x50

    .line 61
    .line 62
    if-eq v3, v4, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    sub-int/2addr v2, v3

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    sub-int/2addr v2, v3

    .line 79
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 80
    .line 81
    sub-int/2addr v2, v3

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    sub-int/2addr v3, v4

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    sub-int/2addr v3, v4

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    sub-int/2addr v3, v4

    .line 102
    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 103
    .line 104
    sub-int/2addr v3, v4

    .line 105
    div-int/lit8 v3, v3, 0x2

    .line 106
    .line 107
    add-int/2addr v2, v3

    .line 108
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 113
    .line 114
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 115
    .line 116
    add-int/2addr v2, v0

    .line 117
    add-int/2addr v2, v1

    .line 118
    return v2

    .line 119
    :cond_6
    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    .line 120
    .line 121
    invoke-static {v0}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividerWidth()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getGravity()I
    .locals 1
    .annotation build Landroidx/annotation/GravityInt;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 2
    .line 3
    return v0
.end method

.method public getLocationOffset(Landroid/view/View;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 2
    .line 3
    return v0
.end method

.method public getVirtualChildAt(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 2
    .line 3
    return v0
.end method

.method public hasDividerBeforeChildAt(I)Z
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 6
    .line 7
    and-int/2addr p1, v1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    return v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 17
    .line 18
    if-ne p1, v2, :cond_3

    .line 19
    .line 20
    and-int/lit8 p1, v3, 0x4

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    return v0

    .line 26
    :cond_3
    and-int/lit8 v2, v3, 0x2

    .line 27
    .line 28
    if-eqz v2, :cond_5

    .line 29
    .line 30
    sub-int/2addr p1, v1

    .line 31
    :goto_0
    if-ltz p1, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/16 v3, 0x8

    .line 42
    .line 43
    if-eq v2, v3, :cond_4

    .line 44
    .line 45
    return v1

    .line 46
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_5
    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 2
    .line 3
    return v0
.end method

.method public layoutHorizontal(IIII)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    sub-int v2, p4, p2

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int v7, v2, v3

    .line 18
    .line 19
    sub-int/2addr v2, v6

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sub-int v8, v2, v3

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 31
    .line 32
    const v3, 0x800007

    .line 33
    .line 34
    .line 35
    and-int/2addr v3, v2

    .line 36
    and-int/lit8 v10, v2, 0x70

    .line 37
    .line 38
    iget-boolean v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 39
    .line 40
    iget-object v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 41
    .line 42
    iget-object v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {v3, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v14, 0x2

    .line 53
    const/4 v15, 0x1

    .line 54
    if-eq v2, v15, :cond_1

    .line 55
    .line 56
    const/4 v3, 0x5

    .line 57
    if-eq v2, v3, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int v2, v2, p3

    .line 69
    .line 70
    sub-int v2, v2, p1

    .line 71
    .line 72
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 73
    .line 74
    sub-int/2addr v2, v3

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    sub-int v3, p3, p1

    .line 81
    .line 82
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 83
    .line 84
    sub-int/2addr v3, v4

    .line 85
    div-int/2addr v3, v14

    .line 86
    add-int/2addr v2, v3

    .line 87
    :goto_0
    const/4 v3, 0x0

    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    add-int/lit8 v1, v9, -0x1

    .line 91
    .line 92
    move/from16 v16, v1

    .line 93
    .line 94
    const/16 v17, -0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    move/from16 v16, v3

    .line 98
    .line 99
    move/from16 v17, v15

    .line 100
    .line 101
    :goto_1
    move v1, v3

    .line 102
    :goto_2
    if-ge v1, v9, :cond_d

    .line 103
    .line 104
    mul-int v3, v17, v1

    .line 105
    .line 106
    add-int v3, v3, v16

    .line 107
    .line 108
    move v5, v1

    .line 109
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-nez v1, :cond_3

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/2addr v1, v2

    .line 120
    move v2, v1

    .line 121
    move v1, v5

    .line 122
    move/from16 v19, v6

    .line 123
    .line 124
    move/from16 p2, v14

    .line 125
    .line 126
    move/from16 p4, v15

    .line 127
    .line 128
    const/16 v18, -0x1

    .line 129
    .line 130
    goto/16 :goto_7

    .line 131
    .line 132
    :cond_3
    move/from16 p2, v14

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    move/from16 p4, v15

    .line 139
    .line 140
    const/16 v15, 0x8

    .line 141
    .line 142
    if-eq v14, v15, :cond_c

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    move v15, v5

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 154
    .line 155
    .line 156
    move-result-object v18

    .line 157
    move-object/from16 v4, v18

    .line 158
    .line 159
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 160
    .line 161
    move/from16 p3, v2

    .line 162
    .line 163
    if-eqz v11, :cond_4

    .line 164
    .line 165
    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 166
    .line 167
    move/from16 v18, v5

    .line 168
    .line 169
    const/4 v5, -0x1

    .line 170
    if-eq v2, v5, :cond_5

    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    goto :goto_3

    .line 177
    :cond_4
    move/from16 v18, v5

    .line 178
    .line 179
    :cond_5
    const/4 v5, -0x1

    .line 180
    :goto_3
    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 181
    .line 182
    if-gez v2, :cond_6

    .line 183
    .line 184
    move v2, v10

    .line 185
    :cond_6
    and-int/lit8 v2, v2, 0x70

    .line 186
    .line 187
    move/from16 v19, v6

    .line 188
    .line 189
    const/16 v6, 0x10

    .line 190
    .line 191
    if-eq v2, v6, :cond_9

    .line 192
    .line 193
    const/16 v6, 0x30

    .line 194
    .line 195
    if-eq v2, v6, :cond_8

    .line 196
    .line 197
    const/16 v6, 0x50

    .line 198
    .line 199
    if-eq v2, v6, :cond_7

    .line 200
    .line 201
    move/from16 v2, v19

    .line 202
    .line 203
    const/4 v6, -0x1

    .line 204
    goto :goto_5

    .line 205
    :cond_7
    sub-int v2, v7, v18

    .line 206
    .line 207
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 208
    .line 209
    sub-int/2addr v2, v6

    .line 210
    const/4 v6, -0x1

    .line 211
    if-eq v5, v6, :cond_a

    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 214
    .line 215
    .line 216
    move-result v20

    .line 217
    sub-int v20, v20, v5

    .line 218
    .line 219
    aget v5, v13, p2

    .line 220
    .line 221
    sub-int v5, v5, v20

    .line 222
    .line 223
    :goto_4
    sub-int/2addr v2, v5

    .line 224
    goto :goto_5

    .line 225
    :cond_8
    const/4 v6, -0x1

    .line 226
    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 227
    .line 228
    add-int v2, v19, v2

    .line 229
    .line 230
    if-eq v5, v6, :cond_a

    .line 231
    .line 232
    aget v20, v12, p4

    .line 233
    .line 234
    sub-int v20, v20, v5

    .line 235
    .line 236
    add-int v2, v20, v2

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_9
    const/4 v6, -0x1

    .line 240
    sub-int v2, v8, v18

    .line 241
    .line 242
    div-int/lit8 v2, v2, 0x2

    .line 243
    .line 244
    add-int v2, v2, v19

    .line 245
    .line 246
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 247
    .line 248
    add-int/2addr v2, v5

    .line 249
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_a
    :goto_5
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_b

    .line 257
    .line 258
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 259
    .line 260
    add-int v5, p3, v5

    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_b
    move/from16 v5, p3

    .line 264
    .line 265
    :goto_6
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 266
    .line 267
    add-int/2addr v6, v5

    .line 268
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    add-int/2addr v5, v6

    .line 273
    move/from16 p1, v6

    .line 274
    .line 275
    move-object v6, v4

    .line 276
    move v4, v14

    .line 277
    move v14, v3

    .line 278
    move v3, v2

    .line 279
    move v2, v5

    .line 280
    move/from16 v5, v18

    .line 281
    .line 282
    const/16 v18, -0x1

    .line 283
    .line 284
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 285
    .line 286
    .line 287
    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 288
    .line 289
    add-int/2addr v2, v4

    .line 290
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    add-int/2addr v3, v2

    .line 295
    add-int v3, v3, p1

    .line 296
    .line 297
    invoke-virtual {v0, v1, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    add-int/2addr v1, v15

    .line 302
    move v2, v3

    .line 303
    goto :goto_7

    .line 304
    :cond_c
    move/from16 p3, v2

    .line 305
    .line 306
    move v15, v5

    .line 307
    move/from16 v19, v6

    .line 308
    .line 309
    const/16 v18, -0x1

    .line 310
    .line 311
    move v1, v15

    .line 312
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 313
    .line 314
    move/from16 v14, p2

    .line 315
    .line 316
    move/from16 v15, p4

    .line 317
    .line 318
    move/from16 v6, v19

    .line 319
    .line 320
    goto/16 :goto_2

    .line 321
    .line 322
    :cond_d
    return-void
.end method

.method public layoutVertical(IIII)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p3, p1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sub-int p1, p3, p1

    .line 11
    .line 12
    sub-int/2addr p3, v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr p3, v1

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 23
    .line 24
    and-int/lit8 v3, v2, 0x70

    .line 25
    .line 26
    const v4, 0x800007

    .line 27
    .line 28
    .line 29
    and-int/2addr v2, v4

    .line 30
    const/16 v4, 0x10

    .line 31
    .line 32
    if-eq v3, v4, :cond_1

    .line 33
    .line 34
    const/16 v4, 0x50

    .line 35
    .line 36
    if-eq v3, v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, p4

    .line 48
    sub-int/2addr v3, p2

    .line 49
    iget p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 50
    .line 51
    sub-int p2, v3, p2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    sub-int/2addr p4, p2

    .line 59
    iget p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 60
    .line 61
    sub-int/2addr p4, p2

    .line 62
    div-int/lit8 p4, p4, 0x2

    .line 63
    .line 64
    add-int p2, p4, v3

    .line 65
    .line 66
    :goto_0
    const/4 p4, 0x0

    .line 67
    :goto_1
    if-ge p4, v1, :cond_8

    .line 68
    .line 69
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/4 v9, 0x1

    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    add-int/2addr v3, p2

    .line 81
    move p2, v3

    .line 82
    :cond_2
    move-object v3, p0

    .line 83
    goto :goto_5

    .line 84
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/16 v5, 0x8

    .line 89
    .line 90
    if-eq v3, v5, :cond_2

    .line 91
    .line 92
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    move-object v10, v3

    .line 105
    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 106
    .line 107
    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 108
    .line 109
    if-gez v3, :cond_4

    .line 110
    .line 111
    move v3, v2

    .line 112
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-static {v3, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    and-int/lit8 v3, v3, 0x7

    .line 121
    .line 122
    if-eq v3, v9, :cond_6

    .line 123
    .line 124
    const/4 v5, 0x5

    .line 125
    if-eq v3, v5, :cond_5

    .line 126
    .line 127
    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 128
    .line 129
    add-int/2addr v3, v0

    .line 130
    :goto_2
    move v5, v3

    .line 131
    goto :goto_4

    .line 132
    :cond_5
    sub-int v3, p1, v7

    .line 133
    .line 134
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 135
    .line 136
    :goto_3
    sub-int/2addr v3, v5

    .line 137
    goto :goto_2

    .line 138
    :cond_6
    sub-int v3, p3, v7

    .line 139
    .line 140
    div-int/lit8 v3, v3, 0x2

    .line 141
    .line 142
    add-int/2addr v3, v0

    .line 143
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 144
    .line 145
    add-int/2addr v3, v5

    .line 146
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :goto_4
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_7

    .line 154
    .line 155
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 156
    .line 157
    add-int/2addr p2, v3

    .line 158
    :cond_7
    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 159
    .line 160
    add-int/2addr p2, v3

    .line 161
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    add-int v6, v3, p2

    .line 166
    .line 167
    move-object v3, p0

    .line 168
    invoke-direct/range {v3 .. v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 169
    .line 170
    .line 171
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 172
    .line 173
    add-int/2addr v8, v5

    .line 174
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    add-int/2addr v5, v8

    .line 179
    add-int/2addr v5, p2

    .line 180
    invoke-virtual {p0, v4, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    add-int/2addr p4, p2

    .line 185
    move p2, v5

    .line 186
    :goto_5
    add-int/2addr p4, v9

    .line 187
    goto :goto_1

    .line 188
    :cond_8
    move-object v3, p0

    .line 189
    return-void
.end method

.method public measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    move-object p2, p1

    .line 2
    move-object p1, p0

    .line 3
    invoke-virtual/range {p1 .. p6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public measureHorizontal(II)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v8

    .line 10
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    .line 12
    .line 13
    move-result v9

    .line 14
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 15
    .line 16
    .line 17
    move-result v10

    .line 18
    iget-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 19
    .line 20
    const/4 v11, 0x4

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    :cond_0
    new-array v1, v11, [I

    .line 28
    .line 29
    iput-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 30
    .line 31
    new-array v1, v11, [I

    .line 32
    .line 33
    iput-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 34
    .line 35
    :cond_1
    iget-object v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 36
    .line 37
    iget-object v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 38
    .line 39
    const/4 v14, 0x3

    .line 40
    const/4 v15, -0x1

    .line 41
    aput v15, v12, v14

    .line 42
    .line 43
    const/16 v16, 0x2

    .line 44
    .line 45
    aput v15, v12, v16

    .line 46
    .line 47
    const/16 v17, 0x1

    .line 48
    .line 49
    aput v15, v12, v17

    .line 50
    .line 51
    aput v15, v12, v7

    .line 52
    .line 53
    aput v15, v13, v14

    .line 54
    .line 55
    aput v15, v13, v16

    .line 56
    .line 57
    aput v15, v13, v17

    .line 58
    .line 59
    aput v15, v13, v7

    .line 60
    .line 61
    iget-boolean v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 62
    .line 63
    iget-boolean v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 64
    .line 65
    const/high16 v3, 0x40000000    # 2.0f

    .line 66
    .line 67
    if-ne v9, v3, :cond_2

    .line 68
    .line 69
    move/from16 v18, v17

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move/from16 v18, v7

    .line 73
    .line 74
    :goto_0
    const/16 v19, 0x0

    .line 75
    .line 76
    move v4, v2

    .line 77
    move v2, v7

    .line 78
    move v6, v2

    .line 79
    move v15, v6

    .line 80
    move/from16 v22, v15

    .line 81
    .line 82
    move/from16 v24, v22

    .line 83
    .line 84
    move/from16 v26, v24

    .line 85
    .line 86
    move/from16 v20, v11

    .line 87
    .line 88
    move/from16 v21, v14

    .line 89
    .line 90
    move/from16 v25, v17

    .line 91
    .line 92
    move/from16 v5, v19

    .line 93
    .line 94
    move/from16 v11, v26

    .line 95
    .line 96
    move v14, v11

    .line 97
    :goto_1
    move/from16 v27, v6

    .line 98
    .line 99
    const/16 v6, 0x8

    .line 100
    .line 101
    if-ge v2, v8, :cond_15

    .line 102
    .line 103
    move/from16 v30, v1

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    add-int/2addr v6, v1

    .line 118
    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 119
    .line 120
    :goto_2
    move/from16 v3, p1

    .line 121
    .line 122
    move/from16 v1, p2

    .line 123
    .line 124
    move/from16 v35, v8

    .line 125
    .line 126
    move/from16 v33, v9

    .line 127
    .line 128
    move-object/from16 v34, v12

    .line 129
    .line 130
    move-object/from16 v28, v13

    .line 131
    .line 132
    move/from16 v6, v27

    .line 133
    .line 134
    move/from16 v27, v4

    .line 135
    .line 136
    goto/16 :goto_f

    .line 137
    .line 138
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-ne v7, v6, :cond_4

    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    add-int/2addr v2, v1

    .line 149
    goto :goto_2

    .line 150
    :cond_4
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_5

    .line 155
    .line 156
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 157
    .line 158
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 159
    .line 160
    add-int/2addr v6, v7

    .line 161
    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 162
    .line 163
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    move-object v7, v6

    .line 168
    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 169
    .line 170
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 171
    .line 172
    add-float v32, v5, v6

    .line 173
    .line 174
    if-ne v9, v3, :cond_8

    .line 175
    .line 176
    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 177
    .line 178
    if-nez v5, :cond_8

    .line 179
    .line 180
    cmpl-float v5, v6, v19

    .line 181
    .line 182
    if-lez v5, :cond_8

    .line 183
    .line 184
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 185
    .line 186
    if-eqz v18, :cond_6

    .line 187
    .line 188
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 189
    .line 190
    iget v3, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 191
    .line 192
    add-int/2addr v6, v3

    .line 193
    add-int/2addr v6, v5

    .line 194
    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_6
    iget v3, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 198
    .line 199
    add-int/2addr v3, v5

    .line 200
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 201
    .line 202
    add-int/2addr v3, v6

    .line 203
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 208
    .line 209
    :goto_3
    if-eqz v30, :cond_7

    .line 210
    .line 211
    const/4 v3, 0x0

    .line 212
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    invoke-virtual {v1, v5, v5}, Landroid/view/View;->measure(II)V

    .line 217
    .line 218
    .line 219
    move/from16 v3, p1

    .line 220
    .line 221
    move/from16 v35, v8

    .line 222
    .line 223
    move/from16 v33, v9

    .line 224
    .line 225
    move-object/from16 v34, v12

    .line 226
    .line 227
    move-object/from16 v28, v13

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_7
    move/from16 v3, p1

    .line 231
    .line 232
    move/from16 v35, v8

    .line 233
    .line 234
    move/from16 v33, v9

    .line 235
    .line 236
    move-object/from16 v34, v12

    .line 237
    .line 238
    move-object/from16 v28, v13

    .line 239
    .line 240
    move/from16 v22, v17

    .line 241
    .line 242
    :goto_4
    move/from16 v12, v27

    .line 243
    .line 244
    const/high16 v8, 0x40000000    # 2.0f

    .line 245
    .line 246
    const/16 v29, -0x2

    .line 247
    .line 248
    move/from16 v27, v4

    .line 249
    .line 250
    move-object v4, v1

    .line 251
    move/from16 v1, p2

    .line 252
    .line 253
    goto/16 :goto_8

    .line 254
    .line 255
    :cond_8
    iget v3, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 256
    .line 257
    if-nez v3, :cond_9

    .line 258
    .line 259
    cmpl-float v3, v6, v19

    .line 260
    .line 261
    if-lez v3, :cond_9

    .line 262
    .line 263
    const/4 v3, -0x2

    .line 264
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 265
    .line 266
    const/4 v5, 0x0

    .line 267
    goto :goto_5

    .line 268
    :cond_9
    const/4 v3, -0x2

    .line 269
    const/high16 v5, -0x80000000

    .line 270
    .line 271
    :goto_5
    cmpl-float v6, v32, v19

    .line 272
    .line 273
    if-nez v6, :cond_a

    .line 274
    .line 275
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 276
    .line 277
    move/from16 v37, v6

    .line 278
    .line 279
    move v6, v4

    .line 280
    move/from16 v4, v37

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_a
    move v6, v4

    .line 284
    const/4 v4, 0x0

    .line 285
    :goto_6
    const/16 v28, 0x0

    .line 286
    .line 287
    move/from16 v29, v3

    .line 288
    .line 289
    move/from16 v35, v8

    .line 290
    .line 291
    move/from16 v33, v9

    .line 292
    .line 293
    move-object/from16 v34, v12

    .line 294
    .line 295
    move/from16 v12, v27

    .line 296
    .line 297
    const/high16 v8, 0x40000000    # 2.0f

    .line 298
    .line 299
    const/high16 v9, -0x80000000

    .line 300
    .line 301
    move/from16 v3, p1

    .line 302
    .line 303
    move/from16 v27, v6

    .line 304
    .line 305
    move/from16 v6, v28

    .line 306
    .line 307
    move-object/from16 v28, v13

    .line 308
    .line 309
    move v13, v5

    .line 310
    move/from16 v5, p2

    .line 311
    .line 312
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 313
    .line 314
    .line 315
    move-object v4, v1

    .line 316
    move v1, v5

    .line 317
    if-eq v13, v9, :cond_b

    .line 318
    .line 319
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 320
    .line 321
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 326
    .line 327
    if-eqz v18, :cond_c

    .line 328
    .line 329
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 330
    .line 331
    add-int/2addr v9, v5

    .line 332
    iget v13, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 333
    .line 334
    add-int/2addr v9, v13

    .line 335
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 336
    .line 337
    .line 338
    move-result v13

    .line 339
    add-int/2addr v13, v9

    .line 340
    add-int/2addr v13, v6

    .line 341
    iput v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_c
    add-int v9, v6, v5

    .line 345
    .line 346
    iget v13, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 347
    .line 348
    add-int/2addr v9, v13

    .line 349
    iget v13, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 350
    .line 351
    add-int/2addr v9, v13

    .line 352
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 353
    .line 354
    .line 355
    move-result v13

    .line 356
    add-int/2addr v13, v9

    .line 357
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 362
    .line 363
    :goto_7
    if-eqz v27, :cond_d

    .line 364
    .line 365
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    .line 366
    .line 367
    .line 368
    move-result v15

    .line 369
    :cond_d
    :goto_8
    if-eq v10, v8, :cond_e

    .line 370
    .line 371
    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 372
    .line 373
    const/4 v6, -0x1

    .line 374
    if-ne v5, v6, :cond_e

    .line 375
    .line 376
    move/from16 v5, v17

    .line 377
    .line 378
    move/from16 v26, v5

    .line 379
    .line 380
    goto :goto_9

    .line 381
    :cond_e
    const/4 v5, 0x0

    .line 382
    :goto_9
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 383
    .line 384
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 385
    .line 386
    add-int/2addr v6, v9

    .line 387
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    add-int/2addr v9, v6

    .line 392
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    .line 393
    .line 394
    .line 395
    move-result v13

    .line 396
    move/from16 v8, v24

    .line 397
    .line 398
    invoke-static {v8, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 399
    .line 400
    .line 401
    move-result v24

    .line 402
    if-eqz v30, :cond_10

    .line 403
    .line 404
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    const/4 v13, -0x1

    .line 409
    if-eq v8, v13, :cond_10

    .line 410
    .line 411
    iget v13, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 412
    .line 413
    if-gez v13, :cond_f

    .line 414
    .line 415
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 416
    .line 417
    :cond_f
    and-int/lit8 v13, v13, 0x70

    .line 418
    .line 419
    shr-int/lit8 v13, v13, 0x4

    .line 420
    .line 421
    and-int/lit8 v13, v13, -0x2

    .line 422
    .line 423
    shr-int/lit8 v13, v13, 0x1

    .line 424
    .line 425
    move/from16 v36, v5

    .line 426
    .line 427
    aget v5, v34, v13

    .line 428
    .line 429
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    aput v5, v34, v13

    .line 434
    .line 435
    aget v5, v28, v13

    .line 436
    .line 437
    sub-int v8, v9, v8

    .line 438
    .line 439
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    aput v5, v28, v13

    .line 444
    .line 445
    goto :goto_a

    .line 446
    :cond_10
    move/from16 v36, v5

    .line 447
    .line 448
    :goto_a
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    if-eqz v25, :cond_11

    .line 453
    .line 454
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 455
    .line 456
    const/4 v13, -0x1

    .line 457
    if-ne v8, v13, :cond_11

    .line 458
    .line 459
    move/from16 v25, v17

    .line 460
    .line 461
    goto :goto_b

    .line 462
    :cond_11
    const/16 v25, 0x0

    .line 463
    .line 464
    :goto_b
    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 465
    .line 466
    cmpl-float v7, v7, v19

    .line 467
    .line 468
    if-lez v7, :cond_13

    .line 469
    .line 470
    if-eqz v36, :cond_12

    .line 471
    .line 472
    goto :goto_c

    .line 473
    :cond_12
    move v6, v9

    .line 474
    :goto_c
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    .line 475
    .line 476
    .line 477
    move-result v14

    .line 478
    goto :goto_e

    .line 479
    :cond_13
    if-eqz v36, :cond_14

    .line 480
    .line 481
    goto :goto_d

    .line 482
    :cond_14
    move v6, v9

    .line 483
    :goto_d
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    .line 484
    .line 485
    .line 486
    move-result v11

    .line 487
    :goto_e
    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    add-int/2addr v2, v4

    .line 492
    move v6, v5

    .line 493
    move/from16 v5, v32

    .line 494
    .line 495
    :goto_f
    add-int/lit8 v2, v2, 0x1

    .line 496
    .line 497
    move/from16 v4, v27

    .line 498
    .line 499
    move-object/from16 v13, v28

    .line 500
    .line 501
    move/from16 v1, v30

    .line 502
    .line 503
    move/from16 v9, v33

    .line 504
    .line 505
    move-object/from16 v12, v34

    .line 506
    .line 507
    move/from16 v8, v35

    .line 508
    .line 509
    const/high16 v3, 0x40000000    # 2.0f

    .line 510
    .line 511
    const/4 v7, 0x0

    .line 512
    goto/16 :goto_1

    .line 513
    .line 514
    :cond_15
    move/from16 v3, p1

    .line 515
    .line 516
    move/from16 v30, v1

    .line 517
    .line 518
    move/from16 v35, v8

    .line 519
    .line 520
    move/from16 v33, v9

    .line 521
    .line 522
    move-object/from16 v34, v12

    .line 523
    .line 524
    move-object/from16 v28, v13

    .line 525
    .line 526
    move/from16 v8, v24

    .line 527
    .line 528
    move/from16 v12, v27

    .line 529
    .line 530
    const/high16 v9, -0x80000000

    .line 531
    .line 532
    const/16 v29, -0x2

    .line 533
    .line 534
    move/from16 v1, p2

    .line 535
    .line 536
    move/from16 v27, v4

    .line 537
    .line 538
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 539
    .line 540
    if-lez v2, :cond_16

    .line 541
    .line 542
    move/from16 v2, v35

    .line 543
    .line 544
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    if-eqz v4, :cond_17

    .line 549
    .line 550
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 551
    .line 552
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 553
    .line 554
    add-int/2addr v4, v7

    .line 555
    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 556
    .line 557
    goto :goto_10

    .line 558
    :cond_16
    move/from16 v2, v35

    .line 559
    .line 560
    :cond_17
    :goto_10
    aget v4, v34, v17

    .line 561
    .line 562
    const/4 v13, -0x1

    .line 563
    if-ne v4, v13, :cond_19

    .line 564
    .line 565
    const/16 v31, 0x0

    .line 566
    .line 567
    aget v7, v34, v31

    .line 568
    .line 569
    if-ne v7, v13, :cond_19

    .line 570
    .line 571
    aget v7, v34, v16

    .line 572
    .line 573
    if-ne v7, v13, :cond_19

    .line 574
    .line 575
    aget v7, v34, v21

    .line 576
    .line 577
    if-eq v7, v13, :cond_18

    .line 578
    .line 579
    goto :goto_11

    .line 580
    :cond_18
    move v6, v12

    .line 581
    goto :goto_12

    .line 582
    :cond_19
    :goto_11
    aget v7, v34, v21

    .line 583
    .line 584
    const/16 v31, 0x0

    .line 585
    .line 586
    aget v13, v34, v31

    .line 587
    .line 588
    aget v6, v34, v16

    .line 589
    .line 590
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    aget v6, v28, v21

    .line 603
    .line 604
    aget v7, v28, v31

    .line 605
    .line 606
    aget v13, v28, v17

    .line 607
    .line 608
    aget v9, v28, v16

    .line 609
    .line 610
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    .line 611
    .line 612
    .line 613
    move-result v9

    .line 614
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 615
    .line 616
    .line 617
    move-result v7

    .line 618
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 619
    .line 620
    .line 621
    move-result v6

    .line 622
    add-int/2addr v6, v4

    .line 623
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    .line 624
    .line 625
    .line 626
    move-result v6

    .line 627
    :goto_12
    if-eqz v27, :cond_1f

    .line 628
    .line 629
    move/from16 v4, v33

    .line 630
    .line 631
    const/high16 v9, -0x80000000

    .line 632
    .line 633
    if-eq v4, v9, :cond_1a

    .line 634
    .line 635
    if-nez v4, :cond_1b

    .line 636
    .line 637
    :cond_1a
    const/4 v7, 0x0

    .line 638
    goto :goto_13

    .line 639
    :cond_1b
    move/from16 v32, v5

    .line 640
    .line 641
    goto :goto_17

    .line 642
    :goto_13
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 643
    .line 644
    const/4 v7, 0x0

    .line 645
    :goto_14
    if-ge v7, v2, :cond_1b

    .line 646
    .line 647
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 648
    .line 649
    .line 650
    move-result-object v9

    .line 651
    if-nez v9, :cond_1c

    .line 652
    .line 653
    iget v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 654
    .line 655
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    .line 656
    .line 657
    .line 658
    move-result v12

    .line 659
    add-int/2addr v12, v9

    .line 660
    iput v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 661
    .line 662
    goto :goto_15

    .line 663
    :cond_1c
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 664
    .line 665
    .line 666
    move-result v12

    .line 667
    const/16 v13, 0x8

    .line 668
    .line 669
    if-ne v12, v13, :cond_1d

    .line 670
    .line 671
    invoke-virtual {v0, v9, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 672
    .line 673
    .line 674
    move-result v9

    .line 675
    add-int/2addr v7, v9

    .line 676
    :goto_15
    move/from16 v32, v5

    .line 677
    .line 678
    goto :goto_16

    .line 679
    :cond_1d
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 680
    .line 681
    .line 682
    move-result-object v12

    .line 683
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 684
    .line 685
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 686
    .line 687
    if-eqz v18, :cond_1e

    .line 688
    .line 689
    move/from16 v32, v5

    .line 690
    .line 691
    iget v5, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 692
    .line 693
    add-int/2addr v5, v15

    .line 694
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 695
    .line 696
    add-int/2addr v5, v12

    .line 697
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 698
    .line 699
    .line 700
    move-result v9

    .line 701
    add-int/2addr v9, v5

    .line 702
    add-int/2addr v9, v13

    .line 703
    iput v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 704
    .line 705
    goto :goto_16

    .line 706
    :cond_1e
    move/from16 v32, v5

    .line 707
    .line 708
    add-int v5, v13, v15

    .line 709
    .line 710
    move/from16 v33, v5

    .line 711
    .line 712
    iget v5, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 713
    .line 714
    add-int v5, v33, v5

    .line 715
    .line 716
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 717
    .line 718
    add-int/2addr v5, v12

    .line 719
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 720
    .line 721
    .line 722
    move-result v9

    .line 723
    add-int/2addr v9, v5

    .line 724
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    .line 725
    .line 726
    .line 727
    move-result v5

    .line 728
    iput v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 729
    .line 730
    :goto_16
    add-int/lit8 v7, v7, 0x1

    .line 731
    .line 732
    move/from16 v5, v32

    .line 733
    .line 734
    goto :goto_14

    .line 735
    :cond_1f
    move/from16 v32, v5

    .line 736
    .line 737
    move/from16 v4, v33

    .line 738
    .line 739
    :goto_17
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 740
    .line 741
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 742
    .line 743
    .line 744
    move-result v7

    .line 745
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 746
    .line 747
    .line 748
    move-result v9

    .line 749
    add-int/2addr v9, v7

    .line 750
    add-int/2addr v9, v5

    .line 751
    iput v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 752
    .line 753
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 754
    .line 755
    .line 756
    move-result v5

    .line 757
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 758
    .line 759
    .line 760
    move-result v5

    .line 761
    const/4 v7, 0x0

    .line 762
    invoke-static {v5, v3, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 763
    .line 764
    .line 765
    move-result v5

    .line 766
    const v7, 0xffffff

    .line 767
    .line 768
    .line 769
    and-int/2addr v7, v5

    .line 770
    iget v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 771
    .line 772
    sub-int/2addr v7, v9

    .line 773
    if-nez v22, :cond_24

    .line 774
    .line 775
    if-eqz v7, :cond_20

    .line 776
    .line 777
    cmpl-float v12, v32, v19

    .line 778
    .line 779
    if-lez v12, :cond_20

    .line 780
    .line 781
    goto :goto_1b

    .line 782
    :cond_20
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    .line 783
    .line 784
    .line 785
    move-result v7

    .line 786
    if-eqz v27, :cond_23

    .line 787
    .line 788
    const/high16 v11, 0x40000000    # 2.0f

    .line 789
    .line 790
    if-eq v4, v11, :cond_23

    .line 791
    .line 792
    const/4 v4, 0x0

    .line 793
    :goto_18
    if-ge v4, v2, :cond_23

    .line 794
    .line 795
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 796
    .line 797
    .line 798
    move-result-object v11

    .line 799
    if-eqz v11, :cond_22

    .line 800
    .line 801
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 802
    .line 803
    .line 804
    move-result v12

    .line 805
    const/16 v13, 0x8

    .line 806
    .line 807
    if-ne v12, v13, :cond_21

    .line 808
    .line 809
    goto :goto_19

    .line 810
    :cond_21
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 811
    .line 812
    .line 813
    move-result-object v12

    .line 814
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 815
    .line 816
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 817
    .line 818
    cmpl-float v12, v12, v19

    .line 819
    .line 820
    if-lez v12, :cond_22

    .line 821
    .line 822
    const/high16 v12, 0x40000000    # 2.0f

    .line 823
    .line 824
    invoke-static {v15, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 825
    .line 826
    .line 827
    move-result v13

    .line 828
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 829
    .line 830
    .line 831
    move-result v14

    .line 832
    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 833
    .line 834
    .line 835
    move-result v14

    .line 836
    invoke-virtual {v11, v13, v14}, Landroid/view/View;->measure(II)V

    .line 837
    .line 838
    .line 839
    :cond_22
    :goto_19
    add-int/lit8 v4, v4, 0x1

    .line 840
    .line 841
    goto :goto_18

    .line 842
    :cond_23
    move/from16 v27, v5

    .line 843
    .line 844
    const/high16 v22, -0x1000000

    .line 845
    .line 846
    :goto_1a
    move/from16 v24, v8

    .line 847
    .line 848
    goto/16 :goto_27

    .line 849
    .line 850
    :cond_24
    :goto_1b
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 851
    .line 852
    cmpl-float v12, v6, v19

    .line 853
    .line 854
    if-lez v12, :cond_25

    .line 855
    .line 856
    move/from16 v32, v6

    .line 857
    .line 858
    :cond_25
    const/16 v23, -0x1

    .line 859
    .line 860
    aput v23, v34, v21

    .line 861
    .line 862
    aput v23, v34, v16

    .line 863
    .line 864
    aput v23, v34, v17

    .line 865
    .line 866
    const/4 v6, 0x0

    .line 867
    aput v23, v34, v6

    .line 868
    .line 869
    aput v23, v28, v21

    .line 870
    .line 871
    aput v23, v28, v16

    .line 872
    .line 873
    aput v23, v28, v17

    .line 874
    .line 875
    aput v23, v28, v6

    .line 876
    .line 877
    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 878
    .line 879
    const/4 v6, -0x1

    .line 880
    const/4 v12, 0x0

    .line 881
    :goto_1c
    if-ge v12, v2, :cond_34

    .line 882
    .line 883
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 884
    .line 885
    .line 886
    move-result-object v13

    .line 887
    if-eqz v13, :cond_26

    .line 888
    .line 889
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 890
    .line 891
    .line 892
    move-result v14

    .line 893
    const/16 v15, 0x8

    .line 894
    .line 895
    if-ne v14, v15, :cond_27

    .line 896
    .line 897
    :cond_26
    move/from16 v27, v5

    .line 898
    .line 899
    const/high16 v22, -0x1000000

    .line 900
    .line 901
    goto/16 :goto_26

    .line 902
    .line 903
    :cond_27
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 904
    .line 905
    .line 906
    move-result-object v14

    .line 907
    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 908
    .line 909
    const/high16 v22, -0x1000000

    .line 910
    .line 911
    iget v9, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 912
    .line 913
    cmpl-float v24, v9, v19

    .line 914
    .line 915
    if-lez v24, :cond_2c

    .line 916
    .line 917
    int-to-float v15, v7

    .line 918
    mul-float/2addr v15, v9

    .line 919
    div-float v15, v15, v32

    .line 920
    .line 921
    float-to-int v15, v15

    .line 922
    sub-float v32, v32, v9

    .line 923
    .line 924
    sub-int/2addr v7, v15

    .line 925
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 926
    .line 927
    .line 928
    move-result v9

    .line 929
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 930
    .line 931
    .line 932
    move-result v27

    .line 933
    add-int v27, v27, v9

    .line 934
    .line 935
    iget v9, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 936
    .line 937
    add-int v27, v27, v9

    .line 938
    .line 939
    iget v9, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 940
    .line 941
    add-int v9, v27, v9

    .line 942
    .line 943
    move/from16 v27, v5

    .line 944
    .line 945
    iget v5, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 946
    .line 947
    invoke-static {v1, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 948
    .line 949
    .line 950
    move-result v5

    .line 951
    iget v9, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 952
    .line 953
    if-nez v9, :cond_2a

    .line 954
    .line 955
    const/high16 v9, 0x40000000    # 2.0f

    .line 956
    .line 957
    if-eq v4, v9, :cond_28

    .line 958
    .line 959
    goto :goto_1e

    .line 960
    :cond_28
    if-lez v15, :cond_29

    .line 961
    .line 962
    goto :goto_1d

    .line 963
    :cond_29
    const/4 v15, 0x0

    .line 964
    :goto_1d
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 965
    .line 966
    .line 967
    move-result v15

    .line 968
    invoke-virtual {v13, v15, v5}, Landroid/view/View;->measure(II)V

    .line 969
    .line 970
    .line 971
    goto :goto_1f

    .line 972
    :cond_2a
    const/high16 v9, 0x40000000    # 2.0f

    .line 973
    .line 974
    :goto_1e
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 975
    .line 976
    .line 977
    move-result v33

    .line 978
    add-int v15, v33, v15

    .line 979
    .line 980
    if-gez v15, :cond_2b

    .line 981
    .line 982
    const/4 v15, 0x0

    .line 983
    :cond_2b
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 984
    .line 985
    .line 986
    move-result v15

    .line 987
    invoke-virtual {v13, v15, v5}, Landroid/view/View;->measure(II)V

    .line 988
    .line 989
    .line 990
    :goto_1f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    .line 991
    .line 992
    .line 993
    move-result v5

    .line 994
    and-int v5, v5, v22

    .line 995
    .line 996
    invoke-static {v8, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 997
    .line 998
    .line 999
    move-result v8

    .line 1000
    goto :goto_20

    .line 1001
    :cond_2c
    move/from16 v27, v5

    .line 1002
    .line 1003
    :goto_20
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1004
    .line 1005
    if-eqz v18, :cond_2d

    .line 1006
    .line 1007
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 1008
    .line 1009
    .line 1010
    move-result v9

    .line 1011
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1012
    .line 1013
    add-int/2addr v9, v15

    .line 1014
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1015
    .line 1016
    add-int/2addr v9, v15

    .line 1017
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 1018
    .line 1019
    .line 1020
    move-result v15

    .line 1021
    add-int/2addr v15, v9

    .line 1022
    add-int/2addr v15, v5

    .line 1023
    iput v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1024
    .line 1025
    :goto_21
    const/high16 v9, 0x40000000    # 2.0f

    .line 1026
    .line 1027
    goto :goto_22

    .line 1028
    :cond_2d
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 1029
    .line 1030
    .line 1031
    move-result v9

    .line 1032
    add-int/2addr v9, v5

    .line 1033
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1034
    .line 1035
    add-int/2addr v9, v15

    .line 1036
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1037
    .line 1038
    add-int/2addr v9, v15

    .line 1039
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 1040
    .line 1041
    .line 1042
    move-result v15

    .line 1043
    add-int/2addr v15, v9

    .line 1044
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    .line 1045
    .line 1046
    .line 1047
    move-result v5

    .line 1048
    iput v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1049
    .line 1050
    goto :goto_21

    .line 1051
    :goto_22
    if-eq v10, v9, :cond_2e

    .line 1052
    .line 1053
    iget v5, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1054
    .line 1055
    const/4 v9, -0x1

    .line 1056
    if-ne v5, v9, :cond_2e

    .line 1057
    .line 1058
    move/from16 v5, v17

    .line 1059
    .line 1060
    goto :goto_23

    .line 1061
    :cond_2e
    const/4 v5, 0x0

    .line 1062
    :goto_23
    iget v9, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1063
    .line 1064
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1065
    .line 1066
    add-int/2addr v9, v15

    .line 1067
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 1068
    .line 1069
    .line 1070
    move-result v15

    .line 1071
    add-int/2addr v15, v9

    .line 1072
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    .line 1073
    .line 1074
    .line 1075
    move-result v6

    .line 1076
    if-eqz v5, :cond_2f

    .line 1077
    .line 1078
    goto :goto_24

    .line 1079
    :cond_2f
    move v9, v15

    .line 1080
    :goto_24
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    .line 1081
    .line 1082
    .line 1083
    move-result v5

    .line 1084
    if-eqz v25, :cond_30

    .line 1085
    .line 1086
    iget v9, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1087
    .line 1088
    const/4 v11, -0x1

    .line 1089
    if-ne v9, v11, :cond_31

    .line 1090
    .line 1091
    move/from16 v9, v17

    .line 1092
    .line 1093
    goto :goto_25

    .line 1094
    :cond_30
    const/4 v11, -0x1

    .line 1095
    :cond_31
    const/4 v9, 0x0

    .line 1096
    :goto_25
    if-eqz v30, :cond_33

    .line 1097
    .line 1098
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    .line 1099
    .line 1100
    .line 1101
    move-result v13

    .line 1102
    if-eq v13, v11, :cond_33

    .line 1103
    .line 1104
    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1105
    .line 1106
    if-gez v11, :cond_32

    .line 1107
    .line 1108
    iget v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1109
    .line 1110
    :cond_32
    and-int/lit8 v11, v11, 0x70

    .line 1111
    .line 1112
    shr-int/lit8 v11, v11, 0x4

    .line 1113
    .line 1114
    and-int/lit8 v11, v11, -0x2

    .line 1115
    .line 1116
    shr-int/lit8 v11, v11, 0x1

    .line 1117
    .line 1118
    aget v14, v34, v11

    .line 1119
    .line 1120
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 1121
    .line 1122
    .line 1123
    move-result v14

    .line 1124
    aput v14, v34, v11

    .line 1125
    .line 1126
    aget v14, v28, v11

    .line 1127
    .line 1128
    sub-int/2addr v15, v13

    .line 1129
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 1130
    .line 1131
    .line 1132
    move-result v13

    .line 1133
    aput v13, v28, v11

    .line 1134
    .line 1135
    :cond_33
    move v11, v5

    .line 1136
    move/from16 v25, v9

    .line 1137
    .line 1138
    :goto_26
    add-int/lit8 v12, v12, 0x1

    .line 1139
    .line 1140
    move/from16 v5, v27

    .line 1141
    .line 1142
    goto/16 :goto_1c

    .line 1143
    .line 1144
    :cond_34
    move/from16 v27, v5

    .line 1145
    .line 1146
    const/high16 v22, -0x1000000

    .line 1147
    .line 1148
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1149
    .line 1150
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 1151
    .line 1152
    .line 1153
    move-result v5

    .line 1154
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 1155
    .line 1156
    .line 1157
    move-result v7

    .line 1158
    add-int/2addr v7, v5

    .line 1159
    add-int/2addr v7, v4

    .line 1160
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1161
    .line 1162
    aget v4, v34, v17

    .line 1163
    .line 1164
    const/4 v13, -0x1

    .line 1165
    if-ne v4, v13, :cond_35

    .line 1166
    .line 1167
    const/16 v31, 0x0

    .line 1168
    .line 1169
    aget v5, v34, v31

    .line 1170
    .line 1171
    if-ne v5, v13, :cond_35

    .line 1172
    .line 1173
    aget v5, v34, v16

    .line 1174
    .line 1175
    if-ne v5, v13, :cond_35

    .line 1176
    .line 1177
    aget v5, v34, v21

    .line 1178
    .line 1179
    if-eq v5, v13, :cond_36

    .line 1180
    .line 1181
    :cond_35
    aget v5, v34, v21

    .line 1182
    .line 1183
    const/16 v31, 0x0

    .line 1184
    .line 1185
    aget v7, v34, v31

    .line 1186
    .line 1187
    aget v9, v34, v16

    .line 1188
    .line 1189
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 1190
    .line 1191
    .line 1192
    move-result v4

    .line 1193
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 1194
    .line 1195
    .line 1196
    move-result v4

    .line 1197
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 1198
    .line 1199
    .line 1200
    move-result v4

    .line 1201
    aget v5, v28, v21

    .line 1202
    .line 1203
    aget v7, v28, v31

    .line 1204
    .line 1205
    aget v9, v28, v17

    .line 1206
    .line 1207
    aget v12, v28, v16

    .line 1208
    .line 1209
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    .line 1210
    .line 1211
    .line 1212
    move-result v9

    .line 1213
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 1214
    .line 1215
    .line 1216
    move-result v7

    .line 1217
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 1218
    .line 1219
    .line 1220
    move-result v5

    .line 1221
    add-int/2addr v5, v4

    .line 1222
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 1223
    .line 1224
    .line 1225
    move-result v4

    .line 1226
    move v6, v4

    .line 1227
    :cond_36
    move v7, v11

    .line 1228
    goto/16 :goto_1a

    .line 1229
    .line 1230
    :goto_27
    if-nez v25, :cond_37

    .line 1231
    .line 1232
    const/high16 v9, 0x40000000    # 2.0f

    .line 1233
    .line 1234
    if-eq v10, v9, :cond_37

    .line 1235
    .line 1236
    move v6, v7

    .line 1237
    :cond_37
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 1238
    .line 1239
    .line 1240
    move-result v4

    .line 1241
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 1242
    .line 1243
    .line 1244
    move-result v5

    .line 1245
    add-int/2addr v5, v4

    .line 1246
    add-int/2addr v5, v6

    .line 1247
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 1248
    .line 1249
    .line 1250
    move-result v4

    .line 1251
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 1252
    .line 1253
    .line 1254
    move-result v4

    .line 1255
    and-int v5, v24, v22

    .line 1256
    .line 1257
    or-int v5, v27, v5

    .line 1258
    .line 1259
    shl-int/lit8 v6, v24, 0x10

    .line 1260
    .line 1261
    invoke-static {v4, v1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1262
    .line 1263
    .line 1264
    move-result v1

    .line 1265
    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1266
    .line 1267
    .line 1268
    if-eqz v26, :cond_38

    .line 1269
    .line 1270
    invoke-direct {v0, v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    .line 1271
    .line 1272
    .line 1273
    :cond_38
    return-void
.end method

.method public measureNullChild(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public measureVertical(II)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v8

    .line 10
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 11
    .line 12
    .line 13
    move-result v9

    .line 14
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 15
    .line 16
    .line 17
    move-result v10

    .line 18
    iget v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 19
    .line 20
    iget-boolean v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 21
    .line 22
    move v2, v7

    .line 23
    move v3, v2

    .line 24
    move v4, v3

    .line 25
    move v5, v4

    .line 26
    move v6, v5

    .line 27
    move v15, v6

    .line 28
    move/from16 v16, v15

    .line 29
    .line 30
    move/from16 v18, v16

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/16 v17, 0x1

    .line 34
    .line 35
    const/16 v19, 0x1

    .line 36
    .line 37
    :goto_0
    const/16 v20, 0x0

    .line 38
    .line 39
    const/16 v7, 0x8

    .line 40
    .line 41
    const/high16 v14, 0x40000000    # 2.0f

    .line 42
    .line 43
    if-ge v2, v8, :cond_11

    .line 44
    .line 45
    move/from16 v21, v1

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    add-int/2addr v7, v1

    .line 60
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 61
    .line 62
    :goto_1
    move v14, v3

    .line 63
    move/from16 v26, v8

    .line 64
    .line 65
    move/from16 v25, v10

    .line 66
    .line 67
    move/from16 v24, v12

    .line 68
    .line 69
    move/from16 v1, v21

    .line 70
    .line 71
    move/from16 v3, p1

    .line 72
    .line 73
    move v10, v5

    .line 74
    move/from16 v5, p2

    .line 75
    .line 76
    goto/16 :goto_c

    .line 77
    .line 78
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    if-ne v13, v7, :cond_1

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-int/2addr v2, v1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_2

    .line 95
    .line 96
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 97
    .line 98
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 99
    .line 100
    add-int/2addr v7, v13

    .line 101
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 102
    .line 103
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 108
    .line 109
    iget v13, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 110
    .line 111
    add-float v21, v21, v13

    .line 112
    .line 113
    if-ne v10, v14, :cond_3

    .line 114
    .line 115
    iget v14, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 116
    .line 117
    if-nez v14, :cond_3

    .line 118
    .line 119
    cmpl-float v14, v13, v20

    .line 120
    .line 121
    if-lez v14, :cond_3

    .line 122
    .line 123
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 124
    .line 125
    iget v14, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 126
    .line 127
    add-int/2addr v14, v13

    .line 128
    move-object/from16 v24, v1

    .line 129
    .line 130
    iget v1, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 131
    .line 132
    add-int/2addr v14, v1

    .line 133
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 138
    .line 139
    move v14, v3

    .line 140
    move/from16 v26, v8

    .line 141
    .line 142
    move/from16 v25, v10

    .line 143
    .line 144
    move/from16 v16, v19

    .line 145
    .line 146
    move-object/from16 v1, v24

    .line 147
    .line 148
    move/from16 v3, p1

    .line 149
    .line 150
    move v10, v5

    .line 151
    move v8, v6

    .line 152
    move/from16 v24, v12

    .line 153
    .line 154
    move/from16 v5, p2

    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_3
    move-object/from16 v24, v1

    .line 159
    .line 160
    iget v1, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 161
    .line 162
    if-nez v1, :cond_4

    .line 163
    .line 164
    cmpl-float v1, v13, v20

    .line 165
    .line 166
    if-lez v1, :cond_4

    .line 167
    .line 168
    const/4 v1, -0x2

    .line 169
    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 170
    .line 171
    const/4 v13, 0x0

    .line 172
    goto :goto_2

    .line 173
    :cond_4
    const/high16 v13, -0x80000000

    .line 174
    .line 175
    :goto_2
    cmpl-float v1, v21, v20

    .line 176
    .line 177
    if-nez v1, :cond_5

    .line 178
    .line 179
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 180
    .line 181
    move v14, v6

    .line 182
    move v6, v1

    .line 183
    move v1, v14

    .line 184
    :goto_3
    move v14, v4

    .line 185
    goto :goto_4

    .line 186
    :cond_5
    move v1, v6

    .line 187
    const/4 v6, 0x0

    .line 188
    goto :goto_3

    .line 189
    :goto_4
    const/4 v4, 0x0

    .line 190
    move/from16 v26, v8

    .line 191
    .line 192
    move/from16 v25, v10

    .line 193
    .line 194
    move v8, v1

    .line 195
    move v10, v5

    .line 196
    move-object/from16 v1, v24

    .line 197
    .line 198
    move/from16 v5, p2

    .line 199
    .line 200
    move/from16 v24, v12

    .line 201
    .line 202
    move v12, v14

    .line 203
    move v14, v3

    .line 204
    move/from16 v3, p1

    .line 205
    .line 206
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 207
    .line 208
    .line 209
    const/high16 v4, -0x80000000

    .line 210
    .line 211
    if-eq v13, v4, :cond_6

    .line 212
    .line 213
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 214
    .line 215
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 220
    .line 221
    add-int v13, v6, v4

    .line 222
    .line 223
    move/from16 v22, v13

    .line 224
    .line 225
    iget v13, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 226
    .line 227
    add-int v13, v22, v13

    .line 228
    .line 229
    move/from16 v22, v13

    .line 230
    .line 231
    iget v13, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 232
    .line 233
    add-int v13, v22, v13

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 236
    .line 237
    .line 238
    move-result v22

    .line 239
    add-int v13, v22, v13

    .line 240
    .line 241
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 246
    .line 247
    if-eqz v24, :cond_7

    .line 248
    .line 249
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    goto :goto_5

    .line 254
    :cond_7
    move v4, v12

    .line 255
    :goto_5
    if-ltz v11, :cond_8

    .line 256
    .line 257
    add-int/lit8 v6, v2, 0x1

    .line 258
    .line 259
    if-ne v11, v6, :cond_8

    .line 260
    .line 261
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 262
    .line 263
    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 264
    .line 265
    :cond_8
    if-ge v2, v11, :cond_9

    .line 266
    .line 267
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 268
    .line 269
    cmpl-float v6, v6, v20

    .line 270
    .line 271
    if-gtz v6, :cond_a

    .line 272
    .line 273
    :cond_9
    const/high16 v6, 0x40000000    # 2.0f

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_a
    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .line 277
    .line 278
    invoke-static {v1}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :goto_6
    if-eq v9, v6, :cond_b

    .line 283
    .line 284
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 285
    .line 286
    const/4 v12, -0x1

    .line 287
    if-ne v6, v12, :cond_b

    .line 288
    .line 289
    move/from16 v6, v19

    .line 290
    .line 291
    move/from16 v18, v6

    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_b
    const/4 v6, 0x0

    .line 295
    :goto_7
    iget v12, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 296
    .line 297
    iget v13, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 298
    .line 299
    add-int/2addr v12, v13

    .line 300
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    add-int/2addr v13, v12

    .line 305
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    move/from16 v22, v4

    .line 310
    .line 311
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    invoke-static {v8, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v17, :cond_c

    .line 320
    .line 321
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 322
    .line 323
    move/from16 v23, v4

    .line 324
    .line 325
    const/4 v4, -0x1

    .line 326
    if-ne v8, v4, :cond_d

    .line 327
    .line 328
    move/from16 v17, v19

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_c
    move/from16 v23, v4

    .line 332
    .line 333
    :cond_d
    const/16 v17, 0x0

    .line 334
    .line 335
    :goto_8
    iget v4, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 336
    .line 337
    cmpl-float v4, v4, v20

    .line 338
    .line 339
    if-lez v4, :cond_f

    .line 340
    .line 341
    if-eqz v6, :cond_e

    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_e
    move v12, v13

    .line 345
    :goto_9
    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    move v14, v4

    .line 350
    goto :goto_b

    .line 351
    :cond_f
    if-eqz v6, :cond_10

    .line 352
    .line 353
    goto :goto_a

    .line 354
    :cond_10
    move v12, v13

    .line 355
    :goto_a
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    .line 356
    .line 357
    .line 358
    move-result v15

    .line 359
    :goto_b
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    add-int/2addr v2, v1

    .line 364
    move/from16 v1, v21

    .line 365
    .line 366
    move/from16 v4, v22

    .line 367
    .line 368
    move/from16 v6, v23

    .line 369
    .line 370
    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 371
    .line 372
    move v5, v10

    .line 373
    move v3, v14

    .line 374
    move/from16 v12, v24

    .line 375
    .line 376
    move/from16 v10, v25

    .line 377
    .line 378
    move/from16 v8, v26

    .line 379
    .line 380
    const/4 v7, 0x0

    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_11
    move/from16 v21, v1

    .line 384
    .line 385
    move v14, v3

    .line 386
    move/from16 v26, v8

    .line 387
    .line 388
    move/from16 v25, v10

    .line 389
    .line 390
    move/from16 v24, v12

    .line 391
    .line 392
    move/from16 v3, p1

    .line 393
    .line 394
    move v12, v4

    .line 395
    move v10, v5

    .line 396
    move v8, v6

    .line 397
    move/from16 v5, p2

    .line 398
    .line 399
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 400
    .line 401
    if-lez v1, :cond_12

    .line 402
    .line 403
    move/from16 v1, v26

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_13

    .line 410
    .line 411
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 412
    .line 413
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 414
    .line 415
    add-int/2addr v2, v4

    .line 416
    iput v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 417
    .line 418
    goto :goto_d

    .line 419
    :cond_12
    move/from16 v1, v26

    .line 420
    .line 421
    :cond_13
    :goto_d
    move/from16 v2, v25

    .line 422
    .line 423
    if-eqz v24, :cond_17

    .line 424
    .line 425
    const/high16 v4, -0x80000000

    .line 426
    .line 427
    if-eq v2, v4, :cond_14

    .line 428
    .line 429
    if-nez v2, :cond_17

    .line 430
    .line 431
    :cond_14
    const/4 v4, 0x0

    .line 432
    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 433
    .line 434
    const/4 v4, 0x0

    .line 435
    :goto_e
    if-ge v4, v1, :cond_17

    .line 436
    .line 437
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    if-nez v6, :cond_15

    .line 442
    .line 443
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 444
    .line 445
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    .line 446
    .line 447
    .line 448
    move-result v11

    .line 449
    add-int/2addr v11, v6

    .line 450
    iput v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 451
    .line 452
    goto :goto_f

    .line 453
    :cond_15
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 454
    .line 455
    .line 456
    move-result v11

    .line 457
    if-ne v11, v7, :cond_16

    .line 458
    .line 459
    invoke-virtual {v0, v6, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 460
    .line 461
    .line 462
    move-result v6

    .line 463
    add-int/2addr v4, v6

    .line 464
    goto :goto_f

    .line 465
    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 466
    .line 467
    .line 468
    move-result-object v11

    .line 469
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 470
    .line 471
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 472
    .line 473
    add-int v22, v13, v12

    .line 474
    .line 475
    iget v7, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 476
    .line 477
    add-int v22, v22, v7

    .line 478
    .line 479
    iget v7, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 480
    .line 481
    add-int v22, v22, v7

    .line 482
    .line 483
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    add-int v6, v6, v22

    .line 488
    .line 489
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 494
    .line 495
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 496
    .line 497
    const/16 v7, 0x8

    .line 498
    .line 499
    goto :goto_e

    .line 500
    :cond_17
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 501
    .line 502
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    add-int/2addr v7, v6

    .line 511
    add-int/2addr v7, v4

    .line 512
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 513
    .line 514
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    const/4 v6, 0x0

    .line 523
    invoke-static {v4, v5, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 524
    .line 525
    .line 526
    move-result v4

    .line 527
    const v6, 0xffffff

    .line 528
    .line 529
    .line 530
    and-int/2addr v6, v4

    .line 531
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 532
    .line 533
    sub-int/2addr v6, v7

    .line 534
    if-nez v16, :cond_1b

    .line 535
    .line 536
    if-eqz v6, :cond_18

    .line 537
    .line 538
    cmpl-float v7, v21, v20

    .line 539
    .line 540
    if-lez v7, :cond_18

    .line 541
    .line 542
    goto :goto_12

    .line 543
    :cond_18
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    .line 544
    .line 545
    .line 546
    move-result v6

    .line 547
    if-eqz v24, :cond_27

    .line 548
    .line 549
    const/high16 v7, 0x40000000    # 2.0f

    .line 550
    .line 551
    if-eq v2, v7, :cond_27

    .line 552
    .line 553
    const/4 v7, 0x0

    .line 554
    :goto_10
    if-ge v7, v1, :cond_27

    .line 555
    .line 556
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    if-eqz v2, :cond_1a

    .line 561
    .line 562
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 563
    .line 564
    .line 565
    move-result v11

    .line 566
    const/16 v13, 0x8

    .line 567
    .line 568
    if-ne v11, v13, :cond_19

    .line 569
    .line 570
    goto :goto_11

    .line 571
    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 572
    .line 573
    .line 574
    move-result-object v11

    .line 575
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 576
    .line 577
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 578
    .line 579
    cmpl-float v11, v11, v20

    .line 580
    .line 581
    if-lez v11, :cond_1a

    .line 582
    .line 583
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 584
    .line 585
    .line 586
    move-result v11

    .line 587
    const/high16 v13, 0x40000000    # 2.0f

    .line 588
    .line 589
    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 590
    .line 591
    .line 592
    move-result v11

    .line 593
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 594
    .line 595
    .line 596
    move-result v14

    .line 597
    invoke-virtual {v2, v11, v14}, Landroid/view/View;->measure(II)V

    .line 598
    .line 599
    .line 600
    :cond_1a
    :goto_11
    add-int/lit8 v7, v7, 0x1

    .line 601
    .line 602
    goto :goto_10

    .line 603
    :cond_1b
    :goto_12
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 604
    .line 605
    cmpl-float v11, v7, v20

    .line 606
    .line 607
    if-lez v11, :cond_1c

    .line 608
    .line 609
    :goto_13
    const/4 v11, 0x0

    .line 610
    goto :goto_14

    .line 611
    :cond_1c
    move/from16 v7, v21

    .line 612
    .line 613
    goto :goto_13

    .line 614
    :goto_14
    iput v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 615
    .line 616
    move v12, v7

    .line 617
    move v7, v6

    .line 618
    move v6, v11

    .line 619
    :goto_15
    if-ge v6, v1, :cond_26

    .line 620
    .line 621
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    .line 622
    .line 623
    .line 624
    move-result-object v13

    .line 625
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 626
    .line 627
    .line 628
    move-result v14

    .line 629
    const/16 v11, 0x8

    .line 630
    .line 631
    if-ne v14, v11, :cond_1d

    .line 632
    .line 633
    move/from16 v22, v2

    .line 634
    .line 635
    move/from16 v16, v6

    .line 636
    .line 637
    goto/16 :goto_1d

    .line 638
    .line 639
    :cond_1d
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 640
    .line 641
    .line 642
    move-result-object v14

    .line 643
    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 644
    .line 645
    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 646
    .line 647
    cmpl-float v16, v11, v20

    .line 648
    .line 649
    if-lez v16, :cond_22

    .line 650
    .line 651
    move/from16 v16, v6

    .line 652
    .line 653
    int-to-float v6, v7

    .line 654
    mul-float/2addr v6, v11

    .line 655
    div-float/2addr v6, v12

    .line 656
    float-to-int v6, v6

    .line 657
    sub-float/2addr v12, v11

    .line 658
    sub-int/2addr v7, v6

    .line 659
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 660
    .line 661
    .line 662
    move-result v11

    .line 663
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 664
    .line 665
    .line 666
    move-result v21

    .line 667
    add-int v21, v21, v11

    .line 668
    .line 669
    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 670
    .line 671
    add-int v21, v21, v11

    .line 672
    .line 673
    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 674
    .line 675
    add-int v11, v21, v11

    .line 676
    .line 677
    move/from16 v21, v6

    .line 678
    .line 679
    iget v6, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 680
    .line 681
    invoke-static {v3, v11, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 682
    .line 683
    .line 684
    move-result v6

    .line 685
    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 686
    .line 687
    if-nez v11, :cond_20

    .line 688
    .line 689
    const/high16 v11, 0x40000000    # 2.0f

    .line 690
    .line 691
    if-eq v2, v11, :cond_1e

    .line 692
    .line 693
    :goto_16
    move/from16 v22, v2

    .line 694
    .line 695
    goto :goto_18

    .line 696
    :cond_1e
    move/from16 v22, v2

    .line 697
    .line 698
    if-lez v21, :cond_1f

    .line 699
    .line 700
    move/from16 v2, v21

    .line 701
    .line 702
    goto :goto_17

    .line 703
    :cond_1f
    const/4 v2, 0x0

    .line 704
    :goto_17
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    invoke-virtual {v13, v6, v2}, Landroid/view/View;->measure(II)V

    .line 709
    .line 710
    .line 711
    goto :goto_19

    .line 712
    :cond_20
    const/high16 v11, 0x40000000    # 2.0f

    .line 713
    .line 714
    goto :goto_16

    .line 715
    :goto_18
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    add-int v2, v2, v21

    .line 720
    .line 721
    if-gez v2, :cond_21

    .line 722
    .line 723
    const/4 v2, 0x0

    .line 724
    :cond_21
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    invoke-virtual {v13, v6, v2}, Landroid/view/View;->measure(II)V

    .line 729
    .line 730
    .line 731
    :goto_19
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    and-int/lit16 v2, v2, -0x100

    .line 736
    .line 737
    invoke-static {v8, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 738
    .line 739
    .line 740
    move-result v8

    .line 741
    goto :goto_1a

    .line 742
    :cond_22
    move/from16 v22, v2

    .line 743
    .line 744
    move/from16 v16, v6

    .line 745
    .line 746
    :goto_1a
    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 747
    .line 748
    iget v6, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 749
    .line 750
    add-int/2addr v2, v6

    .line 751
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 752
    .line 753
    .line 754
    move-result v6

    .line 755
    add-int/2addr v6, v2

    .line 756
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    .line 757
    .line 758
    .line 759
    move-result v10

    .line 760
    const/high16 v11, 0x40000000    # 2.0f

    .line 761
    .line 762
    if-eq v9, v11, :cond_23

    .line 763
    .line 764
    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 765
    .line 766
    move/from16 v21, v2

    .line 767
    .line 768
    const/4 v2, -0x1

    .line 769
    if-ne v11, v2, :cond_24

    .line 770
    .line 771
    move/from16 v6, v21

    .line 772
    .line 773
    goto :goto_1b

    .line 774
    :cond_23
    const/4 v2, -0x1

    .line 775
    :cond_24
    :goto_1b
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    .line 776
    .line 777
    .line 778
    move-result v6

    .line 779
    if-eqz v17, :cond_25

    .line 780
    .line 781
    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 782
    .line 783
    if-ne v11, v2, :cond_25

    .line 784
    .line 785
    move/from16 v11, v19

    .line 786
    .line 787
    goto :goto_1c

    .line 788
    :cond_25
    const/4 v11, 0x0

    .line 789
    :goto_1c
    iget v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 790
    .line 791
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 792
    .line 793
    .line 794
    move-result v17

    .line 795
    add-int v17, v17, v15

    .line 796
    .line 797
    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 798
    .line 799
    add-int v17, v17, v2

    .line 800
    .line 801
    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 802
    .line 803
    add-int v17, v17, v2

    .line 804
    .line 805
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    add-int v2, v2, v17

    .line 810
    .line 811
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    .line 812
    .line 813
    .line 814
    move-result v2

    .line 815
    iput v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 816
    .line 817
    move v15, v6

    .line 818
    move/from16 v17, v11

    .line 819
    .line 820
    :goto_1d
    add-int/lit8 v6, v16, 0x1

    .line 821
    .line 822
    move/from16 v2, v22

    .line 823
    .line 824
    const/4 v11, 0x0

    .line 825
    goto/16 :goto_15

    .line 826
    .line 827
    :cond_26
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 828
    .line 829
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 830
    .line 831
    .line 832
    move-result v6

    .line 833
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 834
    .line 835
    .line 836
    move-result v7

    .line 837
    add-int/2addr v7, v6

    .line 838
    add-int/2addr v7, v2

    .line 839
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 840
    .line 841
    move v6, v15

    .line 842
    :cond_27
    if-nez v17, :cond_28

    .line 843
    .line 844
    const/high16 v11, 0x40000000    # 2.0f

    .line 845
    .line 846
    if-eq v9, v11, :cond_28

    .line 847
    .line 848
    move v10, v6

    .line 849
    :cond_28
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 850
    .line 851
    .line 852
    move-result v2

    .line 853
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 854
    .line 855
    .line 856
    move-result v6

    .line 857
    add-int/2addr v6, v2

    .line 858
    add-int/2addr v6, v10

    .line 859
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 860
    .line 861
    .line 862
    move-result v2

    .line 863
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 864
    .line 865
    .line 866
    move-result v2

    .line 867
    invoke-static {v2, v3, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 868
    .line 869
    .line 870
    move-result v2

    .line 871
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 872
    .line 873
    .line 874
    if-eqz v18, :cond_29

    .line 875
    .line 876
    invoke-direct {v0, v1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 877
    .line 878
    .line 879
    :cond_29
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "base aligned child index out of range (0, "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ")"

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 25
    .line 26
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 27
    .line 28
    :goto_0
    if-nez p1, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 2
    .line 3
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/GravityInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    const v0, 0x800007

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, p1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const v0, 0x800003

    .line 12
    .line 13
    .line 14
    or-int/2addr p1, v0

    .line 15
    :cond_0
    and-int/lit8 v0, p1, 0x70

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    or-int/lit8 p1, p1, 0x30

    .line 20
    .line 21
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    .line 1
    const v0, 0x800007

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    const v0, -0x800008

    .line 11
    .line 12
    .line 13
    and-int/2addr v0, v1

    .line 14
    or-int/2addr p1, v0

    .line 15
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 9
    .line 10
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    .line 1
    and-int/lit8 p1, p1, 0x70

    .line 2
    .line 3
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x70

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x71

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 7
    .line 8
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
