.class public final Lf7/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Optional;

.field public final c:Ljava/util/Optional;

.field public final d:Ljava/util/Optional;

.field public final e:Lg7/b;


# direct methods
.method public constructor <init>(Le0/s3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    iget-object v1, p1, Le0/s3;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lf7/j;->a:Ljava/util/Set;

    .line 18
    .line 19
    iget-object v0, p1, Le0/s3;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/Optional;

    .line 22
    .line 23
    iput-object v0, p0, Lf7/j;->b:Ljava/util/Optional;

    .line 24
    .line 25
    iget-object v0, p1, Le0/s3;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ljava/util/Optional;

    .line 28
    .line 29
    iput-object v0, p0, Lf7/j;->c:Ljava/util/Optional;

    .line 30
    .line 31
    iget-object v0, p1, Le0/s3;->f:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/Optional;

    .line 34
    .line 35
    iput-object v0, p0, Lf7/j;->d:Ljava/util/Optional;

    .line 36
    .line 37
    iget-object p1, p1, Le0/s3;->g:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lg7/b;

    .line 40
    .line 41
    const-string v0, "Peers must have a public key"

    .line 42
    .line 43
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lf7/j;->e:Lg7/b;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lf7/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lf7/j;

    .line 8
    .line 9
    iget-object v0, p0, Lf7/j;->a:Ljava/util/Set;

    .line 10
    .line 11
    iget-object v2, p1, Lf7/j;->a:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lf7/j;->b:Ljava/util/Optional;

    .line 20
    .line 21
    iget-object v2, p1, Lf7/j;->b:Ljava/util/Optional;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lf7/j;->c:Ljava/util/Optional;

    .line 30
    .line 31
    iget-object v2, p1, Lf7/j;->c:Ljava/util/Optional;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lf7/j;->d:Ljava/util/Optional;

    .line 40
    .line 41
    iget-object v2, p1, Lf7/j;->d:Ljava/util/Optional;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lf7/j;->e:Lg7/b;

    .line 50
    .line 51
    iget-object p1, p1, Lf7/j;->e:Lg7/b;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lg7/b;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf7/j;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v1, p0, Lf7/j;->b:Ljava/util/Optional;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    iget-object v0, p0, Lf7/j;->c:Ljava/util/Optional;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/Optional;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-object v1, p0, Lf7/j;->d:Ljava/util/Optional;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    mul-int/lit8 v1, v1, 0x1f

    .line 37
    .line 38
    iget-object v0, p0, Lf7/j;->e:Lg7/b;

    .line 39
    .line 40
    invoke-virtual {v0}, Lg7/b;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    add-int/2addr v0, v1

    .line 45
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "(Peer "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf7/j;->e:Lg7/b;

    .line 9
    .line 10
    invoke-virtual {v1}, Lg7/b;->d()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lf7/g;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, v0, v2}, Lf7/g;-><init>(Ljava/lang/StringBuilder;I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lf7/j;->b:Ljava/util/Optional;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x29

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
