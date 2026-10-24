.class public Lorg/apache/poi/hpsf/Section;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final _offset:J

.field private dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private formatID:Lorg/apache/poi/hpsf/ClassID;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/hpsf/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final sectionBytes:Lorg/apache/commons/io/output/j;

.field private transient wasNull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/Section;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Section;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    .line 3
    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Section;->_offset:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Section;)V
    .locals 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    .line 13
    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Section;->_offset:J

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 16
    iget-object v0, p1, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Property;

    iget-object v2, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    .line 17
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/hpsf/Property;

    invoke-direct {v4, v1}, Lorg/apache/poi/hpsf/Property;-><init>(Lorg/apache/poi/hpsf/Property;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/Section;->setDictionary(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v3, Lorg/apache/commons/io/output/j;->c:I

    .line 39
    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    .line 40
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    .line 41
    new-instance v3, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v3, v0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    add-int/lit8 v2, v2, 0x10

    .line 42
    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    long-to-int v2, v2

    .line 43
    aget-byte v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_0

    .line 44
    aget-byte v6, v1, v2

    if-nez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_2

    add-int/lit8 v6, v2, 0x3

    .line 45
    aget-byte v6, v1, v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v1, v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v2, 0xb

    aget-byte v6, v1, v6

    if-eqz v6, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    int-to-long v5, v2

    iput-wide v5, v0, Lorg/apache/poi/hpsf/Section;->_offset:J

    .line 46
    new-instance v3, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    .line 47
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v7

    array-length v2, v1

    int-to-long v9, v2

    sub-long/2addr v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v2, v5

    .line 48
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v5

    long-to-int v5, v5

    .line 49
    new-instance v6, La4/b;

    invoke-direct {v6}, La4/b;-><init>()V

    :goto_2
    const/4 v13, 0x1

    if-ge v4, v5, :cond_3

    .line 50
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v7

    .line 51
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v9

    .line 52
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 53
    invoke-static {v9, v13}, La4/b;->a(Ljava/lang/Object;I)V

    .line 54
    invoke-virtual {v6, v9, v13}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    .line 55
    invoke-virtual {v6, v9, v7}, La4/b;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x1

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, La4/b;->k(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_5

    iget-wide v8, v0, Lorg/apache/poi/hpsf/Section;->_offset:J

    .line 57
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->toIntExact(J)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->setReadIndex(I)V

    .line 58
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v7

    const-wide/16 v9, 0x2

    cmp-long v9, v7, v9

    if-nez v9, :cond_4

    .line 59
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result v7

    .line 60
    invoke-virtual {v0, v7}, Lorg/apache/poi/hpsf/Section;->setCodepage(I)V

    :goto_3
    move v14, v7

    goto :goto_4

    .line 61
    :cond_4
    new-instance v0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value type of property ID 1 is not VT_I2 but "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v7, -0x1

    goto :goto_3

    .line 62
    :goto_4
    invoke-virtual {v6}, La4/b;->entrySet()Ljava/util/Set;

    move-result-object v7

    check-cast v7, La4/b$a;

    invoke-virtual {v7}, La4/b$a;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 64
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v10, v4

    if-nez v7, :cond_6

    goto :goto_5

    .line 65
    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    int-to-long v4, v2

    invoke-static {v6, v7, v4, v5}, Lorg/apache/poi/hpsf/Section;->propLen(La4/b;Ljava/lang/Long;J)I

    move-result v4

    move v5, v14

    iget-wide v13, v0, Lorg/apache/poi/hpsf/Section;->_offset:J

    add-long/2addr v13, v8

    .line 66
    invoke-static {v13, v14}, Ljava/lang/Math;->toIntExact(J)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->setReadIndex(I)V

    const-wide/16 v7, 0x0

    cmp-long v7, v10, v7

    if-nez v7, :cond_a

    const v7, 0x186a0

    .line 67
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->mark(I)V

    .line 68
    invoke-direct {v0, v3, v4, v5}, Lorg/apache/poi/hpsf/Section;->readDictionary(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;II)Z

    move-result v7

    if-nez v7, :cond_9

    .line 69
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    :try_start_0
    iget-object v7, v6, La4/b;->c1:La4/b$b;

    if-nez v7, :cond_7

    .line 70
    new-instance v7, La4/b$b;

    invoke-direct {v7, v6}, La4/b$b;-><init>(La4/b;)V

    iput-object v7, v6, La4/b;->c1:La4/b$b;

    :cond_7
    iget-object v7, v6, La4/b;->c1:La4/b$b;

    .line 71
    iget-object v7, v7, La4/b$b;->y:La4/b;

    .line 72
    iget v8, v7, La4/b;->r:I

    if-eqz v8, :cond_8

    .line 73
    iget-object v7, v7, La4/b;->c:[La4/b$g;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v13, 0x1

    :try_start_1
    aget-object v7, v7, v13

    const/4 v8, 0x2

    .line 74
    invoke-static {v7, v8}, La4/b;->r(La4/b$g;I)La4/b$g;

    move-result-object v7

    .line 75
    iget-object v7, v7, La4/b$g;->r:Ljava/lang/Comparable;

    .line 76
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x1f

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v16, 0x1

    add-long v8, v7, v16

    .line 77
    :try_start_2
    new-instance v14, Lorg/apache/poi/hpsf/Property;

    move-object v7, v14

    move-object v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hpsf/Property;-><init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V

    invoke-virtual {v0, v14}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    goto :goto_8

    :catch_0
    :goto_6
    const-wide/16 v16, 0x1

    goto :goto_7

    :catch_1
    const/4 v13, 0x1

    goto :goto_6

    :cond_8
    const/4 v13, 0x1

    const-wide/16 v16, 0x1

    .line 78
    new-instance v4, Ljava/util/NoSuchElementException;

    const-string v7, "Map is empty"

    invoke-direct {v4, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_7
    sget-object v4, Lorg/apache/poi/hpsf/Section;->LOG:La5/d;

    .line 79
    invoke-interface {v4}, La5/d;->f()La5/b;

    move-result-object v4

    const-string v7, "Dictionary fallback failed - ignoring property"

    invoke-interface {v4, v7}, La5/b;->f(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    const/4 v13, 0x1

    const-wide/16 v16, 0x1

    goto :goto_8

    :cond_a
    const/4 v13, 0x1

    const-wide/16 v16, 0x1

    .line 80
    new-instance v14, Lorg/apache/poi/hpsf/Property;

    move-object v7, v14

    move-wide v8, v10

    move-object v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hpsf/Property;-><init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V

    invoke-virtual {v0, v14}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    :goto_8
    move v14, v5

    move-wide/from16 v4, v16

    goto/16 :goto_5

    :cond_b
    iget-object v3, v0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    iget-wide v4, v0, Lorg/apache/poi/hpsf/Section;->_offset:J

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v4

    invoke-virtual {v3, v1, v4, v2}, Lorg/apache/commons/io/output/j;->write([BII)V

    .line 82
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/hpsf/Section;->padSectionBytes()V

    return-void
.end method

.method private calcSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->resetImpl()V

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->write(Ljava/io/OutputStream;)I

    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;->padSectionBytes()V

    iget-object p0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/j;->size()I

    move-result p0

    return p0
.end method

.method private padSectionBytes()V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iget-object v2, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    invoke-virtual {v2}, Lorg/apache/commons/io/output/j;->size()I

    move-result v2

    and-int/2addr v2, v0

    rsub-int/lit8 v2, v2, 0x4

    and-int/2addr v0, v2

    iget-object p0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/io/output/j;->write([BII)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static propLen(La4/b;Ljava/lang/Long;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La4/b<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "J)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p1, v0}, La4/b;->a(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object p0

    invoke-static {p0, v0}, La4/b;->y(La4/b$g;I)La4/b$g;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, La4/b$g;->c:Ljava/lang/Comparable;

    :goto_0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_1
    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method

.method private readDictionary(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;II)Z
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    int-to-long v8, v7

    cmp-long v8, v8, v2

    if-gez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "The property set\'s dictionary contains bogus data. All dictionary entries starting with the one with ID "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " will be ignored."

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v12

    const/4 v5, -0x1

    move/from16 v8, p3

    if-ne v8, v5, :cond_0

    const/16 v5, 0x4e4

    goto :goto_1

    :cond_0
    move v5, v8

    :goto_1
    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    const/16 v14, 0x4b0

    if-ne v5, v14, :cond_1

    const/4 v9, 0x2

    goto :goto_2

    :cond_1
    const/4 v9, 0x1

    :goto_2
    int-to-long v14, v9

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toIntExact(J)I

    move-result v9

    const v12, 0xffffff

    if-le v9, v12, :cond_3

    sget-object v0, Lorg/apache/poi/hpsf/Section;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-interface {v0, v4}, La5/b;->f(Ljava/lang/String;)V

    :goto_3
    const/4 v6, 0x1

    :cond_2
    move-object/from16 v2, p0

    goto :goto_5

    :cond_3
    int-to-long v12, v9

    :try_start_0
    invoke-static {}, Lorg/apache/poi/hpsf/CodePageString;->getMaxRecordLength()I

    move-result v14

    invoke-static {v12, v13, v14}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v12

    invoke-virtual {v0, v12, v6, v9}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    invoke-static {v12, v6, v9, v5}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BIII)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x4b0

    if-ne v5, v13, :cond_4

    add-int/lit8 v9, v9, 0x2

    and-int/lit8 v5, v9, 0x3

    rsub-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    const/4 v9, 0x2

    add-int/2addr v5, v9

    goto :goto_4

    :cond_4
    const/4 v5, 0x1

    :goto_4
    int-to-long v13, v5

    invoke-static {v0, v13, v14}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    move-wide v4, v10

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lorg/apache/poi/hpsf/Section;->LOG:La5/d;

    invoke-interface {v2}, La5/d;->g()La5/b;

    move-result-object v2

    invoke-interface {v2, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    invoke-interface {v0, v4}, La5/b;->f(Ljava/lang/String;)V

    goto :goto_3

    :goto_5
    invoke-virtual {v2, v1}, Lorg/apache/poi/hpsf/Section;->setDictionary(Ljava/util/Map;)V

    const/4 v1, 0x1

    xor-int/lit8 v0, v6, 0x1

    return v0
.end method

.method private writeDictionary(Ljava/io/OutputStream;I)V
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "\u0000"

    invoke-static {v5, v3, v6}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object v5

    const/16 v6, 0x4b0

    if-ne p2, v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    :cond_0
    array-length v3, v5

    :goto_1
    int-to-long v7, v3

    invoke-static {v7, v8, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    array-length v3, v5

    add-int/2addr v2, v3

    if-ne p2, v6, :cond_1

    and-int/lit8 v3, v2, 0x3

    rsub-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_2
    invoke-virtual {p1, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    and-int/lit8 p0, v2, 0x3

    sub-int/2addr v0, p0

    and-int/lit8 p0, v0, 0x3

    invoke-virtual {p1, v1, v4, p0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/hpsf/Section;->removeProperty(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/apache/poi/hpsf/Section;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p1, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hpsf/Property;

    iget-object v4, p1, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Property;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Lorg/apache/poi/hpsf/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object p1

    if-nez p0, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public getCodepage()I
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getDictionary()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    return-object p0
.end method

.method public getFormatID()Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    return-object p0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Section;->_offset:J

    return-wide v0
.end method

.method public getPIDString(J)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/hpsf/SummaryInformation;->FORMAT_ID:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v1, p0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->FORMAT_ID:[Lorg/apache/poi/hpsf/ClassID;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p0, "[undefined]"

    :goto_1
    return-object p0
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/hpsf/Property;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hpsf/Property;

    return-object p0
.end method

.method public getProperty(J)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/Property;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPropertyBooleanValue(I)Z
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPropertyCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getPropertyIntValue(J)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of p1, p0, Ljava/lang/Long;

    if-nez p1, :cond_2

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "This property is not an integer type, but "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j;->size()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Section;->calcSize()I

    move-result p0
    :try_end_0
    .catch Lorg/apache/poi/hpsf/HPSFRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public removeProperty(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->resetImpl()V

    :cond_0
    return-void
.end method

.method public setCodepage(I)V
    .locals 3

    const-wide/16 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public setDictionary(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x4e4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setCodepage(I)V

    :cond_1
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->removeProperty(J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/hpsf/Section;->dictionary:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public setFormatID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/hpsf/Section;->formatID:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public setFormatID([B)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/ClassID;->setBytes([B)V

    return-void
.end method

.method public setProperties([Lorg/apache/poi/hpsf/Property;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProperty(II)V
    .locals 2

    const-wide/16 v0, 0x3

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public setProperty(IJ)V
    .locals 2

    const-wide/16 v0, 0x14

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public setProperty(IJLjava/lang/Object;)V
    .locals 7

    .line 5
    new-instance v6, Lorg/apache/poi/hpsf/Property;

    int-to-long v1, p1

    move-object v0, v6

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hpsf/Property;-><init>(JJLjava/lang/Object;)V

    invoke-virtual {p0, v6}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    return-void
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 2

    .line 10
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 11
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 13
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hpsf/Section;->setProperty(IJ)V

    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 15
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(II)V

    goto :goto_0

    .line 16
    :cond_2
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 17
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(II)V

    goto :goto_0

    .line 18
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 19
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IZ)V

    goto :goto_0

    .line 20
    :cond_4
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x40

    .line 21
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    :goto_0
    return-void

    .line 22
    :cond_5
    new-instance p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "HPSF does not support properties of type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProperty(ILjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1e

    .line 1
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public setProperty(IZ)V
    .locals 2

    const-wide/16 v0, 0xb

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lorg/apache/poi/hpsf/Property;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Property;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->resetImpl()V

    :cond_1
    return-void
.end method

.method public setPropertyBooleanValue(IZ)V
    .locals 2

    const-wide/16 v0, 0xb

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/poi/hpsf/Section;->setProperty(IJLjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->toString(Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[formatID: "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offset: "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", propertyCount: "

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getPropertyCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size: "

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", properties: [\n"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    const/16 p0, 0x4e4

    .line 15
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 16
    invoke-virtual {v4, p0, p1}, Lorg/apache/poi/hpsf/Property;->toString(ILorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",\n"

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]]"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wasNull()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hpsf/Section;->wasNull:Z

    return p0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 14

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/a;->writeToImpl(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/Section;->sectionBytes:Lorg/apache/commons/io/output/j;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/j;->size()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/hpsf/Section;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v2, "The codepage property is not set although a dictionary is present. Defaulting to ISO-8859-1."

    invoke-interface {v0, v2}, La5/b;->f(Ljava/lang/String;)V

    const/16 v0, 0x4e4

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v3

    :try_start_0
    new-instance v4, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v4, v3}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    iget-object v5, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    iget-object v5, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hpsf/Property;

    invoke-virtual {v8}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeUInt(J)V

    add-int/lit8 v8, v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v3}, Lorg/apache/commons/io/output/j;->size()I

    move-result v9

    aput v9, v7, v6

    invoke-virtual {v4, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    move v7, v8

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hpsf/Section;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v6

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hpsf/Property;

    add-int/lit8 v9, v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v3}, Lorg/apache/commons/io/output/j;->size()I

    move-result v10

    aput v10, v5, v8

    invoke-virtual {v7}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_3

    invoke-virtual {v7, v3, v0}, Lorg/apache/poi/hpsf/Property;->write(Ljava/io/OutputStream;I)I

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3, v0}, Lorg/apache/poi/hpsf/Section;->writeDictionary(Ljava/io/OutputStream;I)V

    :goto_2
    move v5, v9

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0

    invoke-virtual {v3}, Lorg/apache/commons/io/output/j;->size()I

    move-result v0

    invoke-static {p0, v6, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    array-length v0, v2

    move v1, v6

    :goto_3
    if-ge v1, v0, :cond_5

    aget-object v5, v2, v1

    aget v7, v5, v6

    aget v5, v5, v8

    int-to-long v9, v5

    invoke-static {p0, v7, v9, v10}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Lorg/apache/commons/io/output/j;->size()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3}, Lorg/apache/commons/io/output/a;->close()V

    return p0

    :catchall_1
    move-exception p0

    goto :goto_6

    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_7
    invoke-virtual {v3}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1
.end method
