.class public final Landroidx/graphics/shapes/FloatMappingKt;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001H\u0000\u001a\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "linearMap",
        "",
        "xValues",
        "Landroidx/collection/FloatList;",
        "yValues",
        "x",
        "progressInRange",
        "",
        "progress",
        "progressFrom",
        "progressTo",
        "validateProgress",
        "",
        "p",
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
        "SMAP\nFloatMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FloatList.kt\nandroidx/collection/FloatList\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1#2:100\n75#3:101\n190#3,3:104\n253#3,4:107\n193#3,2:111\n258#3:113\n195#3:114\n223#4,2:102\n1774#4,4:115\n*S KotlinDebug\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n*L\n42#1:101\n93#1:104,3\n93#1:107,4\n93#1:111,2\n93#1:113\n93#1:114\n42#1:102,2\n96#1:115,4\n*E\n"
    }
.end annotation


# direct methods
.method public static final linearMap(Landroidx/collection/FloatList;Landroidx/collection/FloatList;F)F
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpg-float v0, v0, p2

    .line 9
    .line 10
    if-gtz v0, :cond_84

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpg-float v1, p2, v0

    .line 15
    .line 16
    if-gtz v1, :cond_84

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iget v2, p0, Landroidx/collection/FloatList;->_size:I

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_7d

    .line 34
    .line 35
    move-object v2, v1

    .line 36
    check-cast v2, Lkotlin/collections/IntIterator;

    .line 37
    .line 38
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/lit8 v4, v2, 0x1

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/collection/FloatList;->getSize()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    rem-int v5, v4, v5

    .line 53
    .line 54
    invoke-virtual {p0, v5}, Landroidx/collection/FloatList;->get(I)F

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-static {p2, v3, v5}, Landroidx/graphics/shapes/FloatMappingKt;->progressInRange(FFF)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1c

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/collection/FloatList;->getSize()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    rem-int/2addr v4, v1

    .line 69
    invoke-virtual {p0, v4}, Landroidx/collection/FloatList;->get(I)F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    sub-float/2addr v1, v3

    .line 78
    invoke-static {v1, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {p1, v4}, Landroidx/collection/FloatList;->get(I)F

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {p1, v2}, Landroidx/collection/FloatList;->get(I)F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    sub-float/2addr v3, v4

    .line 91
    invoke-static {v3, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const v4, 0x3a83126f    # 0.001f

    .line 96
    .line 97
    .line 98
    cmpg-float v4, v1, v4

    .line 99
    .line 100
    if-gez v4, :cond_68

    .line 101
    .line 102
    const/high16 p0, 0x3f000000    # 0.5f

    .line 103
    .line 104
    goto :goto_72

    .line 105
    :cond_68
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    sub-float/2addr p2, p0

    .line 110
    invoke-static {p2, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    div-float/2addr p0, v1

    .line 115
    :goto_72
    invoke-virtual {p1, v2}, Landroidx/collection/FloatList;->get(I)F

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    mul-float/2addr v3, p0

    .line 120
    add-float/2addr v3, p1

    .line 121
    invoke-static {v3, v0}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    return p0

    .line 126
    :cond_7d
    const-string p0, "Collection contains no element matching the predicate."

    .line 127
    .line 128
    invoke-static {p0}, Lj1/i;->g(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/4 p0, 0x0

    .line 132
    return p0

    .line 133
    :cond_84
    new-instance p0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string p1, "Invalid progress: "

    .line 136
    .line 137
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1
.end method

.method public static final progressInRange(FFF)Z
    .registers 6

    .line 1
    cmpl-float v0, p2, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ltz v0, :cond_10

    .line 6
    .line 7
    cmpg-float p1, p1, p0

    .line 8
    .line 9
    if-gtz p1, :cond_f

    .line 10
    .line 11
    cmpg-float p0, p0, p2

    .line 12
    .line 13
    if-gtz p0, :cond_f

    .line 14
    .line 15
    return v1

    .line 16
    :cond_f
    return v2

    .line 17
    :cond_10
    cmpl-float p1, p0, p1

    .line 18
    .line 19
    if-gez p1, :cond_1a

    .line 20
    .line 21
    cmpg-float p0, p0, p2

    .line 22
    .line 23
    if-gtz p0, :cond_19

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    return v2

    .line 27
    :cond_1a
    :goto_1a
    return v1
.end method

.method public static final validateProgress(Landroidx/collection/FloatList;)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/collection/FloatList;->content:[F

    .line 7
    .line 8
    iget v2, p0, Landroidx/collection/FloatList;->_size:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_b
    const/4 v5, 0x1

    .line 13
    if-ge v4, v2, :cond_2a

    .line 14
    .line 15
    aget v6, v1, v4

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_22

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    cmpg-float v0, v0, v6

    .line 25
    .line 26
    if-gtz v0, :cond_22

    .line 27
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    .line 30
    cmpg-float v0, v6, v0

    .line 31
    .line 32
    if-gtz v0, :cond_22

    .line 33
    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v5, v3

    .line 36
    :goto_23
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_b

    .line 43
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_87

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/collection/FloatList;->getSize()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v5, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    instance-of v1, v0, Ljava/util/Collection;

    .line 58
    .line 59
    if-eqz v1, :cond_47

    .line 60
    .line 61
    move-object v1, v0

    .line 62
    check-cast v1, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_47

    .line 69
    .line 70
    move v1, v3

    .line 71
    goto :goto_6e

    .line 72
    :cond_47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    move v1, v3

    .line 77
    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6e

    .line 82
    .line 83
    move-object v2, v0

    .line 84
    check-cast v2, Lkotlin/collections/IntIterator;

    .line 85
    .line 86
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    sub-int/2addr v2, v5

    .line 95
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->get(I)F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    cmpg-float v2, v4, v2

    .line 100
    .line 101
    if-gez v2, :cond_4c

    .line 102
    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    if-gez v1, :cond_4c

    .line 106
    .line 107
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    .line 108
    .line 109
    .line 110
    goto :goto_4c

    .line 111
    :cond_6e
    :goto_6e
    if-gt v1, v5, :cond_71

    .line 112
    .line 113
    move v3, v5

    .line 114
    :cond_71
    if-eqz v3, :cond_74

    .line 115
    .line 116
    return-void

    .line 117
    :cond_74
    const/16 v10, 0x1f

    .line 118
    .line 119
    const/4 v11, 0x0

    .line 120
    const/4 v5, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v8, 0x0

    .line 124
    const/4 v9, 0x0

    .line 125
    move-object v4, p0

    .line 126
    invoke-static/range {v4 .. v11}, Landroidx/collection/FloatList;->joinToString$default(Landroidx/collection/FloatList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string v0, "FloatMapping - Progress wraps more than once: "

    .line 131
    .line 132
    invoke-static {p0, v0}, Ll9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_87
    move-object v1, p0

    .line 137
    const/16 v7, 0x1f

    .line 138
    .line 139
    const/4 v8, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v4, 0x0

    .line 143
    const/4 v5, 0x0

    .line 144
    const/4 v6, 0x0

    .line 145
    invoke-static/range {v1 .. v8}, Landroidx/collection/FloatList;->joinToString$default(Landroidx/collection/FloatList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILjava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    const-string v0, "FloatMapping - Progress outside of range: "

    .line 150
    .line 151
    invoke-static {p0, v0}, Ll9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
