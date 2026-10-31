.class public abstract Li9/f1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lg9/e;
.implements Li9/l;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Li9/i0;

.field public final c:I

.field public d:I

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/util/List;

.field public final g:[Z

.field public h:Ljava/util/Map;

.field public final i:Lkotlin/Lazy;

.field public final j:Lkotlin/Lazy;

.field public final k:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Li9/i0;I)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Li9/f1;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Li9/f1;->b:Li9/i0;

    .line 10
    .line 11
    iput p3, p0, Li9/f1;->c:I

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Li9/f1;->d:I

    .line 15
    .line 16
    new-array p1, p3, [Ljava/lang/String;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    :goto_12
    if-ge p2, p3, :cond_1b

    .line 20
    .line 21
    const-string v0, "[UNINITIALIZED]"

    .line 22
    .line 23
    aput-object v0, p1, p2

    .line 24
    .line 25
    add-int/lit8 p2, p2, 0x1

    .line 26
    .line 27
    goto :goto_12

    .line 28
    :cond_1b
    iput-object p1, p0, Li9/f1;->e:[Ljava/lang/String;

    .line 29
    .line 30
    iget p1, p0, Li9/f1;->c:I

    .line 31
    .line 32
    new-array p2, p1, [Ljava/util/List;

    .line 33
    .line 34
    iput-object p2, p0, Li9/f1;->f:[Ljava/util/List;

    .line 35
    .line 36
    new-array p1, p1, [Z

    .line 37
    .line 38
    iput-object p1, p0, Li9/f1;->g:[Z

    .line 39
    .line 40
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Li9/f1;->h:Ljava/util/Map;

    .line 45
    .line 46
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 47
    .line 48
    new-instance p2, Li9/e1;

    .line 49
    .line 50
    const/4 p3, 0x1

    .line 51
    invoke-direct {p2, p0, p3}, Li9/e1;-><init>(Li9/f1;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iput-object p2, p0, Li9/f1;->i:Lkotlin/Lazy;

    .line 59
    .line 60
    new-instance p2, Li9/e1;

    .line 61
    .line 62
    const/4 p3, 0x2

    .line 63
    invoke-direct {p2, p0, p3}, Li9/e1;-><init>(Li9/f1;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iput-object p2, p0, Li9/f1;->j:Lkotlin/Lazy;

    .line 71
    .line 72
    new-instance p2, Li9/e1;

    .line 73
    .line 74
    const/4 p3, 0x0

    .line 75
    invoke-direct {p2, p0, p3}, Li9/e1;-><init>(Li9/f1;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Li9/f1;->k:Lkotlin/Lazy;

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Li9/f1;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Li9/f1;->h:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    iget v0, p0, Li9/f1;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final e(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Li9/f1;->e:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public f(I)Lg9/e;
    .registers 3

    .line 1
    iget-object v0, p0, Li9/f1;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Le9/b;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    invoke-interface {p1}, Le9/h;->a()Lg9/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final g(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Li9/f1;->g:[Z

    .line 2
    .line 3
    aget-boolean p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public getKind()Lcom/bumptech/glide/d;
    .registers 2

    .line 1
    sget-object v0, Lg9/j;->d:Lg9/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Li9/f1;->k:Lkotlin/Lazy;

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

.method public isInline()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Li9/f1;->c:I

    .line 3
    .line 4
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Li9/f1;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x28

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-instance v6, Ld9/h;

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    invoke-direct {v6, v0, p0}, Ld9/h;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/16 v7, 0x18

    .line 34
    .line 35
    const-string v3, ", "

    .line 36
    .line 37
    const-string v5, ")"

    .line 38
    .line 39
    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->l(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
