.class abstract Lorg/apache/mina/util/byteaccess/AbstractByteArray;
.super Ljava/lang/Object;
.source "AbstractByteArray.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 52
    return v0

    .line 56
    :cond_0
    instance-of v1, p1, Lorg/apache/mina/util/byteaccess/ByteArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 57
    return v2

    .line 60
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/mina/util/byteaccess/ByteArray;

    .line 63
    .local v1, "otherByteArray":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->first()I

    move-result v3

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v4

    if-ne v3, v4, :cond_7

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->last()I

    move-result v3

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 64
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v3

    .line 70
    .local v3, "cursor":Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v4

    .line 72
    .local v4, "otherCursor":Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v5

    .local v5, "remaining":I
    :goto_0
    if-lez v5, :cond_6

    .line 74
    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    .line 75
    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v6

    .line 76
    .local v6, "i":I
    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v7

    .line 78
    .local v7, "otherI":I
    if-eq v6, v7, :cond_3

    .line 79
    return v2

    .line 81
    .end local v6    # "i":I
    .end local v7    # "otherI":I
    :cond_3
    goto :goto_0

    .line 82
    :cond_4
    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v6

    .line 83
    .local v6, "b":B
    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v7

    .line 85
    .local v7, "otherB":B
    if-eq v6, v7, :cond_5

    .line 86
    return v2

    .line 88
    .end local v6    # "b":B
    .end local v7    # "otherB":B
    :cond_5
    goto :goto_0

    .line 91
    .end local v5    # "remaining":I
    :cond_6
    return v0

    .line 65
    .end local v3    # "cursor":Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .end local v4    # "otherCursor":Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    :cond_7
    :goto_1
    return v2
.end method

.method public abstract hashCode()I
.end method

.method public final length()I
    .locals 2

    .line 35
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->last()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->first()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
