.class public abstract Lorg/apache/poi/ddf/EscherProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field private static final FLAG_MASK:[I

.field private static final FLAG_NAMES:[Ljava/lang/String;

.field static final IS_BLIP:I = 0x4000

.field static final IS_COMPLEX:I = 0x8000


# instance fields
.field private final id:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x4000

    const v1, 0x8000

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherProperty;->FLAG_MASK:[I

    const-string v0, "IS_BLIP"

    const-string v1, "IS_COMPLEX"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherProperty;->FLAG_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZZ)V
    .locals 1

    .line 3
    iget-short p1, p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->propNumber:S

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const p2, 0x8000

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    or-int/2addr p1, p2

    if-eqz p3, :cond_1

    const/16 v0, 0x4000

    :cond_1
    or-int/2addr p1, v0

    int-to-short p1, p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherProperty;-><init>(S)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherProperty;->id:S

    return-void
.end method

.method public constructor <init>(SZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const p2, 0x8000

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    or-int/2addr p1, p2

    if-eqz p3, :cond_1

    const/16 v0, 0x4000

    :cond_1
    or-int/2addr p1, v0

    int-to-short p1, p1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherProperty;-><init>(S)V

    return-void
.end method


# virtual methods
.method public getGenericChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/common/usermodel/GenericRecord;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "id"

    new-instance v1, Lorg/apache/poi/ddf/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/ddf/y;-><init>(ILorg/apache/poi/ddf/EscherProperty;)V

    const-string v3, "name"

    new-instance v4, Lorg/apache/poi/ddf/z;

    invoke-direct {v4, v2, p0}, Lorg/apache/poi/ddf/z;-><init>(ILorg/apache/poi/ddf/EscherProperty;)V

    const-string/jumbo v5, "propertyNumber"

    new-instance v6, Lorg/apache/poi/ddf/b;

    const/4 v2, 0x4

    invoke-direct {v6, v2, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v7, "propertySize"

    new-instance v8, Lorg/apache/poi/ddf/y;

    const/4 v2, 0x1

    invoke-direct {v8, v2, p0}, Lorg/apache/poi/ddf/y;-><init>(ILorg/apache/poi/ddf/EscherProperty;)V

    const-string v9, "flags"

    new-instance v10, Lorg/apache/poi/ddf/z;

    invoke-direct {v10, v2, p0}, Lorg/apache/poi/ddf/z;-><init>(ILorg/apache/poi/ddf/EscherProperty;)V

    sget-object p0, Lorg/apache/poi/ddf/EscherProperty;->FLAG_MASK:[I

    sget-object v2, Lorg/apache/poi/ddf/EscherProperty;->FLAG_NAMES:[Ljava/lang/String;

    invoke-static {v10, p0, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getGenericRecordType()Lorg/apache/poi/ddf/EscherPropertyTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/ddf/EscherPropertyTypes;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherProperty;->id:S

    .line 2
    invoke-static {p0}, Lorg/apache/poi/ddf/EscherPropertyTypes;->forPropertyID(I)Lorg/apache/poi/ddf/EscherPropertyTypes;

    move-result-object p0

    return-object p0
.end method

.method public getId()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherProperty;->id:S

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherPropertyTypes;->forPropertyID(I)Lorg/apache/poi/ddf/EscherPropertyTypes;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherPropertyTypes;->propName:Ljava/lang/String;

    return-object p0
.end method

.method public getPropertyNumber()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherProperty;->id:S

    and-int/lit16 p0, p0, 0x3fff

    int-to-short p0, p0

    return p0
.end method

.method public getPropertySize()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public isBlipId()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherProperty;->id:S

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isComplex()Z
    .locals 1

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherProperty;->id:S

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract serializeComplexPart([BI)I
.end method

.method public abstract serializeSimplePart([BI)I
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
