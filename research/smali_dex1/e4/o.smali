.class public final Le4/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 30
    iput v0, p0, Le4/o;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le4/o;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Le4/o;->d:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    if-ne p3, p1, :cond_b

    .line 10
    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x2

    .line 13
    :goto_c
    iput p1, p0, Le4/o;->a:I

    .line 14
    .line 15
    const/16 p1, 0x1e

    .line 16
    .line 17
    if-eq p4, p1, :cond_19

    .line 18
    .line 19
    const/16 p1, 0x46

    .line 20
    .line 21
    if-ne p4, p1, :cond_17

    .line 22
    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/16 p4, 0x32

    .line 25
    .line 26
    :cond_19
    :goto_19
    iput p4, p0, Le4/o;->b:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Le4/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v3, v1

    .line 12
    :goto_b
    iget-object v4, p0, Le4/o;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v3, :cond_58

    .line 17
    .line 18
    invoke-static {v4}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-array v4, v2, [B

    .line 23
    .line 24
    const/16 v5, 0x22

    .line 25
    .line 26
    aput-byte v5, v4, v1

    .line 27
    .line 28
    const/16 v5, 0x8

    .line 29
    .line 30
    new-array v6, v5, [B

    .line 31
    .line 32
    fill-array-data v6, :array_5a

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v6, v3, v0}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-array v0, v2, [B

    .line 39
    .line 40
    const/16 v4, -0x52

    .line 41
    .line 42
    aput-byte v4, v0, v1

    .line 43
    .line 44
    new-array v4, v5, [B

    .line 45
    .line 46
    fill-array-data v4, :array_62

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v0, p0, Le4/o;->a:I

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    new-array v0, v2, [B

    .line 62
    .line 63
    const/16 v2, 0x4b

    .line 64
    .line 65
    aput-byte v2, v0, v1

    .line 66
    .line 67
    new-array v1, v5, [B

    .line 68
    .line 69
    fill-array-data v1, :array_6a

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v0, p0, Le4/o;->b:I

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :cond_58
    return-object v4

    .line 90
    nop

    .line 91
    :array_5a
    .array-data 1
        0xet
        0x12t
        -0x1et
        -0x4ct
        0x33t
        0x53t
        -0x42t
        -0x3t
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_62
    .array-data 1
        -0x7et
        -0x21t
        -0x24t
        0x78t
        0x79t
        -0x14t
        -0x4bt
        -0x5ct
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_6a
    .array-data 1
        0x67t
        0x48t
        0x79t
        0x32t
        0x7at
        0x28t
        -0x70t
        0xct
    .end array-data
.end method
