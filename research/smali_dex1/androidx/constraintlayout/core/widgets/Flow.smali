.class public Landroidx/constraintlayout/core/widgets/Flow;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_CHAIN_NEW:I = 0x3

.field public static final WRAP_NONE:I


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 16
    .line 17
    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    .line 19
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 20
    .line 21
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 22
    .line 23
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 24
    .line 25
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 26
    .line 27
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 28
    .line 29
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 33
    .line 34
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 38
    .line 39
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 40
    .line 41
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 42
    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 44
    .line 45
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 56
    .line 57
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 58
    .line 59
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 60
    .line 61
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 62
    .line 63
    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1000(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1100(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1200(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1300(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1400(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1500(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1600(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1700(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1800(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1900(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$700(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$900(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 2
    .line 3
    return p0
.end method

.method private createAlignedConstraints(Z)V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 2
    .line 3
    if-eqz v0, :cond_121

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 6
    .line 7
    if-eqz v0, :cond_121

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 10
    .line 11
    if-nez v0, :cond_e

    .line 12
    .line 13
    goto/16 :goto_121

    .line 14
    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_10
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 18
    .line 19
    if-ge v1, v2, :cond_1e

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 22
    .line 23
    aget-object v2, v2, v1

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_10

    .line 31
    :cond_1e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 32
    .line 33
    aget v2, v1, v0

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    aget v1, v1, v3

    .line 37
    .line 38
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    move v6, v0

    .line 42
    :goto_29
    const/16 v7, 0x8

    .line 43
    .line 44
    if-ge v6, v2, :cond_84

    .line 45
    .line 46
    if-eqz p1, :cond_38

    .line 47
    .line 48
    sub-int v4, v2, v6

    .line 49
    .line 50
    sub-int/2addr v4, v3

    .line 51
    const/high16 v8, 0x3f800000    # 1.0f

    .line 52
    .line 53
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 54
    .line 55
    sub-float/2addr v8, v9

    .line 56
    goto :goto_3a

    .line 57
    :cond_38
    move v8, v4

    .line 58
    move v4, v6

    .line 59
    :goto_3a
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 60
    .line 61
    aget-object v4, v9, v4

    .line 62
    .line 63
    if-eqz v4, :cond_80

    .line 64
    .line 65
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-ne v9, v7, :cond_47

    .line 70
    .line 71
    goto :goto_80

    .line 72
    :cond_47
    if-nez v6, :cond_5c

    .line 73
    .line 74
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 75
    .line 76
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    invoke-virtual {v4, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 83
    .line 84
    .line 85
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 86
    .line 87
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 91
    .line 92
    .line 93
    :cond_5c
    add-int/lit8 v7, v2, -0x1

    .line 94
    .line 95
    if-ne v6, v7, :cond_6b

    .line 96
    .line 97
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 98
    .line 99
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    invoke-virtual {v4, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 106
    .line 107
    .line 108
    :cond_6b
    if-lez v6, :cond_7f

    .line 109
    .line 110
    if-eqz v5, :cond_7f

    .line 111
    .line 112
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 113
    .line 114
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 115
    .line 116
    iget v10, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 117
    .line 118
    invoke-virtual {v4, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 119
    .line 120
    .line 121
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 122
    .line 123
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 124
    .line 125
    invoke-virtual {v5, v7, v9, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 126
    .line 127
    .line 128
    :cond_7f
    move-object v5, v4

    .line 129
    :cond_80
    :goto_80
    add-int/lit8 v6, v6, 0x1

    .line 130
    .line 131
    move v4, v8

    .line 132
    goto :goto_29

    .line 133
    :cond_84
    move p1, v0

    .line 134
    :goto_85
    if-ge p1, v1, :cond_d2

    .line 135
    .line 136
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 137
    .line 138
    aget-object v4, v4, p1

    .line 139
    .line 140
    if-eqz v4, :cond_cf

    .line 141
    .line 142
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-ne v6, v7, :cond_94

    .line 147
    .line 148
    goto :goto_cf

    .line 149
    :cond_94
    if-nez p1, :cond_ab

    .line 150
    .line 151
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 152
    .line 153
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-virtual {v4, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 160
    .line 161
    .line 162
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 163
    .line 164
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 165
    .line 166
    .line 167
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 168
    .line 169
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 170
    .line 171
    .line 172
    :cond_ab
    add-int/lit8 v6, v1, -0x1

    .line 173
    .line 174
    if-ne p1, v6, :cond_ba

    .line 175
    .line 176
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 177
    .line 178
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 179
    .line 180
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    invoke-virtual {v4, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 185
    .line 186
    .line 187
    :cond_ba
    if-lez p1, :cond_ce

    .line 188
    .line 189
    if-eqz v5, :cond_ce

    .line 190
    .line 191
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 192
    .line 193
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 194
    .line 195
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 196
    .line 197
    invoke-virtual {v4, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 198
    .line 199
    .line 200
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 201
    .line 202
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 203
    .line 204
    invoke-virtual {v5, v6, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 205
    .line 206
    .line 207
    :cond_ce
    move-object v5, v4

    .line 208
    :cond_cf
    :goto_cf
    add-int/lit8 p1, p1, 0x1

    .line 209
    .line 210
    goto :goto_85

    .line 211
    :cond_d2
    move p1, v0

    .line 212
    :goto_d3
    if-ge p1, v2, :cond_121

    .line 213
    .line 214
    move v4, v0

    .line 215
    :goto_d6
    if-ge v4, v1, :cond_11e

    .line 216
    .line 217
    mul-int v5, v4, v2

    .line 218
    .line 219
    add-int/2addr v5, p1

    .line 220
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 221
    .line 222
    if-ne v6, v3, :cond_e2

    .line 223
    .line 224
    mul-int v5, p1, v1

    .line 225
    .line 226
    add-int/2addr v5, v4

    .line 227
    :cond_e2
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 228
    .line 229
    array-length v8, v6

    .line 230
    if-lt v5, v8, :cond_e8

    .line 231
    .line 232
    goto :goto_11b

    .line 233
    :cond_e8
    aget-object v5, v6, v5

    .line 234
    .line 235
    if-eqz v5, :cond_11b

    .line 236
    .line 237
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    if-ne v6, v7, :cond_f3

    .line 242
    .line 243
    goto :goto_11b

    .line 244
    :cond_f3
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 245
    .line 246
    aget-object v6, v6, p1

    .line 247
    .line 248
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 249
    .line 250
    aget-object v8, v8, v4

    .line 251
    .line 252
    if-eq v5, v6, :cond_10b

    .line 253
    .line 254
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 255
    .line 256
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 257
    .line 258
    invoke-virtual {v5, v9, v10, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 259
    .line 260
    .line 261
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 262
    .line 263
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 264
    .line 265
    invoke-virtual {v5, v9, v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 266
    .line 267
    .line 268
    :cond_10b
    if-eq v5, v8, :cond_11b

    .line 269
    .line 270
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 271
    .line 272
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 273
    .line 274
    invoke-virtual {v5, v6, v9, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 275
    .line 276
    .line 277
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 278
    .line 279
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 280
    .line 281
    invoke-virtual {v5, v6, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 282
    .line 283
    .line 284
    :cond_11b
    :goto_11b
    add-int/lit8 v4, v4, 0x1

    .line 285
    .line 286
    goto :goto_d6

    .line 287
    :cond_11e
    add-int/lit8 p1, p1, 0x1

    .line 288
    .line 289
    goto :goto_d3

    .line 290
    :cond_121
    :goto_121
    return-void
.end method

.method private getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 10
    .line 11
    if-ne v1, v2, :cond_4b

    .line 12
    .line 13
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 14
    .line 15
    if-nez v1, :cond_11

    .line 16
    .line 17
    return v0

    .line 18
    :cond_11
    const/4 v0, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v0, :cond_33

    .line 21
    .line 22
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 23
    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr v0, p2

    .line 26
    float-to-int v8, v0

    .line 27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eq v8, p2, :cond_32

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    .line 46
    move-object v3, p0

    .line 47
    move-object v4, p1

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 49
    .line 50
    .line 51
    :cond_32
    return v8

    .line 52
    :cond_33
    move-object v4, p1

    .line 53
    if-ne v1, v2, :cond_3b

    .line 54
    .line 55
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_3b
    const/4 p1, 0x3

    .line 61
    if-ne v1, p1, :cond_4c

    .line 62
    .line 63
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    int-to-float p1, p1

    .line 68
    iget p2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 69
    .line 70
    mul-float/2addr p1, p2

    .line 71
    const/high16 p2, 0x3f000000    # 0.5f

    .line 72
    .line 73
    add-float/2addr p1, p2

    .line 74
    float-to-int p1, p1

    .line 75
    return p1

    .line 76
    :cond_4b
    move-object v4, p1

    .line 77
    :cond_4c
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method private getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 10
    .line 11
    if-ne v1, v2, :cond_4b

    .line 12
    .line 13
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 14
    .line 15
    if-nez v1, :cond_11

    .line 16
    .line 17
    return v0

    .line 18
    :cond_11
    const/4 v0, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v0, :cond_33

    .line 21
    .line 22
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 23
    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr v0, p2

    .line 26
    float-to-int v6, v0

    .line 27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eq v6, p2, :cond_32

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 34
    .line 35
    .line 36
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    move-object v3, p0

    .line 47
    move-object v4, p1

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 49
    .line 50
    .line 51
    :cond_32
    return v6

    .line 52
    :cond_33
    move-object v4, p1

    .line 53
    if-ne v1, v2, :cond_3b

    .line 54
    .line 55
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_3b
    const/4 p1, 0x3

    .line 61
    if-ne v1, p1, :cond_4c

    .line 62
    .line 63
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    int-to-float p1, p1

    .line 68
    iget p2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 69
    .line 70
    mul-float/2addr p1, p2

    .line 71
    const/high16 p2, 0x3f000000    # 0.5f

    .line 72
    .line 73
    add-float/2addr p1, p2

    .line 74
    float-to-int p1, p1

    .line 75
    return p1

    .line 76
    :cond_4b
    move-object v4, p1

    .line 77
    :cond_4c
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method private measureAligned([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 16

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p3, :cond_26

    .line 5
    .line 6
    if-gtz v0, :cond_23

    .line 7
    .line 8
    move v0, v1

    .line 9
    move v2, v0

    .line 10
    move v3, v2

    .line 11
    :goto_a
    if-ge v2, p2, :cond_23

    .line 12
    .line 13
    if-lez v2, :cond_11

    .line 14
    .line 15
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 16
    .line 17
    add-int/2addr v3, v4

    .line 18
    :cond_11
    aget-object v4, p1, v2

    .line 19
    .line 20
    if-nez v4, :cond_16

    .line 21
    .line 22
    goto :goto_20

    .line 23
    :cond_16
    invoke-direct {p0, v4, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    add-int/2addr v3, v4

    .line 28
    if-le v3, p4, :cond_1e

    .line 29
    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    :goto_20
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_a

    .line 36
    :cond_23
    :goto_23
    move v2, v0

    .line 37
    move v0, v1

    .line 38
    goto :goto_45

    .line 39
    :cond_26
    if-gtz v0, :cond_44

    .line 40
    .line 41
    move v0, v1

    .line 42
    move v2, v0

    .line 43
    move v3, v2

    .line 44
    :goto_2b
    if-ge v2, p2, :cond_44

    .line 45
    .line 46
    if-lez v2, :cond_32

    .line 47
    .line 48
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 49
    .line 50
    add-int/2addr v3, v4

    .line 51
    :cond_32
    aget-object v4, p1, v2

    .line 52
    .line 53
    if-nez v4, :cond_37

    .line 54
    .line 55
    goto :goto_41

    .line 56
    :cond_37
    invoke-direct {p0, v4, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    add-int/2addr v3, v4

    .line 61
    if-le v3, p4, :cond_3f

    .line 62
    .line 63
    goto :goto_44

    .line 64
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    :goto_41
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_2b

    .line 69
    :cond_44
    :goto_44
    move v2, v1

    .line 70
    :goto_45
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 71
    .line 72
    if-nez v3, :cond_4e

    .line 73
    .line 74
    const/4 v3, 0x2

    .line 75
    new-array v3, v3, [I

    .line 76
    .line 77
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 78
    .line 79
    :cond_4e
    const/4 v3, 0x1

    .line 80
    if-nez v0, :cond_53

    .line 81
    .line 82
    if-eq p3, v3, :cond_57

    .line 83
    .line 84
    :cond_53
    if-nez v2, :cond_59

    .line 85
    .line 86
    if-nez p3, :cond_59

    .line 87
    .line 88
    :cond_57
    move v4, v3

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    move v4, v1

    .line 91
    :goto_5a
    if-nez v4, :cond_11b

    .line 92
    .line 93
    if-nez p3, :cond_68

    .line 94
    .line 95
    int-to-float v0, p2

    .line 96
    int-to-float v5, v2

    .line 97
    div-float/2addr v0, v5

    .line 98
    float-to-double v5, v0

    .line 99
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    double-to-int v0, v5

    .line 104
    goto :goto_71

    .line 105
    :cond_68
    int-to-float v2, p2

    .line 106
    int-to-float v5, v0

    .line 107
    div-float/2addr v2, v5

    .line 108
    float-to-double v5, v2

    .line 109
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    double-to-int v2, v5

    .line 114
    :goto_71
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    if-eqz v5, :cond_7e

    .line 118
    .line 119
    array-length v7, v5

    .line 120
    if-ge v7, v2, :cond_7a

    .line 121
    .line 122
    goto :goto_7e

    .line 123
    :cond_7a
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_82

    .line 127
    :cond_7e
    :goto_7e
    new-array v5, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 128
    .line 129
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 130
    .line 131
    :goto_82
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 132
    .line 133
    if-eqz v5, :cond_8e

    .line 134
    .line 135
    array-length v7, v5

    .line 136
    if-ge v7, v0, :cond_8a

    .line 137
    .line 138
    goto :goto_8e

    .line 139
    :cond_8a
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_92

    .line 143
    :cond_8e
    :goto_8e
    new-array v5, v0, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 144
    .line 145
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 146
    .line 147
    :goto_92
    move v5, v1

    .line 148
    :goto_93
    if-ge v5, v2, :cond_d7

    .line 149
    .line 150
    move v6, v1

    .line 151
    :goto_96
    if-ge v6, v0, :cond_d4

    .line 152
    .line 153
    mul-int v7, v6, v2

    .line 154
    .line 155
    add-int/2addr v7, v5

    .line 156
    if-ne p3, v3, :cond_a0

    .line 157
    .line 158
    mul-int v7, v5, v0

    .line 159
    .line 160
    add-int/2addr v7, v6

    .line 161
    :cond_a0
    array-length v8, p1

    .line 162
    if-lt v7, v8, :cond_a4

    .line 163
    .line 164
    goto :goto_d1

    .line 165
    :cond_a4
    aget-object v7, p1, v7

    .line 166
    .line 167
    if-nez v7, :cond_a9

    .line 168
    .line 169
    goto :goto_d1

    .line 170
    :cond_a9
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 175
    .line 176
    aget-object v9, v9, v5

    .line 177
    .line 178
    if-eqz v9, :cond_b9

    .line 179
    .line 180
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-ge v9, v8, :cond_bd

    .line 185
    .line 186
    :cond_b9
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 187
    .line 188
    aput-object v7, v8, v5

    .line 189
    .line 190
    :cond_bd
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 195
    .line 196
    aget-object v9, v9, v6

    .line 197
    .line 198
    if-eqz v9, :cond_cd

    .line 199
    .line 200
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-ge v9, v8, :cond_d1

    .line 205
    .line 206
    :cond_cd
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 207
    .line 208
    aput-object v7, v8, v6

    .line 209
    .line 210
    :cond_d1
    :goto_d1
    add-int/lit8 v6, v6, 0x1

    .line 211
    .line 212
    goto :goto_96

    .line 213
    :cond_d4
    add-int/lit8 v5, v5, 0x1

    .line 214
    .line 215
    goto :goto_93

    .line 216
    :cond_d7
    move v5, v1

    .line 217
    move v6, v5

    .line 218
    :goto_d9
    if-ge v5, v2, :cond_ee

    .line 219
    .line 220
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 221
    .line 222
    aget-object v7, v7, v5

    .line 223
    .line 224
    if-eqz v7, :cond_eb

    .line 225
    .line 226
    if-lez v5, :cond_e6

    .line 227
    .line 228
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 229
    .line 230
    add-int/2addr v6, v8

    .line 231
    :cond_e6
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    add-int/2addr v6, v7

    .line 236
    :cond_eb
    add-int/lit8 v5, v5, 0x1

    .line 237
    .line 238
    goto :goto_d9

    .line 239
    :cond_ee
    move v5, v1

    .line 240
    move v7, v5

    .line 241
    :goto_f0
    if-ge v5, v0, :cond_105

    .line 242
    .line 243
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 244
    .line 245
    aget-object v8, v8, v5

    .line 246
    .line 247
    if-eqz v8, :cond_102

    .line 248
    .line 249
    if-lez v5, :cond_fd

    .line 250
    .line 251
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 252
    .line 253
    add-int/2addr v7, v9

    .line 254
    :cond_fd
    invoke-direct {p0, v8, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    add-int/2addr v7, v8

    .line 259
    :cond_102
    add-int/lit8 v5, v5, 0x1

    .line 260
    .line 261
    goto :goto_f0

    .line 262
    :cond_105
    aput v6, p5, v1

    .line 263
    .line 264
    aput v7, p5, v3

    .line 265
    .line 266
    if-nez p3, :cond_113

    .line 267
    .line 268
    if-le v6, p4, :cond_57

    .line 269
    .line 270
    if-le v2, v3, :cond_57

    .line 271
    .line 272
    add-int/lit8 v2, v2, -0x1

    .line 273
    .line 274
    goto/16 :goto_5a

    .line 275
    .line 276
    :cond_113
    if-le v7, p4, :cond_57

    .line 277
    .line 278
    if-le v0, v3, :cond_57

    .line 279
    .line 280
    add-int/lit8 v0, v0, -0x1

    .line 281
    .line 282
    goto/16 :goto_5a

    .line 283
    .line 284
    :cond_11b
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 285
    .line 286
    aput v2, p1, v1

    .line 287
    .line 288
    aput v0, p1, v3

    .line 289
    .line 290
    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    if-nez v8, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 14
    .line 15
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 16
    .line 17
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    .line 19
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    .line 21
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    move/from16 v2, p3

    .line 24
    .line 25
    move/from16 v7, p4

    .line 26
    .line 27
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    if-nez p3, :cond_84

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    :goto_27
    if-ge v9, v8, :cond_81

    .line 41
    .line 42
    aget-object v10, p1, v9

    .line 43
    .line 44
    invoke-direct {v1, v10, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 45
    .line 46
    .line 47
    move-result v13

    .line 48
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 53
    .line 54
    if-ne v4, v5, :cond_39

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    :cond_39
    move v14, v2

    .line 59
    if-eq v3, v7, :cond_42

    .line 60
    .line 61
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 62
    .line 63
    add-int/2addr v2, v3

    .line 64
    add-int/2addr v2, v13

    .line 65
    if-le v2, v7, :cond_4a

    .line 66
    .line 67
    :cond_42
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_4a

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    const/4 v2, 0x0

    .line 76
    :goto_4b
    if-nez v2, :cond_58

    .line 77
    .line 78
    if-lez v9, :cond_58

    .line 79
    .line 80
    iget v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 81
    .line 82
    if-lez v4, :cond_58

    .line 83
    .line 84
    rem-int v4, v9, v4

    .line 85
    .line 86
    if-nez v4, :cond_58

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    :cond_58
    if-eqz v2, :cond_73

    .line 90
    .line 91
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 92
    .line 93
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 94
    .line 95
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 96
    .line 97
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 98
    .line 99
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 100
    .line 101
    move/from16 v2, p3

    .line 102
    .line 103
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 107
    .line 108
    .line 109
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_71
    move v3, v13

    .line 115
    goto :goto_7a

    .line 116
    :cond_73
    if-lez v9, :cond_71

    .line 117
    .line 118
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 119
    .line 120
    add-int/2addr v2, v13

    .line 121
    add-int/2addr v2, v3

    .line 122
    move v3, v2

    .line 123
    :goto_7a
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v9, v9, 0x1

    .line 127
    .line 128
    move v2, v14

    .line 129
    goto :goto_27

    .line 130
    :cond_81
    move-object v15, v1

    .line 131
    goto/16 :goto_e6

    .line 132
    .line 133
    :cond_84
    const/4 v2, 0x0

    .line 134
    const/4 v3, 0x0

    .line 135
    const/4 v9, 0x0

    .line 136
    :goto_87
    if-ge v9, v8, :cond_81

    .line 137
    .line 138
    aget-object v10, p1, v9

    .line 139
    .line 140
    invoke-direct {v1, v10, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 149
    .line 150
    if-ne v4, v5, :cond_99

    .line 151
    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    :cond_99
    move v14, v2

    .line 155
    if-eq v3, v7, :cond_a2

    .line 156
    .line 157
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 158
    .line 159
    add-int/2addr v2, v3

    .line 160
    add-int/2addr v2, v13

    .line 161
    if-le v2, v7, :cond_aa

    .line 162
    .line 163
    :cond_a2
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    if-eqz v2, :cond_aa

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    goto :goto_ab

    .line 171
    :cond_aa
    const/4 v2, 0x0

    .line 172
    :goto_ab
    if-nez v2, :cond_b8

    .line 173
    .line 174
    if-lez v9, :cond_b8

    .line 175
    .line 176
    iget v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 177
    .line 178
    if-lez v4, :cond_b8

    .line 179
    .line 180
    rem-int v4, v9, v4

    .line 181
    .line 182
    if-nez v4, :cond_b8

    .line 183
    .line 184
    const/4 v2, 0x1

    .line 185
    :cond_b8
    if-eqz v2, :cond_d4

    .line 186
    .line 187
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 188
    .line 189
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 190
    .line 191
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 192
    .line 193
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 194
    .line 195
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 196
    .line 197
    move/from16 v2, p3

    .line 198
    .line 199
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 200
    .line 201
    .line 202
    move-object v15, v1

    .line 203
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    :cond_d2
    move v3, v13

    .line 212
    goto :goto_dc

    .line 213
    :cond_d4
    move-object v15, v1

    .line 214
    if-lez v9, :cond_d2

    .line 215
    .line 216
    iget v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 217
    .line 218
    add-int/2addr v1, v13

    .line 219
    add-int/2addr v1, v3

    .line 220
    move v3, v1

    .line 221
    :goto_dc
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 222
    .line 223
    .line 224
    add-int/lit8 v9, v9, 0x1

    .line 225
    .line 226
    move/from16 v7, p4

    .line 227
    .line 228
    move v2, v14

    .line 229
    move-object v1, v15

    .line 230
    goto :goto_87

    .line 231
    :goto_e6
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 238
    .line 239
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 240
    .line 241
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 242
    .line 243
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 244
    .line 245
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 266
    .line 267
    if-eq v9, v10, :cond_115

    .line 268
    .line 269
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    if-ne v9, v10, :cond_113

    .line 274
    .line 275
    goto :goto_115

    .line 276
    :cond_113
    const/4 v9, 0x0

    .line 277
    goto :goto_116

    .line 278
    :cond_115
    :goto_115
    const/4 v9, 0x1

    .line 279
    :goto_116
    if-lez v2, :cond_13d

    .line 280
    .line 281
    if-eqz v9, :cond_13d

    .line 282
    .line 283
    const/4 v2, 0x0

    .line 284
    :goto_11b
    if-ge v2, v13, :cond_13d

    .line 285
    .line 286
    iget-object v9, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 293
    .line 294
    if-nez p3, :cond_131

    .line 295
    .line 296
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 297
    .line 298
    .line 299
    move-result v10

    .line 300
    sub-int v10, p4, v10

    .line 301
    .line 302
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 303
    .line 304
    .line 305
    goto :goto_13a

    .line 306
    :cond_131
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    sub-int v10, p4, v10

    .line 311
    .line 312
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 313
    .line 314
    .line 315
    :goto_13a
    add-int/lit8 v2, v2, 0x1

    .line 316
    .line 317
    goto :goto_11b

    .line 318
    :cond_13d
    move-object v2, v0

    .line 319
    move v9, v8

    .line 320
    const/4 v0, 0x0

    .line 321
    const/4 v14, 0x0

    .line 322
    move v8, v7

    .line 323
    move v7, v6

    .line 324
    move v6, v5

    .line 325
    move-object v5, v4

    .line 326
    move-object v4, v3

    .line 327
    move-object v3, v1

    .line 328
    const/4 v1, 0x0

    .line 329
    :goto_148
    if-ge v14, v13, :cond_1f4

    .line 330
    .line 331
    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v10

    .line 337
    check-cast v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 338
    .line 339
    if-nez p3, :cond_1a1

    .line 340
    .line 341
    add-int/lit8 v5, v13, -0x1

    .line 342
    .line 343
    if-ge v14, v5, :cond_16c

    .line 344
    .line 345
    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 346
    .line 347
    add-int/lit8 v9, v14, 0x1

    .line 348
    .line 349
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 354
    .line 355
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 360
    .line 361
    const/4 v9, 0x0

    .line 362
    :goto_169
    const/16 v16, 0x1

    .line 363
    .line 364
    goto :goto_173

    .line 365
    :cond_16c
    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 366
    .line 367
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    goto :goto_169

    .line 372
    :goto_173
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 377
    .line 378
    move v12, v0

    .line 379
    move-object v0, v10

    .line 380
    move-object/from16 p1, v11

    .line 381
    .line 382
    const/16 v17, 0x0

    .line 383
    .line 384
    move/from16 v10, p4

    .line 385
    .line 386
    move v11, v1

    .line 387
    move/from16 v1, p3

    .line 388
    .line 389
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    add-int/2addr v0, v11

    .line 405
    if-lez v14, :cond_199

    .line 406
    .line 407
    iget v3, v15, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 408
    .line 409
    add-int/2addr v0, v3

    .line 410
    :cond_199
    move v3, v1

    .line 411
    move v1, v0

    .line 412
    move v0, v3

    .line 413
    move-object/from16 v3, p1

    .line 414
    .line 415
    move/from16 v7, v17

    .line 416
    .line 417
    goto :goto_1f0

    .line 418
    :cond_1a1
    move v12, v0

    .line 419
    move v11, v1

    .line 420
    move-object v0, v10

    .line 421
    const/16 v16, 0x1

    .line 422
    .line 423
    const/16 v17, 0x0

    .line 424
    .line 425
    add-int/lit8 v1, v13, -0x1

    .line 426
    .line 427
    if-ge v14, v1, :cond_1c0

    .line 428
    .line 429
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 430
    .line 431
    add-int/lit8 v4, v14, 0x1

    .line 432
    .line 433
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 438
    .line 439
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 444
    .line 445
    move/from16 v8, v17

    .line 446
    .line 447
    :goto_1be
    move-object v4, v1

    .line 448
    goto :goto_1c8

    .line 449
    :cond_1c0
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 450
    .line 451
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    move v8, v4

    .line 456
    goto :goto_1be

    .line 457
    :goto_1c8
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 462
    .line 463
    move/from16 v10, p4

    .line 464
    .line 465
    move-object/from16 v18, v1

    .line 466
    .line 467
    move/from16 v1, p3

    .line 468
    .line 469
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    add-int/2addr v1, v12

    .line 477
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-lez v14, :cond_1e9

    .line 486
    .line 487
    iget v2, v15, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 488
    .line 489
    add-int/2addr v1, v2

    .line 490
    :cond_1e9
    move v2, v1

    .line 491
    move v1, v0

    .line 492
    move v0, v2

    .line 493
    move/from16 v6, v17

    .line 494
    .line 495
    move-object/from16 v2, v18

    .line 496
    .line 497
    :goto_1f0
    add-int/lit8 v14, v14, 0x1

    .line 498
    .line 499
    goto/16 :goto_148

    .line 500
    .line 501
    :cond_1f4
    move v12, v0

    .line 502
    move v11, v1

    .line 503
    const/16 v16, 0x1

    .line 504
    .line 505
    const/16 v17, 0x0

    .line 506
    .line 507
    aput v12, p5, v17

    .line 508
    .line 509
    aput v11, p5, v16

    .line 510
    .line 511
    return-void
.end method

.method private measureChainWrap_new([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    if-nez v8, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 14
    .line 15
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 16
    .line 17
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    .line 19
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    .line 21
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    move/from16 v2, p3

    .line 24
    .line 25
    move/from16 v7, p4

    .line 26
    .line 27
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const/4 v12, 0x1

    .line 36
    if-nez p3, :cond_86

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    :goto_29
    if-ge v9, v8, :cond_83

    .line 43
    .line 44
    add-int/2addr v2, v12

    .line 45
    aget-object v10, p1, v9

    .line 46
    .line 47
    invoke-direct {v1, v10, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 48
    .line 49
    .line 50
    move-result v13

    .line 51
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 56
    .line 57
    if-ne v5, v6, :cond_3c

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    :cond_3c
    move v14, v3

    .line 62
    if-eq v4, v7, :cond_45

    .line 63
    .line 64
    iget v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 65
    .line 66
    add-int/2addr v3, v4

    .line 67
    add-int/2addr v3, v13

    .line 68
    if-le v3, v7, :cond_4d

    .line 69
    .line 70
    :cond_45
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_4d

    .line 75
    .line 76
    move v3, v12

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    const/4 v3, 0x0

    .line 79
    :goto_4e
    if-nez v3, :cond_59

    .line 80
    .line 81
    if-lez v9, :cond_59

    .line 82
    .line 83
    iget v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 84
    .line 85
    if-lez v5, :cond_59

    .line 86
    .line 87
    if-le v2, v5, :cond_59

    .line 88
    .line 89
    move v3, v12

    .line 90
    :cond_59
    if-eqz v3, :cond_75

    .line 91
    .line 92
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 93
    .line 94
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    .line 96
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 97
    .line 98
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 99
    .line 100
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 101
    .line 102
    move/from16 v2, p3

    .line 103
    .line 104
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move v2, v12

    .line 116
    :cond_73
    move v4, v13

    .line 117
    goto :goto_7c

    .line 118
    :cond_75
    if-lez v9, :cond_73

    .line 119
    .line 120
    iget v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 121
    .line 122
    add-int/2addr v3, v13

    .line 123
    add-int/2addr v3, v4

    .line 124
    move v4, v3

    .line 125
    :goto_7c
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v9, v9, 0x1

    .line 129
    .line 130
    move v3, v14

    .line 131
    goto :goto_29

    .line 132
    :cond_83
    move-object v15, v1

    .line 133
    goto/16 :goto_e9

    .line 134
    .line 135
    :cond_86
    const/4 v2, 0x0

    .line 136
    const/4 v3, 0x0

    .line 137
    const/4 v4, 0x0

    .line 138
    const/4 v9, 0x0

    .line 139
    :goto_8a
    if-ge v9, v8, :cond_83

    .line 140
    .line 141
    add-int/2addr v2, v12

    .line 142
    aget-object v10, p1, v9

    .line 143
    .line 144
    invoke-direct {v1, v10, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 153
    .line 154
    if-ne v5, v6, :cond_9d

    .line 155
    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 157
    .line 158
    :cond_9d
    move v14, v3

    .line 159
    if-eq v4, v7, :cond_a6

    .line 160
    .line 161
    iget v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 162
    .line 163
    add-int/2addr v3, v4

    .line 164
    add-int/2addr v3, v13

    .line 165
    if-le v3, v7, :cond_ae

    .line 166
    .line 167
    :cond_a6
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-eqz v3, :cond_ae

    .line 172
    .line 173
    move v3, v12

    .line 174
    goto :goto_af

    .line 175
    :cond_ae
    const/4 v3, 0x0

    .line 176
    :goto_af
    if-nez v3, :cond_ba

    .line 177
    .line 178
    if-lez v9, :cond_ba

    .line 179
    .line 180
    iget v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 181
    .line 182
    if-lez v5, :cond_ba

    .line 183
    .line 184
    if-le v2, v5, :cond_ba

    .line 185
    .line 186
    move v3, v12

    .line 187
    :cond_ba
    if-eqz v3, :cond_d7

    .line 188
    .line 189
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 190
    .line 191
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 192
    .line 193
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 194
    .line 195
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 196
    .line 197
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 198
    .line 199
    move/from16 v2, p3

    .line 200
    .line 201
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 202
    .line 203
    .line 204
    move-object v15, v1

    .line 205
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move v2, v12

    .line 214
    :cond_d5
    move v4, v13

    .line 215
    goto :goto_df

    .line 216
    :cond_d7
    move-object v15, v1

    .line 217
    if-lez v9, :cond_d5

    .line 218
    .line 219
    iget v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 220
    .line 221
    add-int/2addr v1, v13

    .line 222
    add-int/2addr v1, v4

    .line 223
    move v4, v1

    .line 224
    :goto_df
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 225
    .line 226
    .line 227
    add-int/lit8 v9, v9, 0x1

    .line 228
    .line 229
    move/from16 v7, p4

    .line 230
    .line 231
    move v3, v14

    .line 232
    move-object v1, v15

    .line 233
    goto :goto_8a

    .line 234
    :goto_e9
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v13

    .line 240
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 241
    .line 242
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 243
    .line 244
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 245
    .line 246
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 247
    .line 248
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 269
    .line 270
    if-eq v9, v10, :cond_118

    .line 271
    .line 272
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    if-ne v9, v10, :cond_116

    .line 277
    .line 278
    goto :goto_118

    .line 279
    :cond_116
    const/4 v9, 0x0

    .line 280
    goto :goto_119

    .line 281
    :cond_118
    :goto_118
    move v9, v12

    .line 282
    :goto_119
    if-lez v3, :cond_140

    .line 283
    .line 284
    if-eqz v9, :cond_140

    .line 285
    .line 286
    const/4 v3, 0x0

    .line 287
    :goto_11e
    if-ge v3, v13, :cond_140

    .line 288
    .line 289
    iget-object v9, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 296
    .line 297
    if-nez p3, :cond_134

    .line 298
    .line 299
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 300
    .line 301
    .line 302
    move-result v10

    .line 303
    sub-int v10, p4, v10

    .line 304
    .line 305
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 306
    .line 307
    .line 308
    goto :goto_13d

    .line 309
    :cond_134
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    sub-int v10, p4, v10

    .line 314
    .line 315
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 316
    .line 317
    .line 318
    :goto_13d
    add-int/lit8 v3, v3, 0x1

    .line 319
    .line 320
    goto :goto_11e

    .line 321
    :cond_140
    move-object v3, v1

    .line 322
    move v9, v8

    .line 323
    const/4 v1, 0x0

    .line 324
    const/4 v14, 0x0

    .line 325
    move v8, v7

    .line 326
    move v7, v6

    .line 327
    move v6, v5

    .line 328
    move-object v5, v4

    .line 329
    move-object v4, v2

    .line 330
    move-object v2, v0

    .line 331
    const/4 v0, 0x0

    .line 332
    :goto_14b
    if-ge v14, v13, :cond_1f9

    .line 333
    .line 334
    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    check-cast v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 341
    .line 342
    if-nez p3, :cond_1a4

    .line 343
    .line 344
    add-int/lit8 v5, v13, -0x1

    .line 345
    .line 346
    if-ge v14, v5, :cond_16f

    .line 347
    .line 348
    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 349
    .line 350
    add-int/lit8 v9, v14, 0x1

    .line 351
    .line 352
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 357
    .line 358
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 363
    .line 364
    const/4 v9, 0x0

    .line 365
    :goto_16c
    const/16 v16, 0x0

    .line 366
    .line 367
    goto :goto_176

    .line 368
    :cond_16f
    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 369
    .line 370
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 371
    .line 372
    .line 373
    move-result v9

    .line 374
    goto :goto_16c

    .line 375
    :goto_176
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 376
    .line 377
    .line 378
    move-result-object v11

    .line 379
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 380
    .line 381
    move-object/from16 p1, v11

    .line 382
    .line 383
    move/from16 v17, v12

    .line 384
    .line 385
    move v12, v0

    .line 386
    move v11, v1

    .line 387
    move-object v0, v10

    .line 388
    move/from16 v1, p3

    .line 389
    .line 390
    move/from16 v10, p4

    .line 391
    .line 392
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    add-int/2addr v0, v11

    .line 408
    if-lez v14, :cond_19c

    .line 409
    .line 410
    iget v3, v15, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 411
    .line 412
    add-int/2addr v0, v3

    .line 413
    :cond_19c
    move v3, v1

    .line 414
    move v1, v0

    .line 415
    move v0, v3

    .line 416
    move-object/from16 v3, p1

    .line 417
    .line 418
    move/from16 v7, v16

    .line 419
    .line 420
    goto :goto_1f3

    .line 421
    :cond_1a4
    move v11, v1

    .line 422
    move/from16 v17, v12

    .line 423
    .line 424
    const/16 v16, 0x0

    .line 425
    .line 426
    move v12, v0

    .line 427
    move-object v0, v10

    .line 428
    add-int/lit8 v1, v13, -0x1

    .line 429
    .line 430
    if-ge v14, v1, :cond_1c3

    .line 431
    .line 432
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 433
    .line 434
    add-int/lit8 v4, v14, 0x1

    .line 435
    .line 436
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 441
    .line 442
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 447
    .line 448
    move/from16 v8, v16

    .line 449
    .line 450
    :goto_1c1
    move-object v4, v1

    .line 451
    goto :goto_1cb

    .line 452
    :cond_1c3
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 453
    .line 454
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    move v8, v4

    .line 459
    goto :goto_1c1

    .line 460
    :goto_1cb
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mBiggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 465
    .line 466
    move/from16 v10, p4

    .line 467
    .line 468
    move-object/from16 v18, v1

    .line 469
    .line 470
    move/from16 v1, p3

    .line 471
    .line 472
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    add-int/2addr v1, v12

    .line 480
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    if-lez v14, :cond_1ec

    .line 489
    .line 490
    iget v2, v15, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 491
    .line 492
    add-int/2addr v1, v2

    .line 493
    :cond_1ec
    move v2, v1

    .line 494
    move v1, v0

    .line 495
    move v0, v2

    .line 496
    move/from16 v6, v16

    .line 497
    .line 498
    move-object/from16 v2, v18

    .line 499
    .line 500
    :goto_1f3
    add-int/lit8 v14, v14, 0x1

    .line 501
    .line 502
    move/from16 v12, v17

    .line 503
    .line 504
    goto/16 :goto_14b

    .line 505
    .line 506
    :cond_1f9
    move v11, v1

    .line 507
    move/from16 v17, v12

    .line 508
    .line 509
    const/16 v16, 0x0

    .line 510
    .line 511
    move v12, v0

    .line 512
    aput v12, p5, v16

    .line 513
    .line 514
    aput v11, p5, v17

    .line 515
    .line 516
    return-void
.end method

.method private measureNoWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    if-nez v8, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v9, 0x0

    .line 15
    if-nez v0, :cond_27

    .line 16
    .line 17
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 18
    .line 19
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    .line 21
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 24
    .line 25
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 26
    .line 27
    move/from16 v2, p3

    .line 28
    .line 29
    move/from16 v7, p4

    .line 30
    .line 31
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_53

    .line 40
    :cond_27
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v10, v0

    .line 47
    check-cast v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 48
    .line 49
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 53
    .line 54
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 55
    .line 56
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 57
    .line 58
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 61
    .line 62
    .line 63
    move-result v16

    .line 64
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 65
    .line 66
    .line 67
    move-result v17

    .line 68
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 69
    .line 70
    .line 71
    move-result v18

    .line 72
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 73
    .line 74
    .line 75
    move-result v19

    .line 76
    move/from16 v11, p3

    .line 77
    .line 78
    move/from16 v20, p4

    .line 79
    .line 80
    invoke-virtual/range {v10 .. v20}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 81
    .line 82
    .line 83
    move-object v0, v10

    .line 84
    :goto_53
    move v2, v9

    .line 85
    :goto_54
    if-ge v2, v8, :cond_5e

    .line 86
    .line 87
    aget-object v3, p1, v2

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_54

    .line 95
    :cond_5e
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    aput v2, p5, v9

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    const/4 v2, 0x1

    .line 106
    aput v0, p5, v2

    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 8

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p1, :cond_19

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_19

    .line 23
    .line 24
    move p1, v0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move p1, p2

    .line 27
    :goto_1a
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 28
    .line 29
    if-eqz v1, :cond_67

    .line 30
    .line 31
    if-eq v1, v0, :cond_49

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v1, v2, :cond_45

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-eq v1, v2, :cond_27

    .line 38
    .line 39
    goto :goto_7a

    .line 40
    :cond_27
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    move v2, p2

    .line 47
    :goto_2e
    if-ge v2, v1, :cond_7a

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 56
    .line 57
    add-int/lit8 v4, v1, -0x1

    .line 58
    .line 59
    if-ne v2, v4, :cond_3e

    .line 60
    .line 61
    move v4, v0

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v4, p2

    .line 64
    :goto_3f
    invoke-virtual {v3, p1, v2, v4}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_2e

    .line 70
    :cond_45
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->createAlignedConstraints(Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_7a

    .line 74
    :cond_49
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    move v2, p2

    .line 81
    :goto_50
    if-ge v2, v1, :cond_7a

    .line 82
    .line 83
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 90
    .line 91
    add-int/lit8 v4, v1, -0x1

    .line 92
    .line 93
    if-ne v2, v4, :cond_60

    .line 94
    .line 95
    move v4, v0

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move v4, p2

    .line 98
    :goto_61
    invoke-virtual {v3, p1, v2, v4}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_50

    .line 104
    :cond_67
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-lez v1, :cond_7a

    .line 111
    .line 112
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 119
    .line 120
    invoke-virtual {v1, p1, p2, v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 121
    .line 122
    .line 123
    :cond_7a
    :goto_7a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/constraintlayout/core/widgets/Flow;

    .line 5
    .line 6
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 7
    .line 8
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 9
    .line 10
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 11
    .line 12
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 13
    .line 14
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 15
    .line 16
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 17
    .line 18
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 19
    .line 20
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 21
    .line 22
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 23
    .line 24
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 25
    .line 26
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 27
    .line 28
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 29
    .line 30
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 31
    .line 32
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 33
    .line 34
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 35
    .line 36
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 37
    .line 38
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 39
    .line 40
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 41
    .line 42
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 43
    .line 44
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 45
    .line 46
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 47
    .line 48
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 49
    .line 50
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 51
    .line 52
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 53
    .line 54
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 55
    .line 56
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 57
    .line 58
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 59
    .line 60
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 61
    .line 62
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 63
    .line 64
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 65
    .line 66
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 67
    .line 68
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 69
    .line 70
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 71
    .line 72
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 73
    .line 74
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 75
    .line 76
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 77
    .line 78
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 79
    .line 80
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 81
    .line 82
    return-void
.end method

.method public getMaxElementsWrap()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    return v0
.end method

.method public measure(IIII)V
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v6, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    move/from16 v8, p3

    .line 8
    .line 9
    move/from16 v9, p4

    .line 10
    .line 11
    iget v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    if-lez v1, :cond_1c

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->measureChildren()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1c

    .line 21
    .line 22
    invoke-virtual {v0, v10, v10}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->setMeasure(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingLeft()I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingRight()I

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingTop()I

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getPaddingBottom()I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v5, v1, [I

    .line 47
    .line 48
    sub-int v2, v7, v11

    .line 49
    .line 50
    sub-int/2addr v2, v12

    .line 51
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 52
    .line 53
    const/4 v15, 0x1

    .line 54
    if-ne v3, v15, :cond_3a

    .line 55
    .line 56
    sub-int v2, v9, v13

    .line 57
    .line 58
    sub-int/2addr v2, v14

    .line 59
    :cond_3a
    move v4, v2

    .line 60
    iget v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 61
    .line 62
    const/4 v1, -0x1

    .line 63
    if-nez v3, :cond_4b

    .line 64
    .line 65
    if-ne v2, v1, :cond_44

    .line 66
    .line 67
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 68
    .line 69
    :cond_44
    iget v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 70
    .line 71
    if-ne v2, v1, :cond_55

    .line 72
    .line 73
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 74
    .line 75
    goto :goto_55

    .line 76
    :cond_4b
    if-ne v2, v1, :cond_4f

    .line 77
    .line 78
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 79
    .line 80
    :cond_4f
    iget v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 81
    .line 82
    if-ne v2, v1, :cond_55

    .line 83
    .line 84
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 85
    .line 86
    :cond_55
    :goto_55
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 87
    .line 88
    move v2, v10

    .line 89
    move v3, v2

    .line 90
    move/from16 v16, v3

    .line 91
    .line 92
    :goto_5b
    iget v10, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 93
    .line 94
    const/16 v15, 0x8

    .line 95
    .line 96
    if-ge v2, v10, :cond_71

    .line 97
    .line 98
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 99
    .line 100
    aget-object v10, v10, v2

    .line 101
    .line 102
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-ne v10, v15, :cond_6d

    .line 107
    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    const/4 v15, 0x1

    .line 113
    goto :goto_5b

    .line 114
    :cond_71
    if-lez v3, :cond_94

    .line 115
    .line 116
    sub-int/2addr v10, v3

    .line 117
    new-array v1, v10, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 118
    .line 119
    move/from16 v2, v16

    .line 120
    .line 121
    move v10, v2

    .line 122
    :goto_79
    iget v3, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 123
    .line 124
    if-ge v2, v3, :cond_92

    .line 125
    .line 126
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 127
    .line 128
    aget-object v3, v3, v2

    .line 129
    .line 130
    move-object/from16 v18, v1

    .line 131
    .line 132
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eq v1, v15, :cond_8d

    .line 137
    .line 138
    aput-object v3, v18, v10

    .line 139
    .line 140
    add-int/lit8 v10, v10, 0x1

    .line 141
    .line 142
    :cond_8d
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    move-object/from16 v1, v18

    .line 145
    .line 146
    goto :goto_79

    .line 147
    :cond_92
    move-object/from16 v18, v1

    .line 148
    .line 149
    :cond_94
    move v2, v10

    .line 150
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 151
    .line 152
    iput v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 153
    .line 154
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 155
    .line 156
    if-eqz v3, :cond_b9

    .line 157
    .line 158
    const/4 v10, 0x1

    .line 159
    if-eq v3, v10, :cond_b3

    .line 160
    .line 161
    const/4 v10, 0x2

    .line 162
    if-eq v3, v10, :cond_ad

    .line 163
    .line 164
    const/4 v10, 0x3

    .line 165
    if-eq v3, v10, :cond_a7

    .line 166
    .line 167
    goto :goto_be

    .line 168
    :cond_a7
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 169
    .line 170
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureChainWrap_new([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 171
    .line 172
    .line 173
    goto :goto_be

    .line 174
    :cond_ad
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 175
    .line 176
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureAligned([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 177
    .line 178
    .line 179
    goto :goto_be

    .line 180
    :cond_b3
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 181
    .line 182
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 183
    .line 184
    .line 185
    goto :goto_be

    .line 186
    :cond_b9
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 187
    .line 188
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 189
    .line 190
    .line 191
    :goto_be
    aget v1, v5, v16

    .line 192
    .line 193
    add-int/2addr v1, v11

    .line 194
    add-int/2addr v1, v12

    .line 195
    const/16 v17, 0x1

    .line 196
    .line 197
    aget v2, v5, v17

    .line 198
    .line 199
    add-int/2addr v2, v13

    .line 200
    add-int/2addr v2, v14

    .line 201
    const/high16 v3, -0x80000000

    .line 202
    .line 203
    const/high16 v4, 0x40000000    # 2.0f

    .line 204
    .line 205
    if-ne v6, v4, :cond_d0

    .line 206
    .line 207
    move v1, v7

    .line 208
    goto :goto_dc

    .line 209
    :cond_d0
    if-ne v6, v3, :cond_d7

    .line 210
    .line 211
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    goto :goto_dc

    .line 216
    :cond_d7
    if-nez v6, :cond_da

    .line 217
    .line 218
    goto :goto_dc

    .line 219
    :cond_da
    move/from16 v1, v16

    .line 220
    .line 221
    :goto_dc
    if-ne v8, v4, :cond_e0

    .line 222
    .line 223
    move v2, v9

    .line 224
    goto :goto_ec

    .line 225
    :cond_e0
    if-ne v8, v3, :cond_e7

    .line 226
    .line 227
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    goto :goto_ec

    .line 232
    :cond_e7
    if-nez v8, :cond_ea

    .line 233
    .line 234
    goto :goto_ec

    .line 235
    :cond_ea
    move/from16 v2, v16

    .line 236
    .line 237
    :goto_ec
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->setMeasure(II)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 244
    .line 245
    .line 246
    iget v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 247
    .line 248
    if-lez v1, :cond_fc

    .line 249
    .line 250
    move/from16 v10, v17

    .line 251
    .line 252
    goto :goto_fe

    .line 253
    :cond_fc
    move/from16 v10, v16

    .line 254
    .line 255
    :goto_fe
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needsCallbackFromSolver(Z)V

    .line 256
    .line 257
    .line 258
    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 2
    .line 3
    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public setFirstVerticalBias(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 2
    .line 3
    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalAlign(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalBias(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalGap(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 2
    .line 3
    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public setLastVerticalBias(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 2
    .line 3
    return-void
.end method

.method public setLastVerticalStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxElementsWrap(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalAlign(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalBias(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalGap(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalStyle(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public setWrapMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 2
    .line 3
    return-void
.end method
