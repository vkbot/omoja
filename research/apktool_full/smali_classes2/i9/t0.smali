.class public final Li9/t0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le9/b;


# instance fields
.field public final a:Le9/b;

.field public final b:Le9/b;

.field public final synthetic c:I

.field public final d:Lg9/f;


# direct methods
.method public constructor <init>(Le9/b;Le9/b;B)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Li9/t0;->a:Le9/b;

    .line 53
    iput-object p2, p0, Li9/t0;->b:Le9/b;

    return-void
.end method

.method public constructor <init>(Le9/b;Le9/b;I)V
    .locals 3

    .line 1
    iput p3, p0, Li9/t0;->c:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Li9/t0;-><init>(Le9/b;Le9/b;B)V

    .line 8
    .line 9
    .line 10
    sget-object p3, Lg9/j;->f:Lg9/j;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Lg9/e;

    .line 14
    .line 15
    new-instance v1, Li9/s0;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, v2, p1, p2}, Li9/s0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "kotlin.collections.Map.Entry"

    .line 22
    .line 23
    invoke-static {p1, p3, v0, v1}, Lcom/bumptech/glide/c;->b(Ljava/lang/String;Lcom/bumptech/glide/d;[Lg9/e;Lkotlin/jvm/functions/Function1;)Lg9/f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Li9/t0;->d:Lg9/f;

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    const/4 p3, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Li9/t0;-><init>(Le9/b;Le9/b;B)V

    .line 32
    .line 33
    .line 34
    new-array p3, p3, [Lg9/e;

    .line 35
    .line 36
    new-instance v0, Li9/s0;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {v0, v1, p1, p2}, Li9/s0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "kotlin.Pair"

    .line 43
    .line 44
    invoke-static {p1, p3, v0}, Lcom/bumptech/glide/c;->a(Ljava/lang/String;[Lg9/e;Lkotlin/jvm/functions/Function1;)Lg9/f;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Li9/t0;->d:Lg9/f;

    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lg9/e;
    .locals 1

    .line 1
    iget v0, p0, Li9/t0;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li9/t0;->d:Lg9/f;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    iget-object v0, p0, Li9/t0;->d:Lg9/f;

    .line 10
    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lh9/b;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lh9/f;->beginStructure(Lg9/e;)Lh9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Li9/t0;->c:I

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v1, p2

    .line 19
    check-cast v1, Lkotlin/Pair;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :pswitch_0
    move-object v1, p2

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    const/4 v2, 0x0

    .line 40
    iget-object v3, p0, Li9/t0;->a:Le9/b;

    .line 41
    .line 42
    invoke-interface {p1, v0, v2, v3, v1}, Lh9/d;->encodeSerializableElement(Lg9/e;ILe9/h;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v1, p0, Li9/t0;->c:I

    .line 50
    .line 51
    packed-switch v1, :pswitch_data_1

    .line 52
    .line 53
    .line 54
    check-cast p2, Lkotlin/Pair;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    goto :goto_1

    .line 64
    :pswitch_1
    check-cast p2, Ljava/util/Map$Entry;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    :goto_1
    const/4 v1, 0x1

    .line 74
    iget-object v2, p0, Li9/t0;->b:Le9/b;

    .line 75
    .line 76
    invoke-interface {p1, v0, v1, v2, p2}, Lh9/d;->encodeSerializableElement(Lg9/e;ILe9/h;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-interface {p1, p2}, Lh9/d;->endStructure(Lg9/e;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Li9/d1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p1, v1}, Lh9/e;->beginStructure(Lg9/e;)Lh9/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lh9/c;->decodeSequentially()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Li9/t0;->b:Le9/b;

    .line 16
    .line 17
    iget-object v4, p0, Li9/t0;->a:Le9/b;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x1

    .line 21
    const/4 v7, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p1, v0, v5, v4, v7}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {p1, v2, v6, v3, v7}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, v0, v2}, Li9/t0;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move-object v2, v0

    .line 46
    move-object v8, v2

    .line 47
    :goto_0
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-interface {p1, v9}, Lh9/c;->decodeElementIndex(Lg9/e;)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    const/4 v10, -0x1

    .line 56
    if-eq v9, v10, :cond_3

    .line 57
    .line 58
    if-eqz v9, :cond_2

    .line 59
    .line 60
    if-ne v9, v6, :cond_1

    .line 61
    .line 62
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-interface {p1, v8, v6, v3, v7}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance p1, Le9/g;

    .line 72
    .line 73
    const-string v0, "Invalid index: "

    .line 74
    .line 75
    invoke-static {v9, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_2
    invoke-interface {p0}, Le9/h;->a()Lg9/e;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {p1, v2, v5, v4, v7}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    if-eq v2, v0, :cond_5

    .line 93
    .line 94
    if-eq v8, v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0, v2, v8}, Li9/t0;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_1
    invoke-interface {p1, v1}, Lh9/c;->endStructure(Lg9/e;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_4
    new-instance p1, Le9/g;

    .line 105
    .line 106
    const-string v0, "Element \'value\' is missing"

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_5
    new-instance p1, Le9/g;

    .line 113
    .line 114
    const-string v0, "Element \'key\' is missing"

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Li9/t0;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    new-instance v0, Li9/r0;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Li9/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
