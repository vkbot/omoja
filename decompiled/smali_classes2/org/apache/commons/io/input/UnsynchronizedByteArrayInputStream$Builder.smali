.class public Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;",
        "Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)[B
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->checkOriginByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->offset:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->length:I

    .line 2
    .line 3
    return p0
.end method

.method private checkOriginByteArray()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getByteArray()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->get()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>(Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public bridge synthetic setByteArray([B)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setByteArray([B)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setByteArray([B)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 1

    .line 1
    const-string v0, "origin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, [B

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->length:I

    .line 11
    .line 12
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setByteArray([B)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    .line 17
    .line 18
    return-object p1
.end method

.method public setLength(I)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->length:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p1, "length cannot be negative"

    .line 7
    .line 8
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1
.end method

.method public setOffset(I)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->offset:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p1, "offset cannot be negative"

    .line 7
    .line 8
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1
.end method
