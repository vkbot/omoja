.class Landroidx/cardview/widget/CardViewBaseImpl$1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/cardview/widget/CardViewBaseImpl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/cardview/widget/CardViewBaseImpl;


# direct methods
.method public constructor <init>(Landroidx/cardview/widget/CardViewBaseImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v6, p2

    .line 3
    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    .line 6
    mul-float v1, v1, p3

    .line 7
    .line 8
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sub-float/2addr v2, v1

    .line 13
    const/high16 v7, 0x3f800000    # 1.0f

    .line 14
    .line 15
    sub-float v8, v2, v7

    .line 16
    .line 17
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-float/2addr v2, v1

    .line 22
    sub-float v9, v2, v7

    .line 23
    .line 24
    cmpl-float v1, p3, v7

    .line 25
    .line 26
    if-ltz v1, :cond_0

    .line 27
    .line 28
    const/high16 v1, 0x3f000000    # 0.5f

    .line 29
    .line 30
    add-float v10, p3, v1

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 33
    .line 34
    iget-object v1, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 35
    .line 36
    neg-float v2, v10

    .line 37
    invoke-virtual {v1, v2, v2, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    iget v1, v6, Landroid/graphics/RectF;->left:F

    .line 45
    .line 46
    add-float/2addr v1, v10

    .line 47
    iget v2, v6, Landroid/graphics/RectF;->top:F

    .line 48
    .line 49
    add-float/2addr v2, v10

    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 54
    .line 55
    iget-object v1, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 56
    .line 57
    const/high16 v3, 0x42b40000    # 90.0f

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    const/high16 v2, 0x43340000    # 180.0f

    .line 61
    .line 62
    move-object/from16 v5, p4

    .line 63
    .line 64
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    const/4 v12, 0x0

    .line 68
    invoke-virtual {p1, v8, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    .line 70
    .line 71
    const/high16 v13, 0x42b40000    # 90.0f

    .line 72
    .line 73
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 77
    .line 78
    iget-object v1, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 79
    .line 80
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 90
    .line 91
    iget-object v1, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 92
    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v8, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 103
    .line 104
    iget-object v1, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 105
    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 110
    .line 111
    .line 112
    iget v1, v6, Landroid/graphics/RectF;->left:F

    .line 113
    .line 114
    add-float/2addr v1, v10

    .line 115
    sub-float/2addr v1, v7

    .line 116
    iget v2, v6, Landroid/graphics/RectF;->top:F

    .line 117
    .line 118
    iget v3, v6, Landroid/graphics/RectF;->right:F

    .line 119
    .line 120
    sub-float/2addr v3, v10

    .line 121
    add-float/2addr v3, v7

    .line 122
    add-float v4, v2, v10

    .line 123
    .line 124
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    iget v0, v6, Landroid/graphics/RectF;->left:F

    .line 128
    .line 129
    add-float/2addr v0, v10

    .line 130
    sub-float v1, v0, v7

    .line 131
    .line 132
    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    .line 133
    .line 134
    sub-float v2, v4, v10

    .line 135
    .line 136
    iget v0, v6, Landroid/graphics/RectF;->right:F

    .line 137
    .line 138
    sub-float/2addr v0, v10

    .line 139
    add-float v3, v0, v7

    .line 140
    .line 141
    move-object v0, p1

    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 143
    .line 144
    .line 145
    :cond_0
    iget v1, v6, Landroid/graphics/RectF;->left:F

    .line 146
    .line 147
    iget v0, v6, Landroid/graphics/RectF;->top:F

    .line 148
    .line 149
    add-float v2, v0, p3

    .line 150
    .line 151
    iget v3, v6, Landroid/graphics/RectF;->right:F

    .line 152
    .line 153
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    .line 154
    .line 155
    sub-float v4, v0, p3

    .line 156
    .line 157
    move-object v0, p1

    .line 158
    move-object/from16 v5, p4

    .line 159
    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method
