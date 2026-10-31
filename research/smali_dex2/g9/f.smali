.class public final Lg9/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lg9/e;
.implements Li9/l;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/bumptech/glide/d;

.field public final c:I

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/HashSet;

.field public final f:[Ljava/lang/String;

.field public final g:[Lg9/e;

.field public final h:[Ljava/util/List;

.field public final i:[Z

.field public final j:Ljava/util/Map;

.field public final k:[Lg9/e;

.field public final l:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/d;ILjava/util/List;Lg9/a;)V
    .registers 6

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lg9/f;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lg9/f;->b:Lcom/bumptech/glide/d;

    .line 10
    .line 11
    iput p3, p0, Lg9/f;->c:I

    .line 12
    .line 13
    iget-object p1, p5, Lg9/a;->b:Ljava/util/List;

    .line 14
    .line 15
    iput-object p1, p0, Lg9/f;->d:Ljava/util/List;

    .line 16
    .line 17
    iget-object p1, p5, Lg9/a;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->x(Ljava/util/ArrayList;)Ljava/util/HashSet;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Lg9/f;->e:Ljava/util/HashSet;

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    new-array p3, p2, [Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, [Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, p0, Lg9/f;->f:[Ljava/lang/String;

    .line 35
    .line 36
    iget-object p3, p5, Lg9/a;->e:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-static {p3}, Li9/d1;->c(Ljava/util/List;)[Lg9/e;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    iput-object p3, p0, Lg9/f;->g:[Lg9/e;

    .line 43
    .line 44
    iget-object p3, p5, Lg9/a;->f:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-array p2, p2, [Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, [Ljava/util/List;

    .line 53
    .line 54
    iput-object p2, p0, Lg9/f;->h:[Ljava/util/List;

    .line 55
    .line 56
    iget-object p2, p5, Lg9/a;->g:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)[Z

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lg9/f;->i:[Z

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->withIndex([Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    .line 69
    .line 70
    const/16 p3, 0xa

    .line 71
    .line 72
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-eqz p3, :cond_72

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    check-cast p3, Lkotlin/collections/IndexedValue;

    .line 94
    .line 95
    invoke-virtual {p3}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p5

    .line 99
    invoke-virtual {p3}, Lkotlin/collections/IndexedValue;->getIndex()I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-static {p5, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_52

    .line 115
    :cond_72
    invoke-static {p2}, Lkotlin/collections/MapsKt;->a(Ljava/util/List;)Ljava/util/Map;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lg9/f;->j:Ljava/util/Map;

    .line 120
    .line 121
    invoke-static {p4}, Li9/d1;->c(Ljava/util/List;)[Lg9/e;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iput-object p1, p0, Lg9/f;->k:[Lg9/e;

    .line 126
    .line 127
    new-instance p1, Le9/d;

    .line 128
    .line 129
    const/4 p2, 0x2

    .line 130
    invoke-direct {p1, p2, p0}, Le9/d;-><init>(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lg9/f;->l:Lkotlin/Lazy;

    .line 138
    .line 139
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lg9/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Lg9/f;->e:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final d()I
    .registers 2

    .line 1
    iget v0, p0, Lg9/f;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final e(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lg9/f;->f:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    if-ne p0, p1, :cond_3

    .line 2
    .line 3
    goto :goto_61

    .line 4
    :cond_3
    instance-of v0, p1, Lg9/f;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    goto :goto_5d

    .line 10
    :cond_9
    move-object v0, p1

    .line 11
    check-cast v0, Lg9/e;

    .line 12
    .line 13
    invoke-interface {v0}, Lg9/e;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lg9/f;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_19

    .line 24
    .line 25
    goto :goto_5d

    .line 26
    :cond_19
    check-cast p1, Lg9/f;

    .line 27
    .line 28
    iget-object v2, p0, Lg9/f;->k:[Lg9/e;

    .line 29
    .line 30
    iget-object p1, p1, Lg9/f;->k:[Lg9/e;

    .line 31
    .line 32
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_26

    .line 37
    .line 38
    goto :goto_5d

    .line 39
    :cond_26
    invoke-interface {v0}, Lg9/e;->d()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget v2, p0, Lg9/f;->c:I

    .line 44
    .line 45
    if-eq v2, p1, :cond_2f

    .line 46
    .line 47
    goto :goto_5d

    .line 48
    :cond_2f
    move p1, v1

    .line 49
    :goto_30
    if-ge p1, v2, :cond_61

    .line 50
    .line 51
    iget-object v3, p0, Lg9/f;->g:[Lg9/e;

    .line 52
    .line 53
    aget-object v4, v3, p1

    .line 54
    .line 55
    invoke-interface {v4}, Lg9/e;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v0, p1}, Lg9/e;->f(I)Lg9/e;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {v5}, Lg9/e;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_49

    .line 72
    .line 73
    goto :goto_5d

    .line 74
    :cond_49
    aget-object v3, v3, p1

    .line 75
    .line 76
    invoke-interface {v3}, Lg9/e;->getKind()Lcom/bumptech/glide/d;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {v0, p1}, Lg9/e;->f(I)Lg9/e;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {v4}, Lg9/e;->getKind()Lcom/bumptech/glide/d;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_5e

    .line 93
    .line 94
    :goto_5d
    return v1

    .line 95
    :cond_5e
    add-int/lit8 p1, p1, 0x1

    .line 96
    .line 97
    goto :goto_30

    .line 98
    :cond_61
    :goto_61
    const/4 p1, 0x1

    .line 99
    return p1
.end method

.method public final f(I)Lg9/e;
    .registers 3

    .line 1
    iget-object v0, p0, Lg9/f;->g:[Lg9/e;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public final g(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg9/f;->i:[Z

    .line 2
    .line 3
    aget-boolean p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public final getKind()Lcom/bumptech/glide/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lg9/f;->b:Lcom/bumptech/glide/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg9/f;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final isInline()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lg9/f;->c:I

    .line 3
    .line 4
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v0, p0, Lg9/f;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "("

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    new-instance v6, Ld9/h;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-direct {v6, v0, p0}, Ld9/h;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/16 v7, 0x18

    .line 23
    .line 24
    const-string v3, ", "

    .line 25
    .line 26
    const-string v5, ")"

    .line 27
    .line 28
    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->l(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
