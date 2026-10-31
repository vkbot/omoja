.class public final Lu5/e;
.super Ljava/util/AbstractMap;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final i:Ls3/m;


# instance fields
.field public final b:Ljava/util/Comparator;

.field public c:Lu5/d;

.field public d:I

.field public e:I

.field public final f:Lu5/d;

.field public g:Lu5/c;

.field public h:Lu5/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ls3/m;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ls3/m;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu5/e;->i:Ls3/m;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lu5/e;->d:I

    .line 6
    .line 7
    iput v0, p0, Lu5/e;->e:I

    .line 8
    .line 9
    sget-object v0, Lu5/e;->i:Ls3/m;

    .line 10
    .line 11
    iput-object v0, p0, Lu5/e;->b:Ljava/util/Comparator;

    .line 12
    .line 13
    new-instance v0, Lu5/d;

    .line 14
    .line 15
    invoke-direct {v0}, Lu5/d;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lu5/e;->f:Lu5/d;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lu5/d;
    .registers 10

    .line 1
    iget-object v0, p0, Lu5/e;->c:Lu5/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lu5/e;->i:Ls3/m;

    .line 5
    .line 6
    iget-object v3, p0, Lu5/e;->b:Ljava/util/Comparator;

    .line 7
    .line 8
    if-eqz v0, :cond_2c

    .line 9
    .line 10
    if-ne v3, v2, :cond_f

    .line 11
    .line 12
    move-object v4, p1

    .line 13
    check-cast v4, Ljava/lang/Comparable;

    .line 14
    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move-object v4, v1

    .line 17
    :goto_10
    iget-object v5, v0, Lu5/d;->g:Ljava/lang/Object;

    .line 18
    .line 19
    if-eqz v4, :cond_19

    .line 20
    .line 21
    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    invoke-interface {v3, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    :goto_1d
    if-nez v5, :cond_20

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_20
    if-gez v5, :cond_25

    .line 34
    .line 35
    iget-object v6, v0, Lu5/d;->c:Lu5/d;

    .line 36
    .line 37
    goto :goto_27

    .line 38
    :cond_25
    iget-object v6, v0, Lu5/d;->d:Lu5/d;

    .line 39
    .line 40
    :goto_27
    if-nez v6, :cond_2a

    .line 41
    .line 42
    goto :goto_2d

    .line 43
    :cond_2a
    move-object v0, v6

    .line 44
    goto :goto_10

    .line 45
    :cond_2c
    const/4 v5, 0x0

    .line 46
    :goto_2d
    if-nez p2, :cond_30

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_30
    const/4 p2, 0x1

    .line 50
    iget-object v1, p0, Lu5/e;->f:Lu5/d;

    .line 51
    .line 52
    if-nez v0, :cond_5a

    .line 53
    .line 54
    if-ne v3, v2, :cond_50

    .line 55
    .line 56
    instance-of v2, p1, Ljava/lang/Comparable;

    .line 57
    .line 58
    if-eqz v2, :cond_3c

    .line 59
    .line 60
    goto :goto_50

    .line 61
    :cond_3c
    new-instance p2, Ljava/lang/ClassCastException;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v0, " is not Comparable"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p2

    .line 81
    :cond_50
    :goto_50
    new-instance v2, Lu5/d;

    .line 82
    .line 83
    iget-object v3, v1, Lu5/d;->f:Lu5/d;

    .line 84
    .line 85
    invoke-direct {v2, v0, p1, v1, v3}, Lu5/d;-><init>(Lu5/d;Ljava/lang/Object;Lu5/d;Lu5/d;)V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lu5/e;->c:Lu5/d;

    .line 89
    .line 90
    goto :goto_6b

    .line 91
    :cond_5a
    new-instance v2, Lu5/d;

    .line 92
    .line 93
    iget-object v3, v1, Lu5/d;->f:Lu5/d;

    .line 94
    .line 95
    invoke-direct {v2, v0, p1, v1, v3}, Lu5/d;-><init>(Lu5/d;Ljava/lang/Object;Lu5/d;Lu5/d;)V

    .line 96
    .line 97
    .line 98
    if-gez v5, :cond_66

    .line 99
    .line 100
    iput-object v2, v0, Lu5/d;->c:Lu5/d;

    .line 101
    .line 102
    goto :goto_68

    .line 103
    :cond_66
    iput-object v2, v0, Lu5/d;->d:Lu5/d;

    .line 104
    .line 105
    :goto_68
    invoke-virtual {p0, v0, p2}, Lu5/e;->b(Lu5/d;Z)V

    .line 106
    .line 107
    .line 108
    :goto_6b
    iget p1, p0, Lu5/e;->d:I

    .line 109
    .line 110
    add-int/2addr p1, p2

    .line 111
    iput p1, p0, Lu5/e;->d:I

    .line 112
    .line 113
    iget p1, p0, Lu5/e;->e:I

    .line 114
    .line 115
    add-int/2addr p1, p2

    .line 116
    iput p1, p0, Lu5/e;->e:I

    .line 117
    .line 118
    return-object v2
.end method

.method public final b(Lu5/d;Z)V
    .registers 10

    .line 1
    :goto_0
    if-eqz p1, :cond_79

    .line 2
    .line 3
    iget-object v0, p1, Lu5/d;->c:Lu5/d;

    .line 4
    .line 5
    iget-object v1, p1, Lu5/d;->d:Lu5/d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_c

    .line 9
    .line 10
    iget v3, v0, Lu5/d;->i:I

    .line 11
    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v3, v2

    .line 14
    :goto_d
    if-eqz v1, :cond_12

    .line 15
    .line 16
    iget v4, v1, Lu5/d;->i:I

    .line 17
    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v4, v2

    .line 20
    :goto_13
    sub-int v5, v3, v4

    .line 21
    .line 22
    const/4 v6, -0x2

    .line 23
    if-ne v5, v6, :cond_3c

    .line 24
    .line 25
    iget-object v0, v1, Lu5/d;->c:Lu5/d;

    .line 26
    .line 27
    iget-object v3, v1, Lu5/d;->d:Lu5/d;

    .line 28
    .line 29
    if-eqz v3, :cond_21

    .line 30
    .line 31
    iget v3, v3, Lu5/d;->i:I

    .line 32
    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v3, v2

    .line 35
    :goto_22
    if-eqz v0, :cond_26

    .line 36
    .line 37
    iget v2, v0, Lu5/d;->i:I

    .line 38
    .line 39
    :cond_26
    sub-int/2addr v2, v3

    .line 40
    const/4 v0, -0x1

    .line 41
    if-eq v2, v0, :cond_36

    .line 42
    .line 43
    if-nez v2, :cond_2f

    .line 44
    .line 45
    if-nez p2, :cond_2f

    .line 46
    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    invoke-virtual {p0, v1}, Lu5/e;->f(Lu5/d;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lu5/e;->e(Lu5/d;)V

    .line 52
    .line 53
    .line 54
    goto :goto_39

    .line 55
    :cond_36
    :goto_36
    invoke-virtual {p0, p1}, Lu5/e;->e(Lu5/d;)V

    .line 56
    .line 57
    .line 58
    :goto_39
    if-eqz p2, :cond_76

    .line 59
    .line 60
    goto :goto_79

    .line 61
    :cond_3c
    const/4 v1, 0x2

    .line 62
    const/4 v6, 0x1

    .line 63
    if-ne v5, v1, :cond_63

    .line 64
    .line 65
    iget-object v1, v0, Lu5/d;->c:Lu5/d;

    .line 66
    .line 67
    iget-object v3, v0, Lu5/d;->d:Lu5/d;

    .line 68
    .line 69
    if-eqz v3, :cond_49

    .line 70
    .line 71
    iget v3, v3, Lu5/d;->i:I

    .line 72
    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v3, v2

    .line 75
    :goto_4a
    if-eqz v1, :cond_4e

    .line 76
    .line 77
    iget v2, v1, Lu5/d;->i:I

    .line 78
    .line 79
    :cond_4e
    sub-int/2addr v2, v3

    .line 80
    if-eq v2, v6, :cond_5d

    .line 81
    .line 82
    if-nez v2, :cond_56

    .line 83
    .line 84
    if-nez p2, :cond_56

    .line 85
    .line 86
    goto :goto_5d

    .line 87
    :cond_56
    invoke-virtual {p0, v0}, Lu5/e;->e(Lu5/d;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lu5/e;->f(Lu5/d;)V

    .line 91
    .line 92
    .line 93
    goto :goto_60

    .line 94
    :cond_5d
    :goto_5d
    invoke-virtual {p0, p1}, Lu5/e;->f(Lu5/d;)V

    .line 95
    .line 96
    .line 97
    :goto_60
    if-eqz p2, :cond_76

    .line 98
    .line 99
    goto :goto_79

    .line 100
    :cond_63
    if-nez v5, :cond_6c

    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    iput v3, p1, Lu5/d;->i:I

    .line 105
    .line 106
    if-eqz p2, :cond_76

    .line 107
    .line 108
    goto :goto_79

    .line 109
    :cond_6c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    add-int/2addr v0, v6

    .line 114
    iput v0, p1, Lu5/d;->i:I

    .line 115
    .line 116
    if-nez p2, :cond_76

    .line 117
    .line 118
    goto :goto_79

    .line 119
    :cond_76
    iget-object p1, p1, Lu5/d;->b:Lu5/d;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_79
    :goto_79
    return-void
.end method

.method public final c(Lu5/d;Z)V
    .registers 9

    .line 1
    if-eqz p2, :cond_c

    .line 2
    .line 3
    iget-object p2, p1, Lu5/d;->f:Lu5/d;

    .line 4
    .line 5
    iget-object v0, p1, Lu5/d;->e:Lu5/d;

    .line 6
    .line 7
    iput-object v0, p2, Lu5/d;->e:Lu5/d;

    .line 8
    .line 9
    iget-object v0, p1, Lu5/d;->e:Lu5/d;

    .line 10
    .line 11
    iput-object p2, v0, Lu5/d;->f:Lu5/d;

    .line 12
    .line 13
    :cond_c
    iget-object p2, p1, Lu5/d;->c:Lu5/d;

    .line 14
    .line 15
    iget-object v0, p1, Lu5/d;->d:Lu5/d;

    .line 16
    .line 17
    iget-object v1, p1, Lu5/d;->b:Lu5/d;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz p2, :cond_5c

    .line 22
    .line 23
    if-eqz v0, :cond_5c

    .line 24
    .line 25
    iget v1, p2, Lu5/d;->i:I

    .line 26
    .line 27
    iget v4, v0, Lu5/d;->i:I

    .line 28
    .line 29
    if-le v1, v4, :cond_28

    .line 30
    .line 31
    iget-object v0, p2, Lu5/d;->d:Lu5/d;

    .line 32
    .line 33
    :goto_20
    move-object v5, v0

    .line 34
    move-object v0, p2

    .line 35
    move-object p2, v5

    .line 36
    if-eqz p2, :cond_33

    .line 37
    .line 38
    iget-object v0, p2, Lu5/d;->d:Lu5/d;

    .line 39
    .line 40
    goto :goto_20

    .line 41
    :cond_28
    iget-object p2, v0, Lu5/d;->c:Lu5/d;

    .line 42
    .line 43
    :goto_2a
    move-object v5, v0

    .line 44
    move-object v0, p2

    .line 45
    move-object p2, v5

    .line 46
    if-eqz v0, :cond_32

    .line 47
    .line 48
    iget-object p2, v0, Lu5/d;->c:Lu5/d;

    .line 49
    .line 50
    goto :goto_2a

    .line 51
    :cond_32
    move-object v0, p2

    .line 52
    :cond_33
    invoke-virtual {p0, v0, v2}, Lu5/e;->c(Lu5/d;Z)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p1, Lu5/d;->c:Lu5/d;

    .line 56
    .line 57
    if-eqz p2, :cond_43

    .line 58
    .line 59
    iget v1, p2, Lu5/d;->i:I

    .line 60
    .line 61
    iput-object p2, v0, Lu5/d;->c:Lu5/d;

    .line 62
    .line 63
    iput-object v0, p2, Lu5/d;->b:Lu5/d;

    .line 64
    .line 65
    iput-object v3, p1, Lu5/d;->c:Lu5/d;

    .line 66
    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move v1, v2

    .line 69
    :goto_44
    iget-object p2, p1, Lu5/d;->d:Lu5/d;

    .line 70
    .line 71
    if-eqz p2, :cond_50

    .line 72
    .line 73
    iget v2, p2, Lu5/d;->i:I

    .line 74
    .line 75
    iput-object p2, v0, Lu5/d;->d:Lu5/d;

    .line 76
    .line 77
    iput-object v0, p2, Lu5/d;->b:Lu5/d;

    .line 78
    .line 79
    iput-object v3, p1, Lu5/d;->d:Lu5/d;

    .line 80
    .line 81
    :cond_50
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    add-int/lit8 p2, p2, 0x1

    .line 86
    .line 87
    iput p2, v0, Lu5/d;->i:I

    .line 88
    .line 89
    invoke-virtual {p0, p1, v0}, Lu5/e;->d(Lu5/d;Lu5/d;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_5c
    if-eqz p2, :cond_64

    .line 94
    .line 95
    invoke-virtual {p0, p1, p2}, Lu5/e;->d(Lu5/d;Lu5/d;)V

    .line 96
    .line 97
    .line 98
    iput-object v3, p1, Lu5/d;->c:Lu5/d;

    .line 99
    .line 100
    goto :goto_6f

    .line 101
    :cond_64
    if-eqz v0, :cond_6c

    .line 102
    .line 103
    invoke-virtual {p0, p1, v0}, Lu5/e;->d(Lu5/d;Lu5/d;)V

    .line 104
    .line 105
    .line 106
    iput-object v3, p1, Lu5/d;->d:Lu5/d;

    .line 107
    .line 108
    goto :goto_6f

    .line 109
    :cond_6c
    invoke-virtual {p0, p1, v3}, Lu5/e;->d(Lu5/d;Lu5/d;)V

    .line 110
    .line 111
    .line 112
    :goto_6f
    invoke-virtual {p0, v1, v2}, Lu5/e;->b(Lu5/d;Z)V

    .line 113
    .line 114
    .line 115
    iget p1, p0, Lu5/e;->d:I

    .line 116
    .line 117
    add-int/lit8 p1, p1, -0x1

    .line 118
    .line 119
    iput p1, p0, Lu5/e;->d:I

    .line 120
    .line 121
    iget p1, p0, Lu5/e;->e:I

    .line 122
    .line 123
    add-int/lit8 p1, p1, 0x1

    .line 124
    .line 125
    iput p1, p0, Lu5/e;->e:I

    .line 126
    .line 127
    return-void
.end method

.method public final clear()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lu5/e;->c:Lu5/d;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lu5/e;->d:I

    .line 6
    .line 7
    iget v0, p0, Lu5/e;->e:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lu5/e;->e:I

    .line 12
    .line 13
    iget-object v0, p0, Lu5/e;->f:Lu5/d;

    .line 14
    .line 15
    iput-object v0, v0, Lu5/d;->f:Lu5/d;

    .line 16
    .line 17
    iput-object v0, v0, Lu5/d;->e:Lu5/d;

    .line 18
    .line 19
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_8

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {p0, p1, v0}, Lu5/e;->a(Ljava/lang/Object;Z)Lu5/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_8

    .line 9
    :catch_8
    :cond_8
    if-eqz v1, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    return v0
.end method

.method public final d(Lu5/d;Lu5/d;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lu5/d;->b:Lu5/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p1, Lu5/d;->b:Lu5/d;

    .line 5
    .line 6
    if-eqz p2, :cond_9

    .line 7
    .line 8
    iput-object v0, p2, Lu5/d;->b:Lu5/d;

    .line 9
    .line 10
    :cond_9
    if-eqz v0, :cond_15

    .line 11
    .line 12
    iget-object v1, v0, Lu5/d;->c:Lu5/d;

    .line 13
    .line 14
    if-ne v1, p1, :cond_12

    .line 15
    .line 16
    iput-object p2, v0, Lu5/d;->c:Lu5/d;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    iput-object p2, v0, Lu5/d;->d:Lu5/d;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    iput-object p2, p0, Lu5/e;->c:Lu5/d;

    .line 23
    .line 24
    return-void
.end method

.method public final e(Lu5/d;)V
    .registers 7

    .line 1
    iget-object v0, p1, Lu5/d;->c:Lu5/d;

    .line 2
    .line 3
    iget-object v1, p1, Lu5/d;->d:Lu5/d;

    .line 4
    .line 5
    iget-object v2, v1, Lu5/d;->c:Lu5/d;

    .line 6
    .line 7
    iget-object v3, v1, Lu5/d;->d:Lu5/d;

    .line 8
    .line 9
    iput-object v2, p1, Lu5/d;->d:Lu5/d;

    .line 10
    .line 11
    if-eqz v2, :cond_e

    .line 12
    .line 13
    iput-object p1, v2, Lu5/d;->b:Lu5/d;

    .line 14
    .line 15
    :cond_e
    invoke-virtual {p0, p1, v1}, Lu5/e;->d(Lu5/d;Lu5/d;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v1, Lu5/d;->c:Lu5/d;

    .line 19
    .line 20
    iput-object v1, p1, Lu5/d;->b:Lu5/d;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v0, :cond_1b

    .line 24
    .line 25
    iget v0, v0, Lu5/d;->i:I

    .line 26
    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v0, v4

    .line 29
    :goto_1c
    if-eqz v2, :cond_21

    .line 30
    .line 31
    iget v2, v2, Lu5/d;->i:I

    .line 32
    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v2, v4

    .line 35
    :goto_22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput v0, p1, Lu5/d;->i:I

    .line 42
    .line 43
    if-eqz v3, :cond_2e

    .line 44
    .line 45
    iget v4, v3, Lu5/d;->i:I

    .line 46
    .line 47
    :cond_2e
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    iput p1, v1, Lu5/d;->i:I

    .line 54
    .line 55
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 3

    .line 1
    iget-object v0, p0, Lu5/e;->g:Lu5/c;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Lu5/c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lu5/c;-><init>(Ljava/util/AbstractMap;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lu5/e;->g:Lu5/c;

    .line 13
    .line 14
    return-object v0
.end method

.method public final f(Lu5/d;)V
    .registers 7

    .line 1
    iget-object v0, p1, Lu5/d;->c:Lu5/d;

    .line 2
    .line 3
    iget-object v1, p1, Lu5/d;->d:Lu5/d;

    .line 4
    .line 5
    iget-object v2, v0, Lu5/d;->c:Lu5/d;

    .line 6
    .line 7
    iget-object v3, v0, Lu5/d;->d:Lu5/d;

    .line 8
    .line 9
    iput-object v3, p1, Lu5/d;->c:Lu5/d;

    .line 10
    .line 11
    if-eqz v3, :cond_e

    .line 12
    .line 13
    iput-object p1, v3, Lu5/d;->b:Lu5/d;

    .line 14
    .line 15
    :cond_e
    invoke-virtual {p0, p1, v0}, Lu5/e;->d(Lu5/d;Lu5/d;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v0, Lu5/d;->d:Lu5/d;

    .line 19
    .line 20
    iput-object v0, p1, Lu5/d;->b:Lu5/d;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v1, :cond_1b

    .line 24
    .line 25
    iget v1, v1, Lu5/d;->i:I

    .line 26
    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v1, v4

    .line 29
    :goto_1c
    if-eqz v3, :cond_21

    .line 30
    .line 31
    iget v3, v3, Lu5/d;->i:I

    .line 32
    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v3, v4

    .line 35
    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    iput v1, p1, Lu5/d;->i:I

    .line 42
    .line 43
    if-eqz v2, :cond_2e

    .line 44
    .line 45
    iget v4, v2, Lu5/d;->i:I

    .line 46
    .line 47
    :cond_2e
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    iput p1, v0, Lu5/d;->i:I

    .line 54
    .line 55
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lu5/e;->a(Ljava/lang/Object;Z)Lu5/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    goto :goto_a

    .line 10
    :catch_9
    :cond_9
    move-object p1, v0

    .line 11
    :goto_a
    if-eqz p1, :cond_f

    .line 12
    .line 13
    iget-object p1, p1, Lu5/d;->h:Ljava/lang/Object;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_f
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 3

    .line 1
    iget-object v0, p0, Lu5/e;->h:Lu5/c;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Lu5/c;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1}, Lu5/c;-><init>(Ljava/util/AbstractMap;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lu5/e;->h:Lu5/c;

    .line 13
    .line 14
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    if-eqz p1, :cond_15

    .line 2
    .line 3
    if-eqz p2, :cond_e

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lu5/e;->a(Ljava/lang/Object;Z)Lu5/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p1, Lu5/d;->h:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p1, Lu5/d;->h:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_e
    const-string p1, "value == null"

    .line 16
    .line 17
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_13
    const/4 p1, 0x0

    .line 21
    return-object p1

    .line 22
    :cond_15
    const-string p1, "key == null"

    .line 23
    .line 24
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_13
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lu5/e;->a(Ljava/lang/Object;Z)Lu5/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    goto :goto_a

    .line 10
    :catch_9
    :cond_9
    move-object p1, v0

    .line 11
    :goto_a
    if-eqz p1, :cond_10

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, p1, v1}, Lu5/e;->c(Lu5/d;Z)V

    .line 15
    .line 16
    .line 17
    :cond_10
    if-eqz p1, :cond_15

    .line 18
    .line 19
    iget-object p1, p1, Lu5/d;->h:Ljava/lang/Object;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_15
    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Lu5/e;->d:I

    .line 2
    .line 3
    return v0
.end method
