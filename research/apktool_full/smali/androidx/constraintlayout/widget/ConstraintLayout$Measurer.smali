.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Measurer"
.end annotation


# instance fields
.field mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field mLayoutHeightSpec:I

.field mLayoutWidthSpec:I

.field mPaddingBottom:I

.field mPaddingHeight:I

.field mPaddingTop:I

.field mPaddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    return-void
.end method

.method private isSimilarSpec(III)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    .line 19
    if-ne v1, v2, :cond_2

    .line 20
    .line 21
    const/high16 v1, -0x80000000

    .line 22
    .line 23
    if-eq p1, v1, :cond_1

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    :cond_1
    if-ne p3, p2, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    const/4 p1, 0x0

    .line 31
    return p1
.end method


# virtual methods
.method public captureLayoutInfo(IIIIII)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingTop:I

    .line 2
    .line 3
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingBottom:I

    .line 4
    .line 5
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 6
    .line 7
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingHeight:I

    .line 8
    .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 10
    .line 11
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 12
    .line 13
    return-void
.end method

.method public final didMeasures()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    :goto_1
    if-ge v1, v0, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    .line 45
    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1f

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-ne v3, v4, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInPlaceholder()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 27
    .line 28
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 29
    .line 30
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    goto/16 :goto_1f

    .line 40
    .line 41
    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/core/Metrics;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x1

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    .line 52
    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/core/Metrics;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget v6, v3, Landroidx/constraintlayout/core/Metrics;->mNumberOfMeasures:I

    .line 57
    .line 58
    add-int/2addr v6, v4

    .line 59
    iput v6, v3, Landroidx/constraintlayout/core/Metrics;->mNumberOfMeasures:I

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-wide/16 v6, 0x0

    .line 67
    .line 68
    :goto_0
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 69
    .line 70
    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 71
    .line 72
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 73
    .line 74
    iget v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 75
    .line 76
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingTop:I

    .line 77
    .line 78
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingBottom:I

    .line 79
    .line 80
    add-int/2addr v11, v12

    .line 81
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mPaddingWidth:I

    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    check-cast v13, Landroid/view/View;

    .line 88
    .line 89
    sget-object v14, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    aget v15, v14, v15

    .line 96
    .line 97
    if-eq v15, v4, :cond_c

    .line 98
    .line 99
    const/4 v5, 0x2

    .line 100
    if-eq v15, v5, :cond_b

    .line 101
    .line 102
    const/4 v5, 0x3

    .line 103
    if-eq v15, v5, :cond_a

    .line 104
    .line 105
    const/4 v5, 0x4

    .line 106
    if-eq v15, v5, :cond_4

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :cond_4
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 112
    .line 113
    const/4 v9, -0x2

    .line 114
    invoke-static {v5, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 119
    .line 120
    if-ne v9, v4, :cond_5

    .line 121
    .line 122
    move v9, v4

    .line 123
    goto :goto_1

    .line 124
    :cond_5
    const/4 v9, 0x0

    .line 125
    :goto_1
    iget v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 126
    .line 127
    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    .line 128
    .line 129
    if-eq v12, v15, :cond_6

    .line 130
    .line 131
    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    .line 132
    .line 133
    if-ne v12, v15, :cond_d

    .line 134
    .line 135
    :cond_6
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v15

    .line 143
    if-ne v12, v15, :cond_7

    .line 144
    .line 145
    move v12, v4

    .line 146
    goto :goto_2

    .line 147
    :cond_7
    const/4 v12, 0x0

    .line 148
    :goto_2
    iget v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 149
    .line 150
    sget v4, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    .line 151
    .line 152
    if-eq v15, v4, :cond_9

    .line 153
    .line 154
    if-eqz v9, :cond_9

    .line 155
    .line 156
    if-eqz v9, :cond_8

    .line 157
    .line 158
    if-nez v12, :cond_9

    .line 159
    .line 160
    :cond_8
    instance-of v4, v13, Landroidx/constraintlayout/widget/Placeholder;

    .line 161
    .line 162
    if-nez v4, :cond_9

    .line 163
    .line 164
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_d

    .line 169
    .line 170
    :cond_9
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    const/high16 v5, 0x40000000    # 2.0f

    .line 175
    .line 176
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    :goto_3
    move v5, v4

    .line 181
    goto :goto_4

    .line 182
    :cond_a
    const/high16 v5, 0x40000000    # 2.0f

    .line 183
    .line 184
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalMargin()I

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    add-int/2addr v9, v12

    .line 191
    const/4 v12, -0x1

    .line 192
    invoke-static {v4, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    goto :goto_3

    .line 197
    :cond_b
    const/high16 v5, 0x40000000    # 2.0f

    .line 198
    .line 199
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutWidthSpec:I

    .line 200
    .line 201
    const/4 v9, -0x2

    .line 202
    invoke-static {v4, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    goto :goto_3

    .line 207
    :cond_c
    const/high16 v5, 0x40000000    # 2.0f

    .line 208
    .line 209
    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    goto :goto_3

    .line 214
    :cond_d
    :goto_4
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    aget v4, v14, v4

    .line 219
    .line 220
    const/4 v9, 0x1

    .line 221
    if-eq v4, v9, :cond_16

    .line 222
    .line 223
    const/4 v12, 0x2

    .line 224
    if-eq v4, v12, :cond_15

    .line 225
    .line 226
    const/4 v10, 0x3

    .line 227
    if-eq v4, v10, :cond_14

    .line 228
    .line 229
    const/4 v10, 0x4

    .line 230
    if-eq v4, v10, :cond_e

    .line 231
    .line 232
    const/4 v4, 0x0

    .line 233
    goto :goto_7

    .line 234
    :cond_e
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 235
    .line 236
    const/4 v10, -0x2

    .line 237
    invoke-static {v4, v11, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 242
    .line 243
    if-ne v10, v9, :cond_f

    .line 244
    .line 245
    const/4 v9, 0x1

    .line 246
    goto :goto_5

    .line 247
    :cond_f
    const/4 v9, 0x0

    .line 248
    :goto_5
    iget v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 249
    .line 250
    sget v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    .line 251
    .line 252
    if-eq v10, v11, :cond_10

    .line 253
    .line 254
    sget v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    .line 255
    .line 256
    if-ne v10, v11, :cond_17

    .line 257
    .line 258
    :cond_10
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 259
    .line 260
    .line 261
    move-result v10

    .line 262
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    if-ne v10, v11, :cond_11

    .line 267
    .line 268
    const/4 v10, 0x1

    .line 269
    goto :goto_6

    .line 270
    :cond_11
    const/4 v10, 0x0

    .line 271
    :goto_6
    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 272
    .line 273
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    .line 274
    .line 275
    if-eq v11, v12, :cond_13

    .line 276
    .line 277
    if-eqz v9, :cond_13

    .line 278
    .line 279
    if-eqz v9, :cond_12

    .line 280
    .line 281
    if-nez v10, :cond_13

    .line 282
    .line 283
    :cond_12
    instance-of v9, v13, Landroidx/constraintlayout/widget/Placeholder;

    .line 284
    .line 285
    if-nez v9, :cond_13

    .line 286
    .line 287
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    if-eqz v9, :cond_17

    .line 292
    .line 293
    :cond_13
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    const/high16 v9, 0x40000000    # 2.0f

    .line 298
    .line 299
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    goto :goto_7

    .line 304
    :cond_14
    const/high16 v9, 0x40000000    # 2.0f

    .line 305
    .line 306
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 307
    .line 308
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalMargin()I

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    add-int/2addr v10, v11

    .line 313
    const/4 v12, -0x1

    .line 314
    invoke-static {v4, v10, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    goto :goto_7

    .line 319
    :cond_15
    const/high16 v9, 0x40000000    # 2.0f

    .line 320
    .line 321
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->mLayoutHeightSpec:I

    .line 322
    .line 323
    const/4 v10, -0x2

    .line 324
    invoke-static {v4, v11, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    goto :goto_7

    .line 329
    :cond_16
    const/high16 v9, 0x40000000    # 2.0f

    .line 330
    .line 331
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    :cond_17
    :goto_7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 340
    .line 341
    if-eqz v9, :cond_18

    .line 342
    .line 343
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 344
    .line 345
    invoke-static {v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    .line 346
    .line 347
    .line 348
    move-result v10

    .line 349
    const/16 v11, 0x100

    .line 350
    .line 351
    invoke-static {v10, v11}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 352
    .line 353
    .line 354
    move-result v10

    .line 355
    if-eqz v10, :cond_18

    .line 356
    .line 357
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 358
    .line 359
    .line 360
    move-result v10

    .line 361
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 362
    .line 363
    .line 364
    move-result v11

    .line 365
    if-ne v10, v11, :cond_18

    .line 366
    .line 367
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 368
    .line 369
    .line 370
    move-result v10

    .line 371
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    if-ge v10, v11, :cond_18

    .line 376
    .line 377
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 378
    .line 379
    .line 380
    move-result v10

    .line 381
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 382
    .line 383
    .line 384
    move-result v11

    .line 385
    if-ne v10, v11, :cond_18

    .line 386
    .line 387
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 388
    .line 389
    .line 390
    move-result v10

    .line 391
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 392
    .line 393
    .line 394
    move-result v9

    .line 395
    if-ge v10, v9, :cond_18

    .line 396
    .line 397
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    .line 398
    .line 399
    .line 400
    move-result v9

    .line 401
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    .line 402
    .line 403
    .line 404
    move-result v10

    .line 405
    if-ne v9, v10, :cond_18

    .line 406
    .line 407
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 408
    .line 409
    .line 410
    move-result v9

    .line 411
    if-nez v9, :cond_18

    .line 412
    .line 413
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLastHorizontalMeasureSpec()I

    .line 414
    .line 415
    .line 416
    move-result v9

    .line 417
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 418
    .line 419
    .line 420
    move-result v10

    .line 421
    invoke-direct {v0, v9, v5, v10}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 422
    .line 423
    .line 424
    move-result v9

    .line 425
    if-eqz v9, :cond_18

    .line 426
    .line 427
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLastVerticalMeasureSpec()I

    .line 428
    .line 429
    .line 430
    move-result v9

    .line 431
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 432
    .line 433
    .line 434
    move-result v10

    .line 435
    invoke-direct {v0, v9, v4, v10}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 436
    .line 437
    .line 438
    move-result v9

    .line 439
    if-eqz v9, :cond_18

    .line 440
    .line 441
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 446
    .line 447
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 452
    .line 453
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    iput v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 458
    .line 459
    return-void

    .line 460
    :cond_18
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 461
    .line 462
    if-ne v3, v9, :cond_19

    .line 463
    .line 464
    const/4 v10, 0x1

    .line 465
    goto :goto_8

    .line 466
    :cond_19
    const/4 v10, 0x0

    .line 467
    :goto_8
    if-ne v8, v9, :cond_1a

    .line 468
    .line 469
    const/4 v9, 0x1

    .line 470
    goto :goto_9

    .line 471
    :cond_1a
    const/4 v9, 0x0

    .line 472
    :goto_9
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 473
    .line 474
    if-eq v8, v11, :cond_1c

    .line 475
    .line 476
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 477
    .line 478
    if-ne v8, v12, :cond_1b

    .line 479
    .line 480
    goto :goto_a

    .line 481
    :cond_1b
    const/4 v8, 0x0

    .line 482
    goto :goto_b

    .line 483
    :cond_1c
    :goto_a
    const/4 v8, 0x1

    .line 484
    :goto_b
    if-eq v3, v11, :cond_1e

    .line 485
    .line 486
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 487
    .line 488
    if-ne v3, v11, :cond_1d

    .line 489
    .line 490
    goto :goto_c

    .line 491
    :cond_1d
    const/4 v3, 0x0

    .line 492
    goto :goto_d

    .line 493
    :cond_1e
    :goto_c
    const/4 v3, 0x1

    .line 494
    :goto_d
    const/4 v11, 0x0

    .line 495
    if-eqz v10, :cond_1f

    .line 496
    .line 497
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 498
    .line 499
    cmpl-float v12, v12, v11

    .line 500
    .line 501
    if-lez v12, :cond_1f

    .line 502
    .line 503
    const/4 v12, 0x1

    .line 504
    goto :goto_e

    .line 505
    :cond_1f
    const/4 v12, 0x0

    .line 506
    :goto_e
    if-eqz v9, :cond_20

    .line 507
    .line 508
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 509
    .line 510
    cmpl-float v11, v14, v11

    .line 511
    .line 512
    if-lez v11, :cond_20

    .line 513
    .line 514
    const/4 v11, 0x1

    .line 515
    goto :goto_f

    .line 516
    :cond_20
    const/4 v11, 0x0

    .line 517
    :goto_f
    if-nez v13, :cond_21

    .line 518
    .line 519
    goto/16 :goto_1f

    .line 520
    .line 521
    :cond_21
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 522
    .line 523
    .line 524
    move-result-object v14

    .line 525
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 526
    .line 527
    iget v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 528
    .line 529
    move/from16 v16, v3

    .line 530
    .line 531
    sget v3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    .line 532
    .line 533
    if-eq v15, v3, :cond_23

    .line 534
    .line 535
    sget v3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    .line 536
    .line 537
    if-eq v15, v3, :cond_23

    .line 538
    .line 539
    if-eqz v10, :cond_23

    .line 540
    .line 541
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 542
    .line 543
    if-nez v3, :cond_23

    .line 544
    .line 545
    if-eqz v9, :cond_23

    .line 546
    .line 547
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 548
    .line 549
    if-eqz v3, :cond_22

    .line 550
    .line 551
    goto :goto_10

    .line 552
    :cond_22
    move-wide/from16 v19, v6

    .line 553
    .line 554
    const/4 v4, 0x0

    .line 555
    const/4 v10, 0x0

    .line 556
    const/4 v12, -0x1

    .line 557
    const/4 v15, 0x0

    .line 558
    goto/16 :goto_1b

    .line 559
    .line 560
    :cond_23
    :goto_10
    instance-of v3, v13, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 561
    .line 562
    if-eqz v3, :cond_24

    .line 563
    .line 564
    instance-of v3, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 565
    .line 566
    if-eqz v3, :cond_24

    .line 567
    .line 568
    move-object v3, v1

    .line 569
    check-cast v3, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 570
    .line 571
    move-object v9, v13

    .line 572
    check-cast v9, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 573
    .line 574
    invoke-virtual {v9, v3, v5, v4}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    .line 575
    .line 576
    .line 577
    goto :goto_11

    .line 578
    :cond_24
    invoke-virtual {v13, v5, v4}, Landroid/view/View;->measure(II)V

    .line 579
    .line 580
    .line 581
    :goto_11
    invoke-virtual {v1, v5, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 589
    .line 590
    .line 591
    move-result v9

    .line 592
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    .line 593
    .line 594
    .line 595
    move-result v10

    .line 596
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 597
    .line 598
    if-lez v15, :cond_25

    .line 599
    .line 600
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    .line 601
    .line 602
    .line 603
    move-result v15

    .line 604
    :goto_12
    move/from16 v17, v4

    .line 605
    .line 606
    goto :goto_13

    .line 607
    :cond_25
    move v15, v3

    .line 608
    goto :goto_12

    .line 609
    :goto_13
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 610
    .line 611
    if-lez v4, :cond_26

    .line 612
    .line 613
    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    .line 614
    .line 615
    .line 616
    move-result v15

    .line 617
    :cond_26
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 618
    .line 619
    if-lez v4, :cond_27

    .line 620
    .line 621
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    :goto_14
    move/from16 v18, v5

    .line 626
    .line 627
    goto :goto_15

    .line 628
    :cond_27
    move v4, v9

    .line 629
    goto :goto_14

    .line 630
    :goto_15
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 631
    .line 632
    if-lez v5, :cond_28

    .line 633
    .line 634
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    :cond_28
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 639
    .line 640
    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    .line 641
    .line 642
    .line 643
    move-result v5

    .line 644
    move-wide/from16 v19, v6

    .line 645
    .line 646
    const/4 v6, 0x1

    .line 647
    invoke-static {v5, v6}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 648
    .line 649
    .line 650
    move-result v5

    .line 651
    if-nez v5, :cond_2a

    .line 652
    .line 653
    const/high16 v5, 0x3f000000    # 0.5f

    .line 654
    .line 655
    if-eqz v12, :cond_29

    .line 656
    .line 657
    if-eqz v8, :cond_29

    .line 658
    .line 659
    iget v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 660
    .line 661
    int-to-float v7, v4

    .line 662
    mul-float/2addr v7, v6

    .line 663
    add-float/2addr v7, v5

    .line 664
    float-to-int v15, v7

    .line 665
    goto :goto_16

    .line 666
    :cond_29
    if-eqz v11, :cond_2a

    .line 667
    .line 668
    if-eqz v16, :cond_2a

    .line 669
    .line 670
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 671
    .line 672
    int-to-float v6, v15

    .line 673
    div-float/2addr v6, v4

    .line 674
    add-float/2addr v6, v5

    .line 675
    float-to-int v4, v6

    .line 676
    :cond_2a
    :goto_16
    if-ne v3, v15, :cond_2c

    .line 677
    .line 678
    if-eq v9, v4, :cond_2b

    .line 679
    .line 680
    goto :goto_18

    .line 681
    :cond_2b
    :goto_17
    const/4 v12, -0x1

    .line 682
    goto :goto_1b

    .line 683
    :cond_2c
    :goto_18
    const/high16 v5, 0x40000000    # 2.0f

    .line 684
    .line 685
    if-eq v3, v15, :cond_2d

    .line 686
    .line 687
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    goto :goto_19

    .line 692
    :cond_2d
    move/from16 v3, v18

    .line 693
    .line 694
    :goto_19
    if-eq v9, v4, :cond_2e

    .line 695
    .line 696
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 697
    .line 698
    .line 699
    move-result v4

    .line 700
    goto :goto_1a

    .line 701
    :cond_2e
    move/from16 v4, v17

    .line 702
    .line 703
    :goto_1a
    invoke-virtual {v13, v3, v4}, Landroid/view/View;->measure(II)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 710
    .line 711
    .line 712
    move-result v15

    .line 713
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 714
    .line 715
    .line 716
    move-result v4

    .line 717
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    .line 718
    .line 719
    .line 720
    move-result v10

    .line 721
    goto :goto_17

    .line 722
    :goto_1b
    if-eq v10, v12, :cond_2f

    .line 723
    .line 724
    const/4 v9, 0x1

    .line 725
    goto :goto_1c

    .line 726
    :cond_2f
    const/4 v9, 0x0

    .line 727
    :goto_1c
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 728
    .line 729
    if-ne v15, v3, :cond_31

    .line 730
    .line 731
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 732
    .line 733
    if-eq v4, v3, :cond_30

    .line 734
    .line 735
    goto :goto_1d

    .line 736
    :cond_30
    const/4 v5, 0x0

    .line 737
    goto :goto_1e

    .line 738
    :cond_31
    :goto_1d
    const/4 v5, 0x1

    .line 739
    :goto_1e
    iput-boolean v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 740
    .line 741
    iget-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mNeedsBaseline:Z

    .line 742
    .line 743
    if-eqz v3, :cond_32

    .line 744
    .line 745
    const/4 v9, 0x1

    .line 746
    :cond_32
    if-eqz v9, :cond_33

    .line 747
    .line 748
    const/4 v12, -0x1

    .line 749
    if-eq v10, v12, :cond_33

    .line 750
    .line 751
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    .line 752
    .line 753
    .line 754
    move-result v1

    .line 755
    if-eq v1, v10, :cond_33

    .line 756
    .line 757
    const/4 v6, 0x1

    .line 758
    iput-boolean v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 759
    .line 760
    :cond_33
    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 761
    .line 762
    iput v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 763
    .line 764
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 765
    .line 766
    iput v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 767
    .line 768
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 769
    .line 770
    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/core/Metrics;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    if-eqz v1, :cond_34

    .line 775
    .line 776
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 777
    .line 778
    .line 779
    move-result-wide v1

    .line 780
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 781
    .line 782
    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/core/Metrics;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    iget-wide v4, v3, Landroidx/constraintlayout/core/Metrics;->measuresWidgetsDuration:J

    .line 787
    .line 788
    sub-long v1, v1, v19

    .line 789
    .line 790
    add-long/2addr v1, v4

    .line 791
    iput-wide v1, v3, Landroidx/constraintlayout/core/Metrics;->measuresWidgetsDuration:J

    .line 792
    .line 793
    :cond_34
    :goto_1f
    return-void
.end method
