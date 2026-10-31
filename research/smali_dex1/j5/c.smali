.class public final Lj5/c;
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
    .registers 8

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->BANNER:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 2
    .line 3
    invoke-direct {p0, v0, p6}, Lj5/h;-><init>(Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lj5/c;->c:Lj5/l;

    .line 7
    .line 8
    iput-object p2, p0, Lj5/c;->d:Lj5/l;

    .line 9
    .line 10
    iput-object p3, p0, Lj5/c;->e:Lj5/f;

    .line 11
    .line 12
    iput-object p4, p0, Lj5/c;->f:Lj5/a;

    .line 13
    .line 14
    iput-object p5, p0, Lj5/c;->g:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lj5/c;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lj5/c;

    .line 12
    .line 13
    iget-object v1, p1, Lj5/c;->f:Lj5/a;

    .line 14
    .line 15
    iget-object v3, p1, Lj5/c;->e:Lj5/f;

    .line 16
    .line 17
    iget-object v4, p1, Lj5/c;->d:Lj5/l;

    .line 18
    .line 19
    invoke-virtual {p0}, Lj5/c;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {p1}, Lj5/c;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eq v5, v6, :cond_1d

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1d
    iget-object v5, p0, Lj5/c;->d:Lj5/l;

    .line 31
    .line 32
    if-nez v5, :cond_23

    .line 33
    .line 34
    if-nez v4, :cond_2b

    .line 35
    .line 36
    :cond_23
    if-eqz v5, :cond_2c

    .line 37
    .line 38
    invoke-virtual {v5, v4}, Lj5/l;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_2c

    .line 43
    .line 44
    :cond_2b
    return v2

    .line 45
    :cond_2c
    iget-object v4, p0, Lj5/c;->e:Lj5/f;

    .line 46
    .line 47
    if-nez v4, :cond_32

    .line 48
    .line 49
    if-nez v3, :cond_3a

    .line 50
    .line 51
    :cond_32
    if-eqz v4, :cond_3b

    .line 52
    .line 53
    invoke-virtual {v4, v3}, Lj5/f;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_3b

    .line 58
    .line 59
    :cond_3a
    return v2

    .line 60
    :cond_3b
    iget-object v3, p0, Lj5/c;->f:Lj5/a;

    .line 61
    .line 62
    if-nez v3, :cond_41

    .line 63
    .line 64
    if-nez v1, :cond_49

    .line 65
    .line 66
    :cond_41
    if-eqz v3, :cond_4a

    .line 67
    .line 68
    invoke-virtual {v3, v1}, Lj5/a;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4a

    .line 73
    .line 74
    :cond_49
    return v2

    .line 75
    :cond_4a
    iget-object v1, p0, Lj5/c;->c:Lj5/l;

    .line 76
    .line 77
    iget-object v3, p1, Lj5/c;->c:Lj5/l;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Lj5/l;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_55

    .line 84
    .line 85
    return v2

    .line 86
    :cond_55
    iget-object v1, p0, Lj5/c;->g:Ljava/lang/String;

    .line 87
    .line 88
    iget-object p1, p1, Lj5/c;->g:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_60

    .line 95
    .line 96
    return v0

    .line 97
    :cond_60
    return v2
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lj5/c;->d:Lj5/l;

    .line 3
    .line 4
    if-eqz v1, :cond_a

    .line 5
    .line 6
    invoke-virtual {v1}, Lj5/l;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v1, v0

    .line 12
    :goto_b
    iget-object v2, p0, Lj5/c;->e:Lj5/f;

    .line 13
    .line 14
    if-eqz v2, :cond_16

    .line 15
    .line 16
    iget-object v2, v2, Lj5/f;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v2, v0

    .line 24
    :goto_17
    iget-object v3, p0, Lj5/c;->f:Lj5/a;

    .line 25
    .line 26
    if-eqz v3, :cond_1f

    .line 27
    .line 28
    invoke-virtual {v3}, Lj5/a;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_1f
    iget-object v3, p0, Lj5/c;->c:Lj5/l;

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
    add-int/2addr v3, v2

    .line 40
    add-int/2addr v3, v0

    .line 41
    iget-object v0, p0, Lj5/c;->g:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v0, v3

    .line 48
    return v0
.end method
