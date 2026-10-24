.class public Lorg/apache/poi/hpsf/Property;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CODEPAGE:I = 0x4e4

.field private static final LOG:La5/d;


# instance fields
.field private id:J

.field private type:J

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/Property;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Property;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    iput-wide p3, p0, Lorg/apache/poi/hpsf/Property;->type:J

    iput-object p5, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JLorg/apache/poi/util/LittleEndianByteArrayInputStream;II)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->type:J

    long-to-int p1, p1

    int-to-long p1, p1

    .line 12
    :try_start_0
    invoke-static {p3, p4, p1, p2, p5}, Lorg/apache/poi/hpsf/VariantSupport;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;IJI)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnsupportedVariantTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/VariantTypeException;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    :goto_0
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    const-string p1, "Dictionary not allowed here"

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(J[BJII)V
    .locals 6

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    long-to-int p1, p4

    .line 5
    invoke-static {p3, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p4

    iput-wide p4, p0, Lorg/apache/poi/hpsf/Property;->type:J

    add-int/lit8 v1, p1, 0x4

    long-to-int p1, p4

    int-to-long v3, p1

    move-object v0, p3

    move v2, p6

    move v5, p7

    .line 6
    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/apache/poi/hpsf/VariantSupport;->read([BIIJI)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnsupportedVariantTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lorg/apache/poi/hpsf/VariantSupport;->writeUnsupportedTypeMessage(Lorg/apache/poi/hpsf/UnsupportedVariantTypeException;)V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/VariantTypeException;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    :goto_0
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    const-string p1, "Dictionary not allowed here"

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/Property;)V
    .locals 6

    .line 2
    iget-wide v1, p1, Lorg/apache/poi/hpsf/Property;->id:J

    iget-wide v3, p1, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object v5, p1, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hpsf/Property;-><init>(JJLjava/lang/Object;)V

    return-void
.end method

.method private decodeValueFromID()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    long-to-int v0, v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/LocaleUtil;->getLocaleFromLCID(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object v0, Lorg/apache/poi/hpsf/Property;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    invoke-static {}, Lg5/b0;->c()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "Can\'t decode id {}"

    invoke-interface {v0, p0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVariantName()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "dictionary"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Variant;->getVariantName(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private typesAreEqual(JJ)Z
    .locals 4

    cmp-long p0, p1, p3

    if-eqz p0, :cond_2

    const-wide/16 v0, 0x1e

    cmp-long p0, p1, v0

    const-wide/16 v2, 0x1f

    if-nez p0, :cond_0

    cmp-long p0, p3, v2

    if-eqz p0, :cond_2

    :cond_0
    cmp-long p0, p3, v0

    if-nez p0, :cond_1

    cmp-long p0, p1, v2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static unpaddedLength([B)I
    .locals 3

    array-length v0, p0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x3

    rem-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    array-length v1, p0

    :goto_0
    if-le v1, v0, :cond_1

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p0, v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/apache/poi/hpsf/Property;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hpsf/Property;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/poi/hpsf/Property;->id:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/poi/hpsf/Property;->typesAreEqual(JJ)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_9

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    instance-of p1, p0, [B

    if-eqz p1, :cond_8

    check-cast p0, [B

    check-cast v0, [B

    invoke-static {p0}, Lorg/apache/poi/hpsf/Property;->unpaddedLength([B)I

    move-result p1

    invoke-static {v0}, Lorg/apache/poi/hpsf/Property;->unpaddedLength([B)I

    move-result v3

    if-eq p1, v3, :cond_5

    return v1

    :cond_5
    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_7

    aget-byte v4, p0, v3

    aget-byte v5, v0, v3

    if-eq v4, v5, :cond_6

    return v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v2

    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    :goto_1
    return v1
.end method

.method public getID()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->id:J

    return-wide v0
.end method

.method public getSize(I)I
    .locals 5

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/Variant;->getVariantLength(J)I

    move-result v0

    if-gez v0, :cond_4

    iget-wide v1, p0, Lorg/apache/poi/hpsf/Property;->type:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, -0x2

    if-eq v0, v3, :cond_3

    const-wide/16 v3, 0x1e

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x1f

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object p0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p0}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hpsf/Property;->write(Ljava/io/OutputStream;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, -0x8

    and-int/lit8 p1, p0, 0x3

    rsub-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0x3

    add-int/2addr p0, p1

    return p0

    :catch_0
    new-instance p1, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    iget-object p0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p0}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/poi/hpsf/WritingNotSupportedException;

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    const/4 p0, 0x0

    invoke-direct {p1, v0, v1, p0}, Lorg/apache/poi/hpsf/WritingNotSupportedException;-><init>(JLjava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    return v0
.end method

.method public getType()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->type:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lorg/apache/poi/hpsf/Property;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/poi/hpsf/Property;->type:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setID(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    return-void
.end method

.method public setType(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hpsf/Property;->type:J

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x4e4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Property;->toString(ILorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(ILorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;
    .locals 9

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Property[id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    .line 5
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getFallbackProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object p2

    iget-wide v1, p0, Lorg/apache/poi/hpsf/Property;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v1, ")"

    const-string v2, " ("

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p2, ", type: "

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Property;->getVariantName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") , value: "

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 15
    instance-of v3, p2, Ljava/lang/String;

    const-string v4, "\n"

    if-eqz v3, :cond_3

    .line 16
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    sget p2, Lorg/apache/commons/io/output/j;->c:I

    .line 19
    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object p2

    .line 20
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/hpsf/Property;->write(Ljava/io/OutputStream;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/hpsf/Property;->LOG:La5/d;

    .line 21
    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "can\'t serialize string"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    .line 22
    :goto_1
    invoke-virtual {p2}, Lorg/apache/commons/io/output/j;->size()I

    move-result p0

    const/16 p1, 0x8

    if-le p0, p1, :cond_a

    .line 23
    invoke-virtual {p2}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0

    const-wide/16 v1, -0x8

    .line 24
    invoke-static {p0, v1, v2, p1}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 26
    :cond_3
    instance-of p1, p2, [B

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_4

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    check-cast p2, [B

    .line 29
    array-length p0, p2

    if-lez p0, :cond_a

    const/4 p0, 0x0

    .line 30
    invoke-static {p2, v5, v6, p0}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 32
    :cond_4
    instance-of p1, p2, Ljava/util/Date;

    if-eqz p1, :cond_7

    .line 33
    check-cast p2, Ljava/util/Date;

    .line 34
    invoke-static {p2}, Lorg/apache/poi/hpsf/Filetime;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide p0

    .line 35
    invoke-static {p2}, Lorg/apache/poi/hpsf/Filetime;->isUndefined(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "<undefined>"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_5
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_6

    const-wide/16 v1, 0x64

    mul-long/2addr p0, v1

    .line 37
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v1

    .line 39
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sub-long/2addr p0, v3

    .line 40
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    .line 41
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    sub-long/2addr p0, v5

    .line 42
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    .line 43
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    sub-long/2addr p0, v7

    .line 44
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    .line 45
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d:%02d.%03d"

    invoke-static {p2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 47
    :cond_6
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {p0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 48
    sget-object p1, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 49
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    iget-wide v3, p0, Lorg/apache/poi/hpsf/Property;->type:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_9

    const-wide/16 v5, 0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_9

    if-nez p2, :cond_8

    goto :goto_2

    .line 50
    :cond_8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p0}, Lorg/apache/poi/hpsf/Property;->decodeValueFromID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    :goto_2
    const-string p0, "null"

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_3
    const/16 p0, 0x5d

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/OutputStream;I)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getType()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/16 v2, 0x4b0

    if-eq p2, v2, :cond_1

    if-lez p2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    const/16 v2, 0x4e4

    :goto_0
    invoke-static {v2}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hpsf/Property;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x1f

    :cond_1
    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, p0, p2}, Lorg/apache/poi/hpsf/VariantSupport;->write(Ljava/io/OutputStream;JLjava/lang/Object;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method
