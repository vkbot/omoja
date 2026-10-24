.class public abstract Lx2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokio/ByteString;->Companion:Lx2/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, Lx2/n;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lx2/a;->a:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, Lx2/n;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lx2/a;->b:[B

    return-void
.end method

.method public static final a([B[B)Ljava/lang/String;
    .locals 10

    const-string v0, "$this$encodeBase64"

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    array-length v2, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v9, v3, 0xff

    shr-int/2addr v9, v1

    aget-byte v9, p1, v9

    aput-byte v9, v0, v4

    add-int/lit8 v4, v8, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v9, v5, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v3, v9

    aget-byte v3, p1, v3

    aput-byte v3, v0, v8

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v1

    and-int/lit16 v8, v6, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v6, 0x3f

    aget-byte v5, p1, v5

    aput-byte v5, v0, v3

    move v3, v7

    goto :goto_0

    :cond_0
    array-length v5, p0

    sub-int/2addr v5, v2

    const/4 v2, 0x1

    const/16 v6, 0x3d

    if-eq v5, v2, :cond_2

    if-eq v5, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    aget-byte p0, p0, v2

    add-int/lit8 v2, v4, 0x1

    and-int/lit16 v5, v3, 0xff

    shr-int/2addr v5, v1

    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v5, p0, 0xff

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v3, v5

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v4, 0x1

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v1

    aget-byte p0, p1, p0

    aput-byte p0, v0, v4

    int-to-byte p0, v6

    aput-byte p0, v0, v2

    goto :goto_1

    :cond_2
    aget-byte p0, p0, v3

    add-int/lit8 v2, v4, 0x1

    and-int/lit16 v3, p0, 0xff

    shr-int/lit8 v1, v3, 0x2

    aget-byte v1, p1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, p1, p0

    aput-byte p0, v0, v2

    add-int/lit8 p0, v1, 0x1

    int-to-byte p1, v6

    aput-byte p1, v0, v1

    aput-byte p1, v0, p0

    :goto_1
    sget-object p0, Lkotlin/text/a;->a:Ljava/nio/charset/Charset;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method
