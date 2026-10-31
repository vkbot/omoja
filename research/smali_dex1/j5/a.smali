.class public final Lj5/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj5/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj5/d;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj5/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lj5/a;->b:Lj5/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lj5/a;

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
    check-cast p1, Lj5/a;

    .line 12
    .line 13
    iget-object v1, p1, Lj5/a;->b:Lj5/d;

    .line 14
    .line 15
    iget-object v3, p1, Lj5/a;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0}, Lj5/a;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {p1}, Lj5/a;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eq v4, p1, :cond_1b

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1b
    iget-object p1, p0, Lj5/a;->a:Ljava/lang/String;

    .line 29
    .line 30
    if-nez p1, :cond_21

    .line 31
    .line 32
    if-nez v3, :cond_29

    .line 33
    .line 34
    :cond_21
    if-eqz p1, :cond_2a

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2a

    .line 41
    .line 42
    :cond_29
    return v2

    .line 43
    :cond_2a
    iget-object p1, p0, Lj5/a;->b:Lj5/d;

    .line 44
    .line 45
    if-nez p1, :cond_30

    .line 46
    .line 47
    if-eqz v1, :cond_38

    .line 48
    .line 49
    :cond_30
    if-eqz p1, :cond_39

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lj5/d;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_39

    .line 56
    .line 57
    :cond_38
    return v0

    .line 58
    :cond_39
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lj5/a;->a:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v1, :cond_a

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lj5/a;->b:Lj5/d;

    .line 13
    .line 14
    if-eqz v2, :cond_13

    .line 15
    .line 16
    invoke-virtual {v2}, Lj5/d;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :cond_13
    add-int/2addr v1, v0

    .line 21
    return v1
.end method
