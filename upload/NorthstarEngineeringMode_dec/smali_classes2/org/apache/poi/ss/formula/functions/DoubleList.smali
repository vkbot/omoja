.class final Lorg/apache/poi/ss/formula/functions/DoubleList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EMPTY_DOUBLE_ARRAY:[D


# instance fields
.field private _array:[D

.field private _count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [D

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DoubleList;->EMPTY_DOUBLE_ARRAY:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_array:[D

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_count:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_array:[D

    array-length v1, v0

    if-le p1, v1, :cond_0

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_array:[D

    :cond_0
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/DoubleList;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_array:[D

    iget v1, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_count:I

    aput-wide p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_count:I

    return-void
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_count:I

    return p0
.end method

.method public toArray()[D
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_count:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/DoubleList;->_array:[D

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    :goto_0
    return-object p0
.end method
