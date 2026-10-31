.class public abstract Li9/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le9/b;


# virtual methods
.method public final b(Lh9/b;Ljava/lang/Object;)V
    .registers 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lh9/f;->getSerializersModule()Lj9/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    move-object v1, p0

    .line 9
    check-cast v1, Le9/e;

    .line 10
    .line 11
    check-cast v0, Lj9/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v2, v1, Le9/e;->a:Lkotlin/reflect/KClass;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-interface {v2, p2}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    if-nez v3, :cond_1d

    .line 28
    .line 29
    goto :goto_58

    .line 30
    :cond_1d
    iget-object v3, v0, Lj9/a;->b:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/util/Map;

    .line 37
    .line 38
    if-eqz v3, :cond_36

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Le9/b;

    .line 53
    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move-object v3, v5

    .line 56
    :goto_37
    if-eqz v3, :cond_3a

    .line 57
    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move-object v3, v5

    .line 60
    :goto_3b
    if-eqz v3, :cond_3e

    .line 61
    .line 62
    goto :goto_59

    .line 63
    :cond_3e
    iget-object v0, v0, Lj9/a;->c:Ljava/util/Map;

    .line 64
    .line 65
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_4d

    .line 74
    .line 75
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 76
    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move-object v0, v5

    .line 79
    :goto_4e
    if-eqz v0, :cond_58

    .line 80
    .line 81
    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v3, v0

    .line 86
    check-cast v3, Le9/h;

    .line 87
    .line 88
    goto :goto_59

    .line 89
    :cond_58
    :goto_58
    move-object v3, v5

    .line 90
    :goto_59
    if-nez v3, :cond_74

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    if-nez p2, :cond_70

    .line 108
    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    :cond_70
    invoke-static {p2, v2}, Li9/d1;->i(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 114
    .line 115
    .line 116
    throw v5

    .line 117
    :cond_74
    invoke-virtual {v1}, Le9/e;->a()Lg9/e;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {p1, v0}, Lh9/f;->beginStructure(Lg9/e;)Lh9/d;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v1}, Le9/e;->a()Lg9/e;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v3}, Le9/h;->a()Lg9/e;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-interface {v5}, Lg9/e;->a()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    const/4 v6, 0x0

    .line 138
    invoke-interface {p1, v2, v6, v5}, Lh9/d;->encodeStringElement(Lg9/e;ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Le9/e;->a()Lg9/e;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {p1, v1, v4, v3, p2}, Lh9/d;->encodeSerializableElement(Lg9/e;ILe9/h;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v0}, Lh9/d;->endStructure(Lg9/e;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final c(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;
    .registers 10

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Le9/e;

    .line 3
    .line 4
    invoke-virtual {v0}, Le9/e;->a()Lg9/e;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {p1, v1}, Lh9/e;->beginStructure(Lg9/e;)Lh9/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 13
    .line 14
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lh9/c;->decodeSequentially()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v3, :cond_2e

    .line 24
    .line 25
    invoke-virtual {v0}, Le9/e;->a()Lg9/e;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-interface {p1, v2, v3}, Lh9/c;->decodeStringElement(Lg9/e;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {p0, p1, v2}, Lcom/bumptech/glide/c;->j(Li9/b;Lh9/c;Ljava/lang/String;)Le9/a;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0}, Le9/e;->a()Lg9/e;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p1, v0, v4, v2, v5}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_8a

    .line 47
    :cond_2e
    move-object v3, v5

    .line 48
    :goto_2f
    invoke-virtual {v0}, Le9/e;->a()Lg9/e;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-interface {p1, v6}, Lh9/c;->decodeElementIndex(Lg9/e;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v7, -0x1

    .line 57
    if-eq v6, v7, :cond_87

    .line 58
    .line 59
    if-eqz v6, :cond_7c

    .line 60
    .line 61
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    if-eq v6, v4, :cond_62

    .line 64
    .line 65
    new-instance p1, Le9/g;

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, "Invalid index in polymorphic deserialization of "

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    if-nez v3, :cond_4f

    .line 77
    .line 78
    const-string v3, "unknown class"

    .line 79
    .line 80
    :cond_4f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "\n Expected 0, 1 or DECODE_DONE(-1), but found "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_62
    if-eqz v3, :cond_75

    .line 100
    .line 101
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v3, Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {p0, p1, v3}, Lcom/bumptech/glide/c;->j(Li9/b;Lh9/c;Ljava/lang/String;)Le9/a;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v0}, Le9/e;->a()Lg9/e;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-interface {p1, v7, v6, v3, v5}, Lh9/c;->decodeSerializableElement(Lg9/e;ILe9/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    goto :goto_2f

    .line 118
    :cond_75
    const-string p1, "Cannot read polymorphic value before its type token"

    .line 119
    .line 120
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_7a
    const/4 p1, 0x0

    .line 124
    return-object p1

    .line 125
    :cond_7c
    invoke-virtual {v0}, Le9/e;->a()Lg9/e;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-interface {p1, v7, v6}, Lh9/c;->decodeStringElement(Lg9/e;I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    iput-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 134
    .line 135
    goto :goto_2f

    .line 136
    :cond_87
    if-eqz v3, :cond_8e

    .line 137
    .line 138
    move-object v0, v3

    .line 139
    :goto_8a
    invoke-interface {p1, v1}, Lh9/c;->endStructure(Lg9/e;)V

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_8e
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p1, Ljava/lang/String;

    .line 146
    .line 147
    const-string v0, "Polymorphic value has not been read for class "

    .line 148
    .line 149
    invoke-static {p1, v0}, Ll9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_7a
.end method
