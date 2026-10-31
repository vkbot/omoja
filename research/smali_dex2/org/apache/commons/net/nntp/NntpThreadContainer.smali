.class final Lorg/apache/commons/net/nntp/NntpThreadContainer;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

.field next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

.field parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

.field threadable:Lorg/apache/commons/net/nntp/Threadable;


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


# virtual methods
.method public findChild(Lorg/apache/commons/net/nntp/NntpThreadContainer;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_6
    if-ne v0, p1, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_a
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->findChild(Lorg/apache/commons/net/nntp/NntpThreadContainer;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public flush()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_21

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    goto :goto_21

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "no threadable in "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_21
    :goto_21
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 36
    .line 37
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 38
    .line 39
    if-eqz v1, :cond_33

    .line 40
    .line 41
    iget-object v2, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 42
    .line 43
    if-nez v2, :cond_2e

    .line 44
    .line 45
    move-object v2, v0

    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    iget-object v2, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 48
    .line 49
    :goto_30
    invoke-interface {v1, v2}, Lorg/apache/commons/net/nntp/Threadable;->setChild(Lorg/apache/commons/net/nntp/Threadable;)V

    .line 50
    .line 51
    .line 52
    :cond_33
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 53
    .line 54
    if-eqz v1, :cond_3c

    .line 55
    .line 56
    invoke-virtual {v1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->flush()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 60
    .line 61
    :cond_3c
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 62
    .line 63
    if-eqz v1, :cond_4b

    .line 64
    .line 65
    iget-object v2, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 66
    .line 67
    if-nez v2, :cond_46

    .line 68
    .line 69
    move-object v2, v0

    .line 70
    goto :goto_48

    .line 71
    :cond_46
    iget-object v2, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 72
    .line 73
    :goto_48
    invoke-interface {v1, v2}, Lorg/apache/commons/net/nntp/Threadable;->setNext(Lorg/apache/commons/net/nntp/Threadable;)V

    .line 74
    .line 75
    .line 76
    :cond_4b
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 77
    .line 78
    if-eqz v1, :cond_54

    .line 79
    .line 80
    invoke-virtual {v1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->flush()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 84
    .line 85
    :cond_54
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 86
    .line 87
    return-void
.end method

.method public reverseChildren()V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_21

    .line 4
    .line 5
    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v3, v2

    .line 9
    :goto_8
    if-eqz v0, :cond_17

    .line 10
    .line 11
    iput-object v3, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 12
    .line 13
    if-nez v1, :cond_10

    .line 14
    .line 15
    move-object v3, v2

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    iget-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 18
    .line 19
    :goto_12
    move-object v4, v3

    .line 20
    move-object v3, v0

    .line 21
    move-object v0, v1

    .line 22
    move-object v1, v4

    .line 23
    goto :goto_8

    .line 24
    :cond_17
    iput-object v3, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 25
    .line 26
    :goto_19
    if-eqz v3, :cond_21

    .line 27
    .line 28
    invoke-virtual {v3}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->reverseChildren()V

    .line 29
    .line 30
    .line 31
    iget-object v3, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 32
    .line 33
    goto :goto_19

    .line 34
    :cond_21
    return-void
.end method
