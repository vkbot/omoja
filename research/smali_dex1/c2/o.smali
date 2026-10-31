.class public final Lc2/o;
.super Lc2/w;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lc2/v;

.field public final b:Lc2/u;


# direct methods
.method public constructor <init>(Lc2/v;Lc2/u;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc2/o;->a:Lc2/v;

    .line 5
    .line 6
    iput-object p2, p0, Lc2/o;->b:Lc2/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lc2/w;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_38

    .line 9
    .line 10
    check-cast p1, Lc2/w;

    .line 11
    .line 12
    iget-object v1, p0, Lc2/o;->a:Lc2/v;

    .line 13
    .line 14
    if-nez v1, :cond_17

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    check-cast v1, Lc2/o;

    .line 18
    .line 19
    iget-object v1, v1, Lc2/o;->a:Lc2/v;

    .line 20
    .line 21
    if-nez v1, :cond_38

    .line 22
    .line 23
    goto :goto_22

    .line 24
    :cond_17
    move-object v3, p1

    .line 25
    check-cast v3, Lc2/o;

    .line 26
    .line 27
    iget-object v3, v3, Lc2/o;->a:Lc2/v;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_38

    .line 34
    .line 35
    :goto_22
    iget-object v1, p0, Lc2/o;->b:Lc2/u;

    .line 36
    .line 37
    if-nez v1, :cond_2d

    .line 38
    .line 39
    check-cast p1, Lc2/o;

    .line 40
    .line 41
    iget-object p1, p1, Lc2/o;->b:Lc2/u;

    .line 42
    .line 43
    if-nez p1, :cond_38

    .line 44
    .line 45
    goto :goto_37

    .line 46
    :cond_2d
    check-cast p1, Lc2/o;

    .line 47
    .line 48
    iget-object p1, p1, Lc2/o;->b:Lc2/u;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_38

    .line 55
    .line 56
    :goto_37
    return v0

    .line 57
    :cond_38
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lc2/o;->a:Lc2/v;

    .line 3
    .line 4
    if-nez v1, :cond_7

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_b
    const v2, 0xf4243

    .line 13
    .line 14
    .line 15
    xor-int/2addr v1, v2

    .line 16
    mul-int/2addr v1, v2

    .line 17
    iget-object v2, p0, Lc2/o;->b:Lc2/u;

    .line 18
    .line 19
    if-nez v2, :cond_15

    .line 20
    .line 21
    goto :goto_19

    .line 22
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_19
    xor-int/2addr v0, v1

    .line 27
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NetworkConnectionInfo{networkType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lc2/o;->a:Lc2/v;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mobileSubtype="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lc2/o;->b:Lc2/u;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "}"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
