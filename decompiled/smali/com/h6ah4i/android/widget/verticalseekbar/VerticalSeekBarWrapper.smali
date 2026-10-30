.class public Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private getChildSeekBar()Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, v1

    .line 15
    :goto_0
    instance-of v2, v0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(II)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    :goto_0
    invoke-virtual {v0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->getRotationAngle()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    add-int/2addr v7, v6

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    add-int/2addr v8, v6

    .line 47
    sub-int/2addr p1, v7

    .line 48
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    sub-int/2addr p1, v5

    .line 53
    int-to-float p1, p1

    .line 54
    const/high16 v6, 0x3f000000    # 0.5f

    .line 55
    .line 56
    mul-float/2addr p1, v6

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    sub-int/2addr p2, v8

    .line 62
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    .line 68
    const/4 v7, -0x2

    .line 69
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    .line 71
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    move p2, v6

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    int-to-float p2, p2

    .line 84
    :goto_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotX(F)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v6}, Landroid/view/View;->setPivotY(F)V

    .line 88
    .line 89
    .line 90
    const/16 p2, 0x5a

    .line 91
    .line 92
    if-eq v3, p2, :cond_4

    .line 93
    .line 94
    const/16 p2, 0x10e

    .line 95
    .line 96
    if-eq v3, p2, :cond_2

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    const/high16 p2, 0x43870000    # 270.0f

    .line 100
    .line 101
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    .line 102
    .line 103
    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 107
    .line 108
    .line 109
    int-to-float p1, v4

    .line 110
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    int-to-float p2, v5

    .line 115
    add-float/2addr p2, p1

    .line 116
    neg-float p1, p2

    .line 117
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_4
    const/high16 p2, 0x42b40000    # 90.0f

    .line 125
    .line 126
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    .line 127
    .line 128
    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    int-to-float p2, v5

    .line 132
    add-float/2addr p2, p1

    .line 133
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_5
    neg-float p1, p1

    .line 141
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 142
    .line 143
    .line 144
    int-to-float p1, v4

    .line 145
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/high16 v5, 0x40000000    # 2.0f

    .line 24
    .line 25
    if-eq v1, v5, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    add-int/2addr v6, v5

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    add-int/2addr v7, v5

    .line 45
    sub-int/2addr v3, v6

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int/2addr v4, v7

    .line 56
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-direct {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v3, v5

    .line 76
    :goto_0
    if-eqz v3, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    :goto_1
    add-int/2addr v1, v6

    .line 102
    invoke-static {v1, p1, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    add-int/2addr v0, v7

    .line 107
    invoke-static {v0, p2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    const/high16 v2, -0x80000000

    .line 15
    .line 16
    const/high16 v3, 0x40000000    # 2.0f

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-int/2addr v5, v4

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    add-int/2addr v6, v4

    .line 44
    sub-int v4, p2, v6

    .line 45
    .line 46
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    sub-int v4, p1, v5

    .line 55
    .line 56
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;->a(II)V

    .line 68
    .line 69
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    invoke-direct {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    add-int/2addr v5, v4

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    add-int/2addr v6, v4

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .line 104
    const/4 v7, -0x2

    .line 105
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 106
    .line 107
    sub-int v6, p2, v6

    .line 108
    .line 109
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    sub-int v5, p1, v5

    .line 126
    .line 127
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 144
    .line 145
    .line 146
    const/16 v2, 0x33

    .line 147
    .line 148
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    .line 150
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    sub-int/2addr v1, v7

    .line 155
    div-int/lit8 v1, v1, 0x2

    .line 156
    .line 157
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 158
    .line 159
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 163
    .line 164
    .line 165
    return-void
.end method
