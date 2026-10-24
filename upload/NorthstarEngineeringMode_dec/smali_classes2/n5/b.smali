.class public final Ln5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Ln5/b;->a:[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    sput-object v1, Ln5/b;->b:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Ln5/b;->a:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    sget-object v2, Ln5/b;->a:[B

    add-int/lit8 v3, v0, -0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x46

    :goto_2
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    sget-object v2, Ln5/b;->a:[B

    add-int/lit8 v3, v0, -0x37

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x66

    :goto_3
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    sget-object v2, Ln5/b;->a:[B

    add-int/lit8 v3, v0, -0x57

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    :goto_4
    const/16 v0, 0xa

    if-ge v1, v0, :cond_4

    sget-object v0, Ln5/b;->b:[B

    add-int/lit8 v2, v1, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    const/16 v1, 0xf

    if-gt v0, v1, :cond_5

    sget-object v1, Ln5/b;->b:[B

    add-int/lit8 v2, v0, 0x37

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public static a([B)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Ln5/b;->b:[B

    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-byte v5, v4, v5

    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
