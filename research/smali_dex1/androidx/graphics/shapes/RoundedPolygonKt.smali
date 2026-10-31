.class public final Landroidx/graphics/shapes/RoundedPolygonKt;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a@\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u0007\u001aL\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008H\u0007\u001a\u0019\u0010\u000f\u001a\u00060\u0010j\u0002`\u00112\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u00a2\u0006\u0002\u0010\u0012\u001a(\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "RoundedPolygon",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "source",
        "vertices",
        "",
        "rounding",
        "Landroidx/graphics/shapes/CornerRounding;",
        "perVertexRounding",
        "",
        "centerX",
        "",
        "centerY",
        "numVertices",
        "",
        "radius",
        "calculateCenter",
        "Landroidx/collection/FloatFloatPair;",
        "Landroidx/graphics/shapes/Point;",
        "([F)J",
        "verticesFromNumVerts",
        "graphics-shapes_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 4 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n*L\n1#1,686:1\n1549#2:687\n1620#2,3:688\n67#3:691\n81#3:693\n22#4:692\n22#4:694\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n*L\n356#1:687\n356#1:688,3\n426#1:691\n425#1:693\n426#1:692\n425#1:694\n*E\n"
    }
.end annotation


# direct methods
.method public static final RoundedPolygon(I)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 9
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x3L
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 619
    const/16 v6, 0x3e

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(IF)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 10
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x3L
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 608
    const/16 v6, 0x3c

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(IFF)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 11
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x3L
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 609
    const/16 v6, 0x38

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(IFFF)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 12
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x3L
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 610
    const/16 v6, 0x30

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(IFFFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 13
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x3L
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 611
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 6
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x3L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    invoke-static {p0, p1, p2, p3}, Landroidx/graphics/shapes/RoundedPolygonKt;->verticesFromNumVerts(IFFF)[F

    move-result-object p0

    .line 617
    invoke-static {p0, p4, p5, p2, p3}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    new-instance v0, Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getFeatures$graphics_shapes_release()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Landroidx/graphics/shapes/RoundedPolygon;->getCenterY()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/graphics/shapes/RoundedPolygon;-><init>(Ljava/util/List;FF)V

    return-object v0
.end method

.method public static final RoundedPolygon([F)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 612
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 613
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x1c

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 614
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;F)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;F)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 615
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;FF)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    array-length v3, v0

    .line 18
    const/4 v4, 0x6

    .line 19
    if-lt v3, v4, :cond_259

    .line 20
    .line 21
    array-length v3, v0

    .line 22
    const/4 v4, 0x2

    .line 23
    rem-int/2addr v3, v4

    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq v3, v5, :cond_252

    .line 26
    .line 27
    if-eqz v1, :cond_2c

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    mul-int/2addr v3, v4

    .line 34
    array-length v6, v0

    .line 35
    if-ne v3, v6, :cond_25

    .line 36
    .line 37
    goto :goto_2c

    .line 38
    :cond_25
    const-string v0, "perVertexRounding list should be either null or the same size as the number of vertices (vertices.size / 2)"

    .line 39
    .line 40
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_2a
    const/4 v0, 0x0

    .line 44
    return-object v0

    .line 45
    :cond_2c
    :goto_2c
    new-instance v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    array-length v6, v0

    .line 51
    div-int/2addr v6, v4

    .line 52
    new-instance v7, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    move v9, v8

    .line 59
    :goto_3a
    if-ge v9, v6, :cond_83

    .line 60
    .line 61
    if-eqz v1, :cond_4a

    .line 62
    .line 63
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    check-cast v10, Landroidx/graphics/shapes/CornerRounding;

    .line 68
    .line 69
    if-nez v10, :cond_47

    .line 70
    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    move-object/from16 v18, v10

    .line 73
    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    :goto_4a
    move-object/from16 v18, p1

    .line 76
    .line 77
    :goto_4c
    add-int v10, v9, v6

    .line 78
    .line 79
    sub-int/2addr v10, v5

    .line 80
    rem-int/2addr v10, v6

    .line 81
    mul-int/2addr v10, v4

    .line 82
    add-int/lit8 v20, v9, 0x1

    .line 83
    .line 84
    rem-int v11, v20, v6

    .line 85
    .line 86
    mul-int/2addr v11, v4

    .line 87
    move v12, v11

    .line 88
    new-instance v11, Landroidx/graphics/shapes/RoundedCorner;

    .line 89
    .line 90
    aget v13, v0, v10

    .line 91
    .line 92
    add-int/2addr v10, v5

    .line 93
    aget v10, v0, v10

    .line 94
    .line 95
    invoke-static {v13, v10}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    .line 96
    .line 97
    .line 98
    move-result-wide v13

    .line 99
    mul-int/lit8 v9, v9, 0x2

    .line 100
    .line 101
    aget v10, v0, v9

    .line 102
    .line 103
    add-int/2addr v9, v5

    .line 104
    aget v9, v0, v9

    .line 105
    .line 106
    invoke-static {v10, v9}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    .line 107
    .line 108
    .line 109
    move-result-wide v9

    .line 110
    aget v15, v0, v12

    .line 111
    .line 112
    add-int/2addr v12, v5

    .line 113
    aget v12, v0, v12

    .line 114
    .line 115
    invoke-static {v15, v12}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    .line 116
    .line 117
    .line 118
    move-result-wide v16

    .line 119
    const/16 v19, 0x0

    .line 120
    .line 121
    move-wide v12, v13

    .line 122
    move-wide v14, v9

    .line 123
    invoke-direct/range {v11 .. v19}, Landroidx/graphics/shapes/RoundedCorner;-><init>(JJJLandroidx/graphics/shapes/CornerRounding;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move/from16 v9, v20

    .line 130
    .line 131
    goto :goto_3a

    .line 132
    :cond_83
    invoke-static {v8, v6}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-instance v9, Ljava/util/ArrayList;

    .line 137
    .line 138
    const/16 v10, 0xa

    .line 139
    .line 140
    invoke-static {v1, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    if-eqz v10, :cond_10d

    .line 156
    .line 157
    move-object v10, v1

    .line 158
    check-cast v10, Lkotlin/collections/IntIterator;

    .line 159
    .line 160
    invoke-virtual {v10}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    check-cast v11, Landroidx/graphics/shapes/RoundedCorner;

    .line 169
    .line 170
    invoke-virtual {v11}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedRoundCut()F

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    add-int/lit8 v12, v10, 0x1

    .line 175
    .line 176
    rem-int/2addr v12, v6

    .line 177
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    check-cast v13, Landroidx/graphics/shapes/RoundedCorner;

    .line 182
    .line 183
    invoke-virtual {v13}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedRoundCut()F

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    add-float/2addr v11, v13

    .line 188
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    check-cast v13, Landroidx/graphics/shapes/RoundedCorner;

    .line 193
    .line 194
    invoke-virtual {v13}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedCut()F

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v14

    .line 202
    check-cast v14, Landroidx/graphics/shapes/RoundedCorner;

    .line 203
    .line 204
    invoke-virtual {v14}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedCut()F

    .line 205
    .line 206
    .line 207
    move-result v14

    .line 208
    add-float/2addr v13, v14

    .line 209
    mul-int/2addr v10, v4

    .line 210
    aget v14, v0, v10

    .line 211
    .line 212
    add-int/2addr v10, v5

    .line 213
    aget v10, v0, v10

    .line 214
    .line 215
    mul-int/2addr v12, v4

    .line 216
    aget v15, v0, v12

    .line 217
    .line 218
    add-int/2addr v12, v5

    .line 219
    aget v12, v0, v12

    .line 220
    .line 221
    sub-float/2addr v14, v15

    .line 222
    sub-float/2addr v10, v12

    .line 223
    invoke-static {v14, v10}, Landroidx/graphics/shapes/Utils;->distance(FF)F

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    cmpl-float v12, v11, v10

    .line 228
    .line 229
    if-lez v12, :cond_f5

    .line 230
    .line 231
    div-float/2addr v10, v11

    .line 232
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    const/4 v11, 0x0

    .line 237
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    goto :goto_109

    .line 246
    :cond_f5
    cmpl-float v12, v13, v10

    .line 247
    .line 248
    if-lez v12, :cond_105

    .line 249
    .line 250
    sub-float/2addr v10, v11

    .line 251
    sub-float/2addr v13, v11

    .line 252
    div-float/2addr v10, v13

    .line 253
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    goto :goto_109

    .line 262
    :cond_105
    invoke-static {v2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    :goto_109
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    goto :goto_96

    .line 270
    :cond_10d
    move v1, v8

    .line 271
    :goto_10e
    if-ge v1, v6, :cond_177

    .line 272
    .line 273
    new-instance v2, Landroidx/collection/MutableFloatList;

    .line 274
    .line 275
    invoke-direct {v2, v4}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 276
    .line 277
    .line 278
    move v10, v8

    .line 279
    :goto_116
    if-ge v10, v4, :cond_15f

    .line 280
    .line 281
    add-int v11, v1, v6

    .line 282
    .line 283
    sub-int/2addr v11, v5

    .line 284
    add-int/2addr v11, v10

    .line 285
    rem-int/2addr v11, v6

    .line 286
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    check-cast v11, Lkotlin/Pair;

    .line 291
    .line 292
    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    check-cast v12, Ljava/lang/Number;

    .line 297
    .line 298
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    check-cast v11, Ljava/lang/Number;

    .line 307
    .line 308
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    check-cast v13, Landroidx/graphics/shapes/RoundedCorner;

    .line 317
    .line 318
    invoke-virtual {v13}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedRoundCut()F

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    mul-float/2addr v13, v12

    .line 323
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    check-cast v12, Landroidx/graphics/shapes/RoundedCorner;

    .line 328
    .line 329
    invoke-virtual {v12}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedCut()F

    .line 330
    .line 331
    .line 332
    move-result v12

    .line 333
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v14

    .line 337
    check-cast v14, Landroidx/graphics/shapes/RoundedCorner;

    .line 338
    .line 339
    invoke-virtual {v14}, Landroidx/graphics/shapes/RoundedCorner;->getExpectedRoundCut()F

    .line 340
    .line 341
    .line 342
    move-result v14

    .line 343
    sub-float/2addr v12, v14

    .line 344
    mul-float/2addr v12, v11

    .line 345
    add-float/2addr v12, v13

    .line 346
    invoke-virtual {v2, v12}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 347
    .line 348
    .line 349
    add-int/lit8 v10, v10, 0x1

    .line 350
    .line 351
    goto :goto_116

    .line 352
    :cond_15f
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    check-cast v10, Landroidx/graphics/shapes/RoundedCorner;

    .line 357
    .line 358
    invoke-virtual {v2, v8}, Landroidx/collection/FloatList;->get(I)F

    .line 359
    .line 360
    .line 361
    move-result v11

    .line 362
    invoke-virtual {v2, v5}, Landroidx/collection/FloatList;->get(I)F

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    invoke-virtual {v10, v11, v2}, Landroidx/graphics/shapes/RoundedCorner;->getCubics(FF)Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    add-int/lit8 v1, v1, 0x1

    .line 374
    .line 375
    goto :goto_10e

    .line 376
    :cond_177
    new-instance v1, Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .line 380
    .line 381
    :goto_17c
    if-ge v8, v6, :cond_225

    .line 382
    .line 383
    add-int v2, v8, v6

    .line 384
    .line 385
    sub-int/2addr v2, v5

    .line 386
    rem-int/2addr v2, v6

    .line 387
    add-int/lit8 v9, v8, 0x1

    .line 388
    .line 389
    rem-int v10, v9, v6

    .line 390
    .line 391
    mul-int/lit8 v11, v8, 0x2

    .line 392
    .line 393
    aget v12, v0, v11

    .line 394
    .line 395
    add-int/2addr v11, v5

    .line 396
    aget v11, v0, v11

    .line 397
    .line 398
    invoke-static {v12, v11}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    .line 399
    .line 400
    .line 401
    move-result-wide v11

    .line 402
    mul-int/2addr v2, v4

    .line 403
    aget v13, v0, v2

    .line 404
    .line 405
    add-int/2addr v2, v5

    .line 406
    aget v2, v0, v2

    .line 407
    .line 408
    invoke-static {v13, v2}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    .line 409
    .line 410
    .line 411
    move-result-wide v13

    .line 412
    mul-int/lit8 v2, v10, 0x2

    .line 413
    .line 414
    aget v15, v0, v2

    .line 415
    .line 416
    add-int/2addr v2, v5

    .line 417
    aget v2, v0, v2

    .line 418
    .line 419
    invoke-static {v15, v2}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    .line 420
    .line 421
    .line 422
    move-result-wide v4

    .line 423
    invoke-static {v11, v12, v13, v14}, Landroidx/graphics/shapes/PointKt;->minus-ybeJwSQ(JJ)J

    .line 424
    .line 425
    .line 426
    move-result-wide v13

    .line 427
    invoke-static {v4, v5, v11, v12}, Landroidx/graphics/shapes/PointKt;->minus-ybeJwSQ(JJ)J

    .line 428
    .line 429
    .line 430
    move-result-wide v4

    .line 431
    invoke-static {v13, v14, v4, v5}, Landroidx/graphics/shapes/PointKt;->clockwise-ybeJwSQ(JJ)Z

    .line 432
    .line 433
    .line 434
    move-result v19

    .line 435
    new-instance v13, Landroidx/graphics/shapes/Feature$Corner;

    .line 436
    .line 437
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    move-object v14, v2

    .line 442
    check-cast v14, Ljava/util/List;

    .line 443
    .line 444
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    check-cast v2, Landroidx/graphics/shapes/RoundedCorner;

    .line 449
    .line 450
    invoke-virtual {v2}, Landroidx/graphics/shapes/RoundedCorner;->getCenter-1ufDz9w()J

    .line 451
    .line 452
    .line 453
    move-result-wide v17

    .line 454
    const/16 v20, 0x0

    .line 455
    .line 456
    move-wide v15, v11

    .line 457
    invoke-direct/range {v13 .. v20}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    new-instance v2, Landroidx/graphics/shapes/Feature$Edge;

    .line 464
    .line 465
    sget-object v4, Landroidx/graphics/shapes/Cubic;->Companion:Landroidx/graphics/shapes/Cubic$Companion;

    .line 466
    .line 467
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    check-cast v5, Ljava/util/List;

    .line 472
    .line 473
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    check-cast v5, Landroidx/graphics/shapes/Cubic;

    .line 478
    .line 479
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    check-cast v8, Ljava/util/List;

    .line 488
    .line 489
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v8

    .line 493
    check-cast v8, Landroidx/graphics/shapes/Cubic;

    .line 494
    .line 495
    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    .line 496
    .line 497
    .line 498
    move-result v8

    .line 499
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v11

    .line 503
    check-cast v11, Ljava/util/List;

    .line 504
    .line 505
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v11

    .line 509
    check-cast v11, Landroidx/graphics/shapes/Cubic;

    .line 510
    .line 511
    invoke-virtual {v11}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    .line 512
    .line 513
    .line 514
    move-result v11

    .line 515
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v10

    .line 519
    check-cast v10, Ljava/util/List;

    .line 520
    .line 521
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v10

    .line 525
    check-cast v10, Landroidx/graphics/shapes/Cubic;

    .line 526
    .line 527
    invoke-virtual {v10}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    .line 528
    .line 529
    .line 530
    move-result v10

    .line 531
    invoke-virtual {v4, v5, v8, v11, v10}, Landroidx/graphics/shapes/Cubic$Companion;->straightLine(FFFF)Landroidx/graphics/shapes/Cubic;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    invoke-direct {v2, v4}, Landroidx/graphics/shapes/Feature$Edge;-><init>(Ljava/util/List;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move v8, v9

    .line 546
    const/4 v4, 0x2

    .line 547
    const/4 v5, 0x1

    .line 548
    goto/16 :goto_17c

    .line 549
    .line 550
    :cond_225
    const/4 v2, 0x1

    .line 551
    cmpg-float v3, p3, v2

    .line 552
    .line 553
    if-nez v3, :cond_22b

    .line 554
    .line 555
    goto :goto_22f

    .line 556
    :cond_22b
    cmpg-float v2, p4, v2

    .line 557
    .line 558
    if-nez v2, :cond_234

    .line 559
    .line 560
    :goto_22f
    invoke-static {v0}, Landroidx/graphics/shapes/RoundedPolygonKt;->calculateCenter([F)J

    .line 561
    .line 562
    .line 563
    move-result-wide v2

    .line 564
    goto :goto_238

    .line 565
    :cond_234
    invoke-static/range {p3 .. p4}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    .line 566
    .line 567
    .line 568
    move-result-wide v2

    .line 569
    :goto_238
    const/16 v0, 0x20

    .line 570
    .line 571
    shr-long v4, v2, v0

    .line 572
    .line 573
    long-to-int v0, v4

    .line 574
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    const-wide v4, 0xffffffffL

    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    and-long/2addr v2, v4

    .line 584
    long-to-int v2, v2

    .line 585
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    new-instance v3, Landroidx/graphics/shapes/RoundedPolygon;

    .line 590
    .line 591
    invoke-direct {v3, v1, v0, v2}, Landroidx/graphics/shapes/RoundedPolygon;-><init>(Ljava/util/List;FF)V

    .line 592
    .line 593
    .line 594
    return-object v3

    .line 595
    :cond_252
    const-string v0, "The vertices array should have even size"

    .line 596
    .line 597
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    goto/16 :goto_2a

    .line 601
    .line 602
    :cond_259
    const-string v0, "Polygons must have at least 3 vertices"

    .line 603
    .line 604
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_2a
.end method

.method public static synthetic RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 9

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_6

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_6
    and-int/lit8 p7, p6, 0x4

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p7, :cond_c

    .line 11
    .line 12
    move p2, v0

    .line 13
    :cond_c
    and-int/lit8 p7, p6, 0x8

    .line 14
    .line 15
    if-eqz p7, :cond_11

    .line 16
    .line 17
    move p3, v0

    .line 18
    :cond_11
    and-int/lit8 p7, p6, 0x10

    .line 19
    .line 20
    if-eqz p7, :cond_17

    .line 21
    .line 22
    sget-object p4, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    .line 23
    .line 24
    :cond_17
    and-int/lit8 p6, p6, 0x20

    .line 25
    .line 26
    if-eqz p6, :cond_1c

    .line 27
    .line 28
    const/4 p5, 0x0

    .line 29
    :cond_1c
    move-object p6, p4

    .line 30
    move-object p7, p5

    .line 31
    move p4, p2

    .line 32
    move p5, p3

    .line 33
    move p2, p0

    .line 34
    move p3, p1

    .line 35
    invoke-static/range {p2 .. p7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static synthetic RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    .line 40
    sget-object p1, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p6, p5, 0x8

    const/4 v0, 0x1

    if-eqz p6, :cond_11

    move p3, v0

    :cond_11
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_16

    move p4, v0

    .line 41
    :cond_16
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method private static final calculateCenter([F)J
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v1, v0

    .line 5
    :goto_4
    array-length v3, p0

    .line 6
    if-ge v2, v3, :cond_12

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x1

    .line 9
    .line 10
    aget v4, p0, v2

    .line 11
    .line 12
    add-float/2addr v0, v4

    .line 13
    add-int/lit8 v2, v2, 0x2

    .line 14
    .line 15
    aget v3, p0, v3

    .line 16
    .line 17
    add-float/2addr v1, v3

    .line 18
    goto :goto_4

    .line 19
    :cond_12
    array-length v2, p0

    .line 20
    int-to-float v2, v2

    .line 21
    div-float/2addr v0, v2

    .line 22
    const/4 v2, 0x2

    .line 23
    int-to-float v2, v2

    .line 24
    div-float/2addr v0, v2

    .line 25
    array-length p0, p0

    .line 26
    int-to-float p0, p0

    .line 27
    div-float/2addr v1, p0

    .line 28
    div-float/2addr v1, v2

    .line 29
    invoke-static {v0, v1}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    return-wide v0
.end method

.method private static final verticesFromNumVerts(IFFF)[F
    .registers 16

    .line 1
    mul-int/lit8 v0, p0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v1, p0, :cond_38

    .line 8
    .line 9
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    int-to-float v4, p0

    .line 14
    div-float/2addr v3, v4

    .line 15
    const/4 v4, 0x2

    .line 16
    int-to-float v5, v4

    .line 17
    mul-float/2addr v3, v5

    .line 18
    int-to-float v5, v1

    .line 19
    mul-float v7, v3, v5

    .line 20
    .line 21
    const/4 v10, 0x4

    .line 22
    const/4 v11, 0x0

    .line 23
    const-wide/16 v8, 0x0

    .line 24
    .line 25
    move v6, p1

    .line 26
    invoke-static/range {v6 .. v11}, Landroidx/graphics/shapes/Utils;->radialToCartesian-L6JJ3z0$default(FFJILjava/lang/Object;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    invoke-static {p2, p3}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    .line 31
    .line 32
    .line 33
    move-result-wide v9

    .line 34
    invoke-static {v7, v8, v9, v10}, Landroidx/graphics/shapes/PointKt;->plus-ybeJwSQ(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    add-int/lit8 p1, v2, 0x1

    .line 39
    .line 40
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    aput v3, v0, v2

    .line 45
    .line 46
    add-int/2addr v2, v4

    .line 47
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    aput v3, v0, p1

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    move p1, v6

    .line 56
    goto :goto_6

    .line 57
    :cond_38
    return-object v0
.end method
