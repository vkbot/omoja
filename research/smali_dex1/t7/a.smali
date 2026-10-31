.class public final Lt7/a;
.super Ljava/io/InputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln7/d0;


# instance fields
.field public b:Ly5/g;

.field public final c:Lcom/google/protobuf/x0;

.field public d:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Ly5/g;Lcom/google/protobuf/x0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt7/a;->b:Ly5/g;

    .line 5
    .line 6
    iput-object p2, p0, Lt7/a;->c:Lcom/google/protobuf/x0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 3

    .line 1
    iget-object v0, p0, Lt7/a;->b:Ly5/g;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :cond_a
    iget-object v0, p0, Lt7/a;->d:Ljava/io/ByteArrayInputStream;

    .line 12
    .line 13
    if-eqz v0, :cond_13

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public final read()I
    .registers 3

    .line 75
    iget-object v0, p0, Lt7/a;->b:Ly5/g;

    if-eqz v0, :cond_14

    .line 76
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lt7/a;->b:Ly5/g;

    invoke-virtual {v1}, Lcom/google/protobuf/a;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lt7/a;->d:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lt7/a;->b:Ly5/g;

    .line 78
    :cond_14
    iget-object v0, p0, Lt7/a;->d:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1d

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0

    :cond_1d
    const/4 v0, -0x1

    return v0
.end method

.method public final read([BII)I
    .registers 8

    .line 1
    iget-object v0, p0, Lt7/a;->b:Ly5/g;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_40

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_11

    .line 12
    .line 13
    iput-object v2, p0, Lt7/a;->b:Ly5/g;

    .line 14
    .line 15
    iput-object v2, p0, Lt7/a;->d:Ljava/io/ByteArrayInputStream;

    .line 16
    .line 17
    return v1

    .line 18
    :cond_11
    if-lt p3, v0, :cond_31

    .line 19
    .line 20
    sget-object p3, Lcom/google/protobuf/n;->b:Ljava/util/logging/Logger;

    .line 21
    .line 22
    new-instance p3, Lcom/google/protobuf/k;

    .line 23
    .line 24
    invoke-direct {p3, p1, p2, v0}, Lcom/google/protobuf/k;-><init>([BII)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lt7/a;->b:Ly5/g;

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Lcom/google/protobuf/y;->c(Lcom/google/protobuf/n;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Lcom/google/protobuf/k;->B()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2a

    .line 37
    .line 38
    iput-object v2, p0, Lt7/a;->b:Ly5/g;

    .line 39
    .line 40
    iput-object v2, p0, Lt7/a;->d:Ljava/io/ByteArrayInputStream;

    .line 41
    .line 42
    return v0

    .line 43
    :cond_2a
    const-string p1, "Did not write as much data as expected."

    .line 44
    .line 45
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return p1

    .line 50
    :cond_31
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 51
    .line 52
    iget-object v3, p0, Lt7/a;->b:Ly5/g;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/google/protobuf/a;->b()[B

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lt7/a;->d:Ljava/io/ByteArrayInputStream;

    .line 62
    .line 63
    iput-object v2, p0, Lt7/a;->b:Ly5/g;

    .line 64
    .line 65
    :cond_40
    iget-object v0, p0, Lt7/a;->d:Ljava/io/ByteArrayInputStream;

    .line 66
    .line 67
    if-eqz v0, :cond_49

    .line 68
    .line 69
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :cond_49
    return v1
.end method
