.class public Lorg/apache/commons/net/nntp/Threader;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/Threadable;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/NntpThreadContainer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1e

    .line 13
    .line 14
    iget-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 15
    .line 16
    if-eqz v3, :cond_1c

    .line 17
    .line 18
    const-string v0, "<Bogus-id:"

    .line 19
    .line 20
    const-string v1, ">"

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-static {v3, v0, v1}, Lai/onnxruntime/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v1, v2

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    iput-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 30
    .line 31
    :cond_1e
    :goto_1e
    if-nez v1, :cond_2a

    .line 32
    .line 33
    new-instance v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 34
    .line 35
    invoke-direct {v1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 39
    .line 40
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_2a
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadReferences()[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    array-length v0, p1

    .line 48
    const/4 v3, 0x0

    .line 49
    move-object v4, v2

    .line 50
    :goto_31
    if-ge v3, v0, :cond_5f

    .line 51
    .line 52
    aget-object v5, p1, v3

    .line 53
    .line 54
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 59
    .line 60
    if-nez v6, :cond_45

    .line 61
    .line 62
    new-instance v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 63
    .line 64
    invoke-direct {v6}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_45
    if-eqz v4, :cond_5b

    .line 71
    .line 72
    iget-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 73
    .line 74
    if-nez v5, :cond_5b

    .line 75
    .line 76
    if-eq v4, v6, :cond_5b

    .line 77
    .line 78
    invoke-virtual {v6, v4}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->findChild(Lorg/apache/commons/net/nntp/NntpThreadContainer;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_5b

    .line 83
    .line 84
    iput-object v4, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 85
    .line 86
    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 87
    .line 88
    iput-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 89
    .line 90
    iput-object v6, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 91
    .line 92
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    move-object v4, v6

    .line 95
    goto :goto_31

    .line 96
    :cond_5f
    if-eqz v4, :cond_6a

    .line 97
    .line 98
    if-eq v4, v1, :cond_69

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->findChild(Lorg/apache/commons/net/nntp/NntpThreadContainer;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6a

    .line 105
    .line 106
    :cond_69
    move-object v4, v2

    .line 107
    :cond_6a
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 108
    .line 109
    if-eqz p1, :cond_a2

    .line 110
    .line 111
    iget-object p1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 112
    .line 113
    move-object p2, v2

    .line 114
    :goto_71
    if-eqz p1, :cond_7c

    .line 115
    .line 116
    if-ne p1, v1, :cond_76

    .line 117
    .line 118
    goto :goto_7c

    .line 119
    :cond_76
    iget-object p2, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 120
    .line 121
    move-object v7, p2

    .line 122
    move-object p2, p1

    .line 123
    move-object p1, v7

    .line 124
    goto :goto_71

    .line 125
    :cond_7c
    :goto_7c
    if-eqz p1, :cond_90

    .line 126
    .line 127
    if-nez p2, :cond_87

    .line 128
    .line 129
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 130
    .line 131
    iget-object p2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 132
    .line 133
    iput-object p2, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 134
    .line 135
    goto :goto_8b

    .line 136
    :cond_87
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 137
    .line 138
    iput-object p1, p2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 139
    .line 140
    :goto_8b
    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 141
    .line 142
    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 143
    .line 144
    goto :goto_a2

    .line 145
    :cond_90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string p2, "Didnt find "

    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p2, " in parent "

    .line 156
    .line 157
    iget-object v0, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 158
    .line 159
    invoke-static {p1, p2, v0}, Lai/onnxruntime/b;->p(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_a2
    :goto_a2
    if-eqz v4, :cond_ac

    .line 164
    .line 165
    iput-object v4, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 166
    .line 167
    iget-object p1, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 168
    .line 169
    iput-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 170
    .line 171
    iput-object v1, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 172
    .line 173
    :cond_ac
    return-void
.end method

.method private findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/NntpThreadContainer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/NntpThreadContainer;",
            ">;)",
            "Lorg/apache/commons/net/nntp/NntpThreadContainer;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_48

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 31
    .line 32
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 33
    .line 34
    if-nez v2, :cond_d

    .line 35
    .line 36
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 37
    .line 38
    if-nez v2, :cond_2e

    .line 39
    .line 40
    iget-object v2, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 41
    .line 42
    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 43
    .line 44
    iput-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 45
    .line 46
    goto :goto_d

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    iget-object v0, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "c.next is "

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_48
    return-object v0
.end method

.method private gatherSubjects(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V
    .registers 11

    .line 1
    iget-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_4
    if-eqz v0, :cond_b

    .line 6
    .line 7
    add-int/lit8 v2, v2, 0x1

    .line 8
    .line 9
    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 10
    .line 11
    goto :goto_4

    .line 12
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    int-to-double v2, v2

    .line 15
    const-wide v4, 0x3ff3333333333333L    # 1.2

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    mul-double/2addr v2, v4

    .line 21
    double-to-int v2, v2

    .line 22
    const v3, 0x3f666666    # 0.9f

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 29
    .line 30
    :goto_1d
    if-eqz v2, :cond_60

    .line 31
    .line 32
    iget-object v3, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 33
    .line 34
    if-nez v3, :cond_27

    .line 35
    .line 36
    iget-object v3, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 37
    .line 38
    iget-object v3, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 39
    .line 40
    :cond_27
    invoke-interface {v3}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_5d

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_34

    .line 51
    .line 52
    goto :goto_5d

    .line 53
    :cond_34
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 58
    .line 59
    if-eqz v4, :cond_58

    .line 60
    .line 61
    iget-object v5, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 62
    .line 63
    if-nez v5, :cond_44

    .line 64
    .line 65
    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 66
    .line 67
    if-nez v5, :cond_58

    .line 68
    .line 69
    :cond_44
    iget-object v4, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 70
    .line 71
    if-eqz v4, :cond_5d

    .line 72
    .line 73
    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_5d

    .line 78
    .line 79
    iget-object v4, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 80
    .line 81
    if-eqz v4, :cond_5d

    .line 82
    .line 83
    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_5d

    .line 88
    .line 89
    :cond_58
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    :cond_5d
    :goto_5d
    iget-object v2, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 95
    .line 96
    goto :goto_1d

    .line 97
    :cond_60
    if-nez v1, :cond_63

    .line 98
    .line 99
    return-void

    .line 100
    :cond_63
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 101
    .line 102
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    move-object v4, v3

    .line 106
    :goto_69
    if-eqz v1, :cond_103

    .line 107
    .line 108
    iget-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 109
    .line 110
    if-nez v5, :cond_73

    .line 111
    .line 112
    iget-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 113
    .line 114
    iget-object v5, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 115
    .line 116
    :cond_73
    invoke-interface {v5}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    if-eqz v5, :cond_f7

    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_81

    .line 127
    .line 128
    goto/16 :goto_f7

    .line 129
    .line 130
    :cond_81
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 135
    .line 136
    if-ne v5, v1, :cond_8b

    .line 137
    .line 138
    goto/16 :goto_f7

    .line 139
    .line 140
    :cond_8b
    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 141
    .line 142
    if-nez v4, :cond_92

    .line 143
    .line 144
    iput-object v6, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 145
    .line 146
    goto :goto_94

    .line 147
    :cond_92
    iput-object v6, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 148
    .line 149
    :goto_94
    iput-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 150
    .line 151
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 152
    .line 153
    if-nez v6, :cond_ba

    .line 154
    .line 155
    iget-object v7, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 156
    .line 157
    if-nez v7, :cond_ba

    .line 158
    .line 159
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 160
    .line 161
    :goto_a0
    if-eqz v6, :cond_a8

    .line 162
    .line 163
    iget-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 164
    .line 165
    if-eqz v7, :cond_a8

    .line 166
    .line 167
    move-object v6, v7

    .line 168
    goto :goto_a0

    .line 169
    :cond_a8
    if-eqz v6, :cond_ae

    .line 170
    .line 171
    iget-object v7, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 172
    .line 173
    iput-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 174
    .line 175
    :cond_ae
    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 176
    .line 177
    :goto_b0
    if-eqz v6, :cond_b7

    .line 178
    .line 179
    iput-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 180
    .line 181
    iget-object v6, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 182
    .line 183
    goto :goto_b0

    .line 184
    :cond_b7
    iput-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 185
    .line 186
    goto :goto_f8

    .line 187
    :cond_ba
    if-eqz v6, :cond_ee

    .line 188
    .line 189
    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 190
    .line 191
    if-eqz v6, :cond_cf

    .line 192
    .line 193
    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_cf

    .line 198
    .line 199
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 200
    .line 201
    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-nez v6, :cond_cf

    .line 206
    .line 207
    goto :goto_ee

    .line 208
    :cond_cf
    new-instance v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 209
    .line 210
    invoke-direct {v6}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 211
    .line 212
    .line 213
    iget-object v7, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 214
    .line 215
    iput-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 216
    .line 217
    iget-object v7, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 218
    .line 219
    iput-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 220
    .line 221
    :goto_dc
    if-eqz v7, :cond_e3

    .line 222
    .line 223
    iput-object v6, v7, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 224
    .line 225
    iget-object v7, v7, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 226
    .line 227
    goto :goto_dc

    .line 228
    :cond_e3
    iput-object v3, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 229
    .line 230
    iput-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 231
    .line 232
    iput-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 233
    .line 234
    iput-object v1, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 235
    .line 236
    iput-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 237
    .line 238
    goto :goto_f8

    .line 239
    :cond_ee
    :goto_ee
    iput-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 240
    .line 241
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 242
    .line 243
    iput-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 244
    .line 245
    iput-object v1, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 246
    .line 247
    goto :goto_f8

    .line 248
    :cond_f7
    :goto_f7
    move-object v4, v1

    .line 249
    :goto_f8
    if-nez v2, :cond_fc

    .line 250
    .line 251
    move-object v1, v3

    .line 252
    goto :goto_fe

    .line 253
    :cond_fc
    iget-object v1, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 254
    .line 255
    :goto_fe
    move-object v8, v2

    .line 256
    move-object v2, v1

    .line 257
    move-object v1, v8

    .line 258
    goto/16 :goto_69

    .line 259
    .line 260
    :cond_103
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 261
    .line 262
    .line 263
    return-void
.end method

.method private pruneEmptyContainers(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V
    .registers 9

    .line 1
    iget-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v3, v2

    .line 7
    :goto_6
    if-eqz v0, :cond_52

    .line 8
    .line 9
    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 10
    .line 11
    if-nez v4, :cond_1b

    .line 12
    .line 13
    iget-object v5, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 14
    .line 15
    if-nez v5, :cond_1b

    .line 16
    .line 17
    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 18
    .line 19
    if-nez v3, :cond_17

    .line 20
    .line 21
    iput-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 22
    .line 23
    goto :goto_19

    .line 24
    :cond_17
    iput-object v0, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 25
    .line 26
    :goto_19
    move-object v0, v1

    .line 27
    goto :goto_4b

    .line 28
    :cond_1b
    if-nez v4, :cond_42

    .line 29
    .line 30
    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 31
    .line 32
    if-nez v4, :cond_27

    .line 33
    .line 34
    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 35
    .line 36
    iget-object v4, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 37
    .line 38
    if-nez v4, :cond_42

    .line 39
    .line 40
    :cond_27
    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 41
    .line 42
    if-nez v3, :cond_2e

    .line 43
    .line 44
    iput-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 45
    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    iput-object v1, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 48
    .line 49
    :goto_30
    move-object v4, v1

    .line 50
    :goto_31
    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 51
    .line 52
    iget-object v6, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 53
    .line 54
    if-eqz v5, :cond_3b

    .line 55
    .line 56
    iput-object v6, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 57
    .line 58
    move-object v4, v5

    .line 59
    goto :goto_31

    .line 60
    :cond_3b
    iput-object v6, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 61
    .line 62
    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 63
    .line 64
    iput-object v0, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 65
    .line 66
    goto :goto_19

    .line 67
    :cond_42
    iget-object v3, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 68
    .line 69
    if-eqz v3, :cond_49

    .line 70
    .line 71
    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    move-object v3, v0

    .line 75
    goto :goto_19

    .line 76
    :goto_4b
    if-nez v0, :cond_4f

    .line 77
    .line 78
    move-object v1, v2

    .line 79
    goto :goto_6

    .line 80
    :cond_4f
    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_52
    return-void
.end method


# virtual methods
.method public thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_23

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/commons/net/nntp/Threadable;

    .line 25
    .line 26
    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->isDummy()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_d

    .line 31
    .line 32
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/net/nntp/Threader;->buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V

    .line 33
    .line 34
    .line 35
    goto :goto_d

    .line 36
    :cond_23
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2a

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2a
    invoke-direct {p0, v1}, Lorg/apache/commons/net/nntp/Threader;->findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->reverseChildren()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->gatherSubjects(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 60
    .line 61
    if-nez v1, :cond_5e

    .line 62
    .line 63
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 64
    .line 65
    :goto_40
    if-eqz v1, :cond_53

    .line 66
    .line 67
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 68
    .line 69
    if-nez v2, :cond_50

    .line 70
    .line 71
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 72
    .line 73
    iget-object v2, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 74
    .line 75
    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->makeDummy()Lorg/apache/commons/net/nntp/Threadable;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 80
    .line 81
    :cond_50
    iget-object v1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 82
    .line 83
    goto :goto_40

    .line 84
    :cond_53
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 85
    .line 86
    if-nez v1, :cond_58

    .line 87
    .line 88
    goto :goto_5a

    .line 89
    :cond_58
    iget-object v0, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 90
    .line 91
    :goto_5a
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->flush()V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_5e
    const-string v0, "root node has a next:"

    .line 96
    .line 97
    invoke-static {p1, v0}, Lai/onnxruntime/b;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    return-object p1
.end method

.method public thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object p1

    return-object p1
.end method

.method public thread([Lorg/apache/commons/net/nntp/Threadable;)Lorg/apache/commons/net/nntp/Threadable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object p1

    return-object p1
.end method
