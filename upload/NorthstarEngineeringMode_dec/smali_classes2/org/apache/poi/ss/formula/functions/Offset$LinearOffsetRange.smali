.class final Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Offset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinearOffsetRange"
.end annotation


# instance fields
.field private final _length:I

.field private final _offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput p1, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    iput p2, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_length:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "length may not be zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFirstIndex()S
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    int-to-short p0, p0

    return p0
.end method

.method public getLastIndex()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_length:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    int-to-short p0, v0

    return p0
.end method

.method public isOutOfBounds(II)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    if-lt v0, p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->getLastIndex()S

    move-result p0

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public normaliseAndTranslate(I)Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_length:I

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    add-int/2addr p1, p0

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;-><init>(II)V

    return-object v1

    :cond_1
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    add-int/2addr p1, p0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    neg-int p0, v0

    invoke-direct {v1, p1, p0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;-><init>(II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    const-string v2, " ["

    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->getLastIndex()S

    move-result p0

    const-string v1, "]"

    invoke-static {v0, p0, v1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
