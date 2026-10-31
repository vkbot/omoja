.class public abstract Li9/u0;
.super Li9/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Le9/b;

.field public final b:Le9/b;


# direct methods
.method public constructor <init>(Le9/b;Le9/b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li9/u0;->a:Le9/b;

    .line 5
    .line 6
    iput-object p2, p0, Li9/u0;->b:Le9/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lh9/b;Ljava/lang/Object;)V
    .registers 10

    .line 1
    invoke-virtual {p0, p2}, Li9/a;->h(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p1, v1, v0}, Lh9/f;->beginCollection(Lg9/e;I)Lh9/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p2}, Li9/a;->g(Ljava/lang/Object;)Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3c

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    add-int/lit8 v5, v0, 0x1

    .line 43
    .line 44
    iget-object v6, p0, Li9/u0;->a:Le9/b;

    .line 45
    .line 46
    invoke-interface {p1, v4, v0, v6, v3}, Lh9/d;->encodeSerializableElement(Lg9/e;ILe9/h;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    add-int/lit8 v0, v0, 0x2

    .line 54
    .line 55
    iget-object v4, p0, Li9/u0;->b:Le9/b;

    .line 56
    .line 57
    invoke-interface {p1, v3, v5, v4, v2}, Lh9/d;->encodeSerializableElement(Lg9/e;ILe9/h;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_11

    .line 61
    :cond_3c
    invoke-interface {p1, v1}, Lh9/d;->endStructure(Lg9/e;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final j(Lh9/c;Ljava/lang/Object;II)V
    .registers 9

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-ltz p4, :cond_30

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    mul-int/2addr p4, v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, p4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-static {p4, v0}, Lkotlin/ranges/RangesKt;->d(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getFirst()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getLast()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->getStep()I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    if-lez p4, :cond_22

    .line 32
    .line 33
    if-le v0, v2, :cond_26

    .line 34
    .line 35
    :cond_22
    if-gez p4, :cond_2f

    .line 36
    .line 37
    if-gt v2, v0, :cond_2f

    .line 38
    .line 39
    :cond_26
    :goto_26
    add-int v3, p3, v0

    .line 40
    .line 41
    invoke-virtual {p0, p1, v3, p2, v1}, Li9/u0;->n(Lh9/c;ILjava/util/Map;Z)V

    .line 42
    .line 43
    .line 44
    if-eq v0, v2, :cond_2f

    .line 45
    .line 46
    add-int/2addr v0, p4

    .line 47
    goto :goto_26

    .line 48
    :cond_2f
    return-void

    .line 49
    :cond_30
    const-string p1, "Size must be known in advance when using READ_ALL"

    .line 50
    .line 51
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final bridge synthetic k(Lh9/c;ILjava/lang/Object;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    check-cast p3, Ljava/util/Map;

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Li9/u0;->n(Lh9/c;ILjava/util/Map;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final n(Lh9/c;ILjava/util/Map;Z)V
    .registers 8

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Li9/u0;->a:Le9/b;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-interface {p1, v0, p2, v1, v2}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz p4, :cond_29

    .line 16
    .line 17
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    invoke-interface {p1, p4}, Lh9/c;->decodeElementIndex(Lg9/e;)I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    add-int/lit8 v1, p2, 0x1

    .line 26
    .line 27
    if-ne p4, v1, :cond_1d

    .line 28
    .line 29
    goto :goto_2b

    .line 30
    :cond_1d
    const-string p1, "Value must follow key in a map, index for key: "

    .line 31
    .line 32
    const-string p3, ", returned index for value: "

    .line 33
    .line 34
    invoke-static {p2, p1, p3, p4}, Lai/onnxruntime/a;->g(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    add-int/lit8 p4, p2, 0x1

    .line 43
    .line 44
    :goto_2b
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iget-object v1, p0, Li9/u0;->b:Le9/b;

    .line 49
    .line 50
    if-eqz p2, :cond_4c

    .line 51
    .line 52
    invoke-interface {v1}, Le9/h;->a()Lg9/e;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p2}, Lg9/e;->getKind()Lcom/bumptech/glide/d;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    instance-of p2, p2, Lg9/d;

    .line 61
    .line 62
    if-nez p2, :cond_4c

    .line 63
    .line 64
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p3, v0}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {p1, p2, p4, v1, v2}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_54

    .line 77
    :cond_4c
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-interface {p1, p2, p4, v1, v2}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :goto_54
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    return-void
.end method
