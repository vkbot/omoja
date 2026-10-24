.class public Lorg/apache/poi/hpsf/Vector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _type:S

.field private _values:[Lorg/apache/poi/hpsf/TypedPropertyValue;


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/poi/hpsf/Vector;->_type:S

    return-void
.end method


# virtual methods
.method public getValues()[Lorg/apache/poi/hpsf/TypedPropertyValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/Vector;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    return-object p0
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    long-to-int v0, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-short v2, p0, Lorg/apache/poi/hpsf/Vector;->_type:S

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    :cond_0
    move v3, v4

    :goto_0
    if-ge v3, v0, :cond_2

    new-instance v5, Lorg/apache/poi/hpsf/TypedPropertyValue;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    if-nez v2, :cond_1

    invoke-virtual {v5, p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, p1}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v4, [Lorg/apache/poi/hpsf/TypedPropertyValue;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hpsf/TypedPropertyValue;

    iput-object p1, p0, Lorg/apache/poi/hpsf/Vector;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Vector is too long -- "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
