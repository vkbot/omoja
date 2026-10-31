.class public final Li9/r1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le9/b;


# instance fields
.field public final a:Le9/b;

.field public final b:Le9/b;

.field public final c:Le9/b;

.field public final d:Lg9/f;


# direct methods
.method public constructor <init>(Le9/b;Le9/b;Le9/b;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li9/r1;->a:Le9/b;

    .line 5
    .line 6
    iput-object p2, p0, Li9/r1;->b:Le9/b;

    .line 7
    .line 8
    iput-object p3, p0, Li9/r1;->c:Le9/b;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Lg9/e;

    .line 12
    .line 13
    new-instance p2, Ld9/h;

    .line 14
    .line 15
    const/4 p3, 0x5

    .line 16
    invoke-direct {p2, p3, p0}, Ld9/h;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const-string p3, "kotlin.Triple"

    .line 20
    .line 21
    invoke-static {p3, p1, p2}, Lcom/bumptech/glide/c;->a(Ljava/lang/String;[Lg9/e;Lkotlin/jvm/functions/Function1;)Lg9/f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Li9/r1;->d:Lg9/f;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()Lg9/e;
    .registers 2

    .line 1
    iget-object v0, p0, Li9/r1;->d:Lg9/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Lh9/b;Ljava/lang/Object;)V
    .registers 7

    .line 1
    check-cast p2, Lkotlin/Triple;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li9/r1;->d:Lg9/f;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lh9/f;->beginStructure(Lg9/e;)Lh9/d;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v1, p0, Li9/r1;->a:Le9/b;

    .line 13
    .line 14
    invoke-virtual {p2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-interface {p1, v0, v3, v1, v2}, Lh9/d;->encodeSerializableElement(Lg9/e;ILe9/h;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Li9/r1;->b:Le9/b;

    .line 23
    .line 24
    invoke-virtual {p2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-interface {p1, v0, v3, v1, v2}, Lh9/d;->encodeSerializableElement(Lg9/e;ILe9/h;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Li9/r1;->c:Le9/b;

    .line 33
    .line 34
    invoke-virtual {p2}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/4 v2, 0x2

    .line 39
    invoke-interface {p1, v0, v2, v1, p2}, Lh9/d;->encodeSerializableElement(Lg9/e;ILe9/h;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Lh9/d;->endStructure(Lg9/e;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final c(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;
    .registers 16

    .line 1
    iget-object v0, p0, Li9/r1;->d:Lg9/f;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lh9/e;->beginStructure(Lg9/e;)Lh9/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lh9/c;->decodeSequentially()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Li9/r1;->c:Le9/b;

    .line 12
    .line 13
    iget-object v3, p0, Li9/r1;->b:Le9/b;

    .line 14
    .line 15
    iget-object v4, p0, Li9/r1;->a:Le9/b;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    const/4 v8, 0x0

    .line 21
    if-eqz v1, :cond_2b

    .line 22
    .line 23
    invoke-interface {p1, v0, v5, v4, v8}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p1, v0, v7, v3, v8}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {p1, v0, v6, v2, v8}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {p1, v0}, Lh9/c;->endStructure(Lg9/e;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lkotlin/Triple;

    .line 39
    .line 40
    invoke-direct {p1, v1, v3, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2b
    sget-object v1, Li9/d1;->c:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v9, v1

    .line 47
    move-object v10, v9

    .line 48
    move-object v11, v10

    .line 49
    :goto_30
    invoke-interface {p1, v0}, Lh9/c;->decodeElementIndex(Lg9/e;)I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    const/4 v13, -0x1

    .line 54
    if-eq v12, v13, :cond_58

    .line 55
    .line 56
    if-eqz v12, :cond_53

    .line 57
    .line 58
    if-eq v12, v7, :cond_4e

    .line 59
    .line 60
    if-ne v12, v6, :cond_42

    .line 61
    .line 62
    invoke-interface {p1, v0, v6, v2, v8}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    goto :goto_30

    .line 67
    :cond_42
    new-instance p1, Le9/g;

    .line 68
    .line 69
    const-string v0, "Unexpected index "

    .line 70
    .line 71
    invoke-static {v12, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_4e
    invoke-interface {p1, v0, v7, v3, v8}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    goto :goto_30

    .line 84
    :cond_53
    invoke-interface {p1, v0, v5, v4, v8}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    goto :goto_30

    .line 89
    :cond_58
    invoke-interface {p1, v0}, Lh9/c;->endStructure(Lg9/e;)V

    .line 90
    .line 91
    .line 92
    if-eq v9, v1, :cond_77

    .line 93
    .line 94
    if-eq v10, v1, :cond_6f

    .line 95
    .line 96
    if-eq v11, v1, :cond_67

    .line 97
    .line 98
    new-instance p1, Lkotlin/Triple;

    .line 99
    .line 100
    invoke-direct {p1, v9, v10, v11}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_67
    new-instance p1, Le9/g;

    .line 105
    .line 106
    const-string v0, "Element \'third\' is missing"

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_6f
    new-instance p1, Le9/g;

    .line 113
    .line 114
    const-string v0, "Element \'second\' is missing"

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_77
    new-instance p1, Le9/g;

    .line 121
    .line 122
    const-string v0, "Element \'first\' is missing"

    .line 123
    .line 124
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method
