.class public final Lcom/google/protobuf/i0;
.super Lcom/google/protobuf/j0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/protobuf/a0;

    .line 8
    .line 9
    check-cast p1, Lcom/google/protobuf/b;

    .line 10
    .line 11
    iget-boolean p2, p1, Lcom/google/protobuf/b;->b:Z

    .line 12
    .line 13
    if-eqz p2, :cond_11

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p1, Lcom/google/protobuf/b;->b:Z

    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public final b(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    sget-object v0, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 2
    .line 3
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/google/protobuf/a0;

    .line 8
    .line 9
    invoke-virtual {v0, p4, p1, p2}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    check-cast p4, Lcom/google/protobuf/a0;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v0, :cond_29

    .line 24
    .line 25
    if-lez v2, :cond_29

    .line 26
    .line 27
    move-object v3, v1

    .line 28
    check-cast v3, Lcom/google/protobuf/b;

    .line 29
    .line 30
    iget-boolean v3, v3, Lcom/google/protobuf/b;->b:Z

    .line 31
    .line 32
    if-nez v3, :cond_26

    .line 33
    .line 34
    add-int/2addr v2, v0

    .line 35
    invoke-interface {v1, v2}, Lcom/google/protobuf/a0;->c(I)Lcom/google/protobuf/a0;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_26
    invoke-interface {v1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    :cond_29
    if-lez v0, :cond_2c

    .line 43
    .line 44
    move-object p4, v1

    .line 45
    :cond_2c
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final c(Ljava/lang/Object;J)Ljava/util/List;
    .registers 6

    .line 1
    sget-object v0, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/protobuf/a0;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/google/protobuf/b;

    .line 11
    .line 12
    iget-boolean v1, v1, Lcom/google/protobuf/b;->b:Z

    .line 13
    .line 14
    if-nez v1, :cond_21

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_18

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    mul-int/lit8 v1, v1, 0x2

    .line 26
    .line 27
    :goto_1a
    invoke-interface {v0, v1}, Lcom/google/protobuf/a0;->c(I)Lcom/google/protobuf/a0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p2, p3, p1, v0}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_21
    return-object v0
.end method
