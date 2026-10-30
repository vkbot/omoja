.class public abstract Lorg/apache/commons/io/input/AbstractCharacterFilterReader;
.super Ljava/io/FilterReader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field protected static final SKIP_NONE:Ljava/util/function/IntPredicate;


# instance fields
.field private final skip:Ljava/util/function/IntPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->SKIP_NONE:Ljava/util/function/IntPredicate;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 11
    sget-object v0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->SKIP_NONE:Ljava/util/function/IntPredicate;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p2, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->SKIP_NONE:Ljava/util/function/IntPredicate;

    .line 7
    .line 8
    :cond_0
    iput-object p2, p0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->skip:Ljava/util/function/IntPredicate;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic b(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->lambda$static$0(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$static$0(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method


# virtual methods
.method public filter(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->skip:Ljava/util/function/IntPredicate;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public read()I
    .locals 2

    .line 40
    :cond_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 41
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->filter(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v0
.end method

.method public read([CII)I
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterReader;->read([CII)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p3, v0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 10
    .line 11
    move v1, p2

    .line 12
    :goto_0
    add-int v2, p2, p3

    .line 13
    .line 14
    if-ge v1, v2, :cond_3

    .line 15
    .line 16
    aget-char v2, p1, v1

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->filter(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    if-ge v0, v1, :cond_2

    .line 28
    .line 29
    aget-char v2, p1, v1

    .line 30
    .line 31
    aput-char v2, p1, v0

    .line 32
    .line 33
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    sub-int/2addr v0, p2

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    return v0
.end method
