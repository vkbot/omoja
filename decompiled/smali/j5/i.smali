.class public final Lj5/i;
.super Lj5/h;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final c:Lj5/l;

.field public final d:Lj5/l;

.field public final e:Lj5/f;

.field public final f:Lj5/a;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lj5/l;Lj5/l;Lj5/f;Lj5/a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->MODAL:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 2
    .line 3
    invoke-direct {p0, v0, p6}, Lj5/h;-><init>(Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lj5/i;->c:Lj5/l;

    .line 7
    .line 8
    iput-object p2, p0, Lj5/i;->d:Lj5/l;

    .line 9
    .line 10
    iput-object p3, p0, Lj5/i;->e:Lj5/f;

    .line 11
    .line 12
    iput-object p4, p0, Lj5/i;->f:Lj5/a;

    .line 13
    .line 14
    iput-object p5, p0, Lj5/i;->g:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lj5/i;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lj5/i;

    .line 12
    .line 13
    iget-object v1, p1, Lj5/i;->e:Lj5/f;

    .line 14
    .line 15
    iget-object v3, p1, Lj5/i;->f:Lj5/a;

    .line 16
    .line 17
    iget-object v4, p1, Lj5/i;->d:Lj5/l;

    .line 18
    .line 19
    invoke-virtual {p0}, Lj5/i;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {p1}, Lj5/i;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eq v5, v6, :cond_2

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    iget-object v5, p0, Lj5/i;->d:Lj5/l;

    .line 31
    .line 32
    if-nez v5, :cond_3

    .line 33
    .line 34
    if-nez v4, :cond_4

    .line 35
    .line 36
    :cond_3
    if-eqz v5, :cond_5

    .line 37
    .line 38
    invoke-virtual {v5, v4}, Lj5/l;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_5

    .line 43
    .line 44
    :cond_4
    return v2

    .line 45
    :cond_5
    iget-object v4, p0, Lj5/i;->f:Lj5/a;

    .line 46
    .line 47
    if-nez v4, :cond_6

    .line 48
    .line 49
    if-nez v3, :cond_7

    .line 50
    .line 51
    :cond_6
    if-eqz v4, :cond_8

    .line 52
    .line 53
    invoke-virtual {v4, v3}, Lj5/a;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_8

    .line 58
    .line 59
    :cond_7
    return v2

    .line 60
    :cond_8
    iget-object v3, p0, Lj5/i;->e:Lj5/f;

    .line 61
    .line 62
    if-nez v3, :cond_9

    .line 63
    .line 64
    if-nez v1, :cond_a

    .line 65
    .line 66
    :cond_9
    if-eqz v3, :cond_b

    .line 67
    .line 68
    invoke-virtual {v3, v1}, Lj5/f;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_b

    .line 73
    .line 74
    :cond_a
    return v2

    .line 75
    :cond_b
    iget-object v1, p0, Lj5/i;->c:Lj5/l;

    .line 76
    .line 77
    iget-object v3, p1, Lj5/i;->c:Lj5/l;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Lj5/l;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_c

    .line 84
    .line 85
    return v2

    .line 86
    :cond_c
    iget-object v1, p0, Lj5/i;->g:Ljava/lang/String;

    .line 87
    .line 88
    iget-object p1, p1, Lj5/i;->g:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_d

    .line 95
    .line 96
    return v0

    .line 97
    :cond_d
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lj5/i;->d:Lj5/l;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Lj5/l;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    iget-object v2, p0, Lj5/i;->f:Lj5/a;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Lj5/a;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v2, v0

    .line 22
    :goto_1
    iget-object v3, p0, Lj5/i;->e:Lj5/f;

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    iget-object v0, v3, Lj5/f;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_2
    iget-object v3, p0, Lj5/i;->c:Lj5/l;

    .line 33
    .line 34
    invoke-virtual {v3}, Lj5/l;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    add-int/2addr v3, v1

    .line 39
    iget-object v1, p0, Lj5/i;->g:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v1, v3

    .line 46
    add-int/2addr v1, v2

    .line 47
    add-int/2addr v1, v0

    .line 48
    return v1
.end method
