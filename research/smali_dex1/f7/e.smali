.class public final Lf7/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/lang/Object;

.field public final d:I

.field public e:Ljava/time/Instant;

.field public f:Lf7/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "^[^\\[\\]]*:[^\\[\\]]*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lf7/e;->g:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "[/?#]"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lf7/e;->h:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf7/e;->c:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Lc5/h;->k()Ljava/time/Instant;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lf7/e;->e:Ljava/time/Instant;

    .line 16
    .line 17
    iput-object p2, p0, Lf7/e;->a:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean p3, p0, Lf7/e;->b:Z

    .line 20
    .line 21
    iput p1, p0, Lf7/e;->d:I

    .line 22
    .line 23
    return-void
.end method

.method public static b(Ljava/lang/String;)Lf7/e;
    .registers 6

    .line 1
    const-string v0, "wg://"

    .line 2
    .line 3
    sget-object v1, Lf7/e;->h:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const-class v3, Lf7/e;

    .line 15
    .line 16
    if-nez v1, :cond_65

    .line 17
    .line 18
    :try_start_11
    new-instance v1, Ljava/net/URI;

    .line 19
    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_22} :catch_5e

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ltz v0, :cond_56

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const v4, 0xffff

    .line 46
    .line 47
    .line 48
    if-gt v0, v4, :cond_56

    .line 49
    .line 50
    :try_start_31
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lf7/d;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 55
    .line 56
    .line 57
    new-instance p0, Lf7/e;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v3, 0x1

    .line 68
    invoke-direct {p0, v2, v0, v3}, Lf7/e;-><init>(ILjava/lang/String;Z)V
    :try_end_46
    .catch Lf7/i; {:try_start_31 .. :try_end_46} :catch_47

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :catch_47
    new-instance p0, Lf7/e;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-direct {p0, v1, v0, v2}, Lf7/e;-><init>(ILjava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_56
    new-instance v0, Lf7/i;

    .line 88
    .line 89
    const-string v1, "Missing/invalid port number"

    .line 90
    .line 91
    invoke-direct {v0, v3, p0, v1, v2}, Lf7/i;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :catch_5e
    move-exception v0

    .line 96
    new-instance v1, Lf7/i;

    .line 97
    .line 98
    invoke-direct {v1, v3, p0, v2, v0}, Lf7/i;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_65
    new-instance v0, Lf7/i;

    .line 103
    .line 104
    const-string v1, "Forbidden characters"

    .line 105
    .line 106
    invoke-direct {v0, v3, p0, v1, v2}, Lf7/i;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 107
    .line 108
    .line 109
    throw v0
.end method


# virtual methods
.method public final a()Ljava/util/Optional;
    .registers 8

    .line 1
    iget-boolean v0, p0, Lf7/e;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v0, p0, Lf7/e;->c:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_c
    iget-object v1, p0, Lf7/e;->e:Ljava/time/Instant;

    .line 14
    .line 15
    invoke-static {}, Lc5/h;->B()Ljava/time/Instant;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Lc5/h;->j(Ljava/time/temporal/Temporal;Ljava/time/Instant;)Ljava/time/Duration;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lc5/h;->a(Ljava/time/Duration;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_37

    .line 27
    const-wide/16 v3, 0x1

    .line 28
    .line 29
    cmp-long v1, v1, v3

    .line 30
    .line 31
    if-lez v1, :cond_51

    .line 32
    .line 33
    :try_start_20
    iget-object v1, p0, Lf7/e;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    aget-object v3, v1, v2

    .line 41
    .line 42
    array-length v4, v1

    .line 43
    :goto_2a
    if-ge v2, v4, :cond_39

    .line 44
    .line 45
    aget-object v5, v1, v2

    .line 46
    .line 47
    instance-of v6, v5, Ljava/net/Inet4Address;

    .line 48
    .line 49
    if-eqz v6, :cond_34

    .line 50
    .line 51
    move-object v3, v5

    .line 52
    goto :goto_39

    .line 53
    :cond_34
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_2a

    .line 56
    :catchall_37
    move-exception v1

    .line 57
    goto :goto_59

    .line 58
    :cond_39
    :goto_39
    new-instance v1, Lf7/e;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget v3, p0, Lf7/e;->d:I

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    invoke-direct {v1, v3, v2, v4}, Lf7/e;-><init>(ILjava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lf7/e;->f:Lf7/e;

    .line 71
    .line 72
    invoke-static {}, Lc5/h;->B()Ljava/time/Instant;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, p0, Lf7/e;->e:Ljava/time/Instant;
    :try_end_4d
    .catch Ljava/net/UnknownHostException; {:try_start_20 .. :try_end_4d} :catch_4e
    .catchall {:try_start_20 .. :try_end_4d} :catchall_37

    .line 77
    .line 78
    goto :goto_51

    .line 79
    :catch_4e
    const/4 v1, 0x0

    .line 80
    :try_start_4f
    iput-object v1, p0, Lf7/e;->f:Lf7/e;

    .line 81
    .line 82
    :cond_51
    :goto_51
    iget-object v1, p0, Lf7/e;->f:Lf7/e;

    .line 83
    .line 84
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    monitor-exit v0

    .line 89
    return-object v1

    .line 90
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_37

    .line 91
    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lf7/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    check-cast p1, Lf7/e;

    .line 8
    .line 9
    iget-object v0, p0, Lf7/e;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lf7/e;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1a

    .line 18
    .line 19
    iget v0, p0, Lf7/e;->d:I

    .line 20
    .line 21
    iget p1, p1, Lf7/e;->d:I

    .line 22
    .line 23
    if-ne v0, p1, :cond_1a

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lf7/e;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lf7/e;->d:I

    .line 8
    .line 9
    xor-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-boolean v0, p0, Lf7/e;->b:Z

    .line 2
    .line 3
    iget-object v1, p0, Lf7/e;->a:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_14

    .line 6
    .line 7
    sget-object v0, Lf7/e;->g:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_2f

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "["

    .line 32
    .line 33
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x5d

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_2f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x3a

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lf7/e;->d:I

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
