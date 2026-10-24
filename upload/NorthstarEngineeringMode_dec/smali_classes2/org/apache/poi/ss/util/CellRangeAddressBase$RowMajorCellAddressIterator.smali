.class Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/CellRangeAddressBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowMajorCellAddressIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/ss/util/CellAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private c:I

.field private final firstCol:I

.field private final firstRow:I

.field private final lastCol:I

.field private final lastRow:I

.field private r:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/util/CellRangeAddressBase;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->firstRow:I

    iput v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->r:I

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->firstCol:I

    iput v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->c:I

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->lastRow:I

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->lastCol:I

    if-ltz v0, :cond_3

    if-ltz v1, :cond_2

    if-gt v0, v2, :cond_1

    if-gt v1, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "First column cannot be greater than last column."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "First row cannot be greater than last row."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "First column cannot be negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "First row cannot be negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->r:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->lastRow:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->c:I

    iget p0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->lastCol:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->next()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/poi/ss/util/CellAddress;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->r:I

    iget v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->c:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->c:I

    iget v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->lastCol:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->c:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->firstCol:I

    iput v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->c:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase$RowMajorCellAddressIterator;->r:I

    :goto_0
    return-object v0

    .line 4
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
