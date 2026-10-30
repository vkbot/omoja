.class public final Ld1/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:[B


# instance fields
.field public final a:Ljava/security/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0xec

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aput-byte v1, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aput-byte v2, v0, v2

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    const/16 v4, 0xdc

    .line 14
    .line 15
    invoke-static {v0, v3, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x10

    .line 19
    .line 20
    new-array v3, v2, [B

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Ld1/b;->b:[B

    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 1
        0x0t
        0x30t
        0x21t
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
        0x4t
        0x14t
    .end array-data
.end method

.method public constructor <init>(Ljava/security/KeyPair;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld1/b;->a:Ljava/security/KeyPair;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/io/File;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int v0, v0

    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    new-instance v2, Ljava/io/FileInputStream;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :goto_0
    if-ge p0, v0, :cond_1

    .line 15
    .line 16
    sub-int v3, v0, p0

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v2, v1, p0, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ltz v3, :cond_0

    .line 23
    .line 24
    add-int/2addr p0, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 27
    .line 28
    const/16 v0, 0x33

    .line 29
    .line 30
    new-array v0, v0, [B

    .line 31
    .line 32
    fill-array-data v0, :array_0

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    new-array v1, v1, [B

    .line 38
    .line 39
    fill-array-data v1, :array_1

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    throw p0

    .line 60
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    nop

    .line 65
    :array_0
    .array-data 1
        -0x17t
        -0x76t
        0x7et
        -0x7et
        0x4ct
        0x3t
        -0x44t
        -0x3ct
        -0x73t
        -0x39t
        0x1et
        -0x19t
        -0x29t
        0x2t
        -0x7ft
        -0x3bt
        -0x48t
        -0x3at
        0x22t
        0x17t
        -0x44t
        0x6dt
        -0x12t
        -0x6ct
        -0x17t
        -0x57t
        0x7ft
        -0x50t
        -0x44t
        0x6at
        -0x12t
        -0x6at
        -0x17t
        -0x59t
        0x7ft
        -0x4bt
        -0x43t
        0x5et
        0x1ft
        0x55t
        0x7dt
        0x55t
        -0x7dt
        -0x19t
        -0x2at
        0x2t
        -0x7ct
        -0x3bt
        -0x49t
        -0x3at
        0x29t
    .end array-data

    .line 66
    .line 67
    .line 68
    :array_1
    .array-data 1
        0x39t
        0x17t
        -0x52t
        0x37t
        0x6ct
        -0x2et
        0x3ft
        0x14t
    .end array-data
.end method
