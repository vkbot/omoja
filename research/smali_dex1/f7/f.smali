.class public final Lf7/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/net/InetAddress;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf7/f;->a:Ljava/net/InetAddress;

    .line 5
    .line 6
    iput p2, p0, Lf7/f;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;)Lf7/f;
    .registers 6

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ltz v0, :cond_23

    .line 9
    .line 10
    add-int/lit8 v2, v0, 0x1

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/16 v3, 0xa

    .line 17
    .line 18
    :try_start_11
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v3
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_1b

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_26

    .line 28
    :catch_1b
    new-instance p0, Lf7/i;

    .line 29
    .line 30
    const-class v0, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-direct {p0, v0, v2, v1, v1}, Lf7/i;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_23
    const-string v2, ""

    .line 37
    .line 38
    const/4 v3, -0x1

    .line 39
    :goto_26
    invoke-static {p0}, Lf7/d;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    instance-of v0, p0, Ljava/net/Inet4Address;

    .line 44
    .line 45
    if-eqz v0, :cond_31

    .line 46
    .line 47
    const/16 v0, 0x20

    .line 48
    .line 49
    goto :goto_33

    .line 50
    :cond_31
    const/16 v0, 0x80

    .line 51
    .line 52
    :goto_33
    if-gt v3, v0, :cond_3f

    .line 53
    .line 54
    if-ltz v3, :cond_38

    .line 55
    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move v3, v0

    .line 58
    :goto_39
    new-instance v0, Lf7/f;

    .line 59
    .line 60
    invoke-direct {v0, p0, v3}, Lf7/f;-><init>(Ljava/net/InetAddress;I)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3f
    new-instance p0, Lf7/i;

    .line 65
    .line 66
    const-class v0, Lf7/f;

    .line 67
    .line 68
    const-string v3, "Invalid network mask"

    .line 69
    .line 70
    invoke-direct {p0, v0, v2, v3, v1}, Lf7/i;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lf7/f;

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
    check-cast p1, Lf7/f;

    .line 8
    .line 9
    iget-object v0, p0, Lf7/f;->a:Ljava/net/InetAddress;

    .line 10
    .line 11
    iget-object v2, p1, Lf7/f;->a:Ljava/net/InetAddress;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1a

    .line 18
    .line 19
    iget v0, p0, Lf7/f;->b:I

    .line 20
    .line 21
    iget p1, p1, Lf7/f;->b:I

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
    iget-object v0, p0, Lf7/f;->a:Ljava/net/InetAddress;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lf7/f;->b:I

    .line 8
    .line 9
    xor-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lf7/f;->a:Ljava/net/InetAddress;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x2f

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lf7/f;->b:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
