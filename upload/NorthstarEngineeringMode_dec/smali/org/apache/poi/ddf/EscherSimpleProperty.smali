.class public Lorg/apache/poi/ddf/EscherSimpleProperty;
.super Lorg/apache/poi/ddf/EscherProperty;
.source "SourceFile"


# instance fields
.field private final propertyValue:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZZI)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZZI)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ddf/EscherProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZZ)V

    iput p4, p0, Lorg/apache/poi/ddf/EscherSimpleProperty;->propertyValue:I

    return-void
.end method

.method public constructor <init>(SI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherProperty;-><init>(S)V

    iput p2, p0, Lorg/apache/poi/ddf/EscherSimpleProperty;->propertyValue:I

    return-void
.end method

.method public constructor <init>(SZZI)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ddf/EscherProperty;-><init>(SZZ)V

    iput p4, p0, Lorg/apache/poi/ddf/EscherSimpleProperty;->propertyValue:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherSimpleProperty;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherProperty;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    iget v1, p0, Lorg/apache/poi/ddf/EscherSimpleProperty;->propertyValue:I

    iget v3, p1, Lorg/apache/poi/ddf/EscherSimpleProperty;->propertyValue:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result p1

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ddf/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lorg/apache/poi/ddf/d;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "base"

    const-string/jumbo v1, "value"

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyValue()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSimpleProperty;->propertyValue:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSimpleProperty;->propertyValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public serializeComplexPart([BI)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public serializeSimplePart([BI)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 p2, p2, 0x2

    iget p0, p0, Lorg/apache/poi/ddf/EscherSimpleProperty;->propertyValue:I

    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 p0, 0x6

    return p0
.end method
