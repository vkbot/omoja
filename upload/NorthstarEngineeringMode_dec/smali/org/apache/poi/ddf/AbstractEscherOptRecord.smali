.class public abstract Lorg/apache/poi/ddf/AbstractEscherOptRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# instance fields
.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/AbstractEscherOptRecord;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    .line 5
    iget-object p0, p1, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherProperty;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lambda$removeEscherProperty$2(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherProperty;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/poi/ddf/AbstractEscherOptRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/ddf/EscherProperty;Lorg/apache/poi/ddf/EscherProperty;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lambda$setEscherProperty$1(Lorg/apache/poi/ddf/EscherProperty;Lorg/apache/poi/ddf/EscherProperty;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(ILorg/apache/poi/ddf/EscherProperty;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lambda$lookup$0(ILorg/apache/poi/ddf/EscherProperty;)Z

    move-result p0

    return p0
.end method

.method private getPropertiesSize()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertySize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$lookup$0(ILorg/apache/poi/ddf/EscherProperty;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$removeEscherProperty$2(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherProperty;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result p1

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherPropertyTypes;->propNumber:S

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setEscherProperty$1(Lorg/apache/poi/ddf/EscherProperty;Lorg/apache/poi/ddf/EscherProperty;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    if-ltz p3, :cond_0

    invoke-static {p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readInstance([BI)S

    move-result v0

    add-int/lit8 p2, p2, 0x8

    new-instance v1, Lorg/apache/poi/ddf/EscherPropertyFactory;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherPropertyFactory;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/poi/ddf/EscherPropertyFactory;->createProperties([BIS)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p3, p3, 0x8

    return p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid value for bytesRemaining: "

    invoke-static {p1, p3}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEscherProperties()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    return-object p0
.end method

.method public getEscherProperty(I)Lorg/apache/poi/ddf/EscherProperty;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherProperty;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "base"

    new-instance v1, Lorg/apache/poi/ddf/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string v3, "isContainer"

    new-instance v4, Lorg/apache/poi/ddf/c;

    invoke-direct {v4, v2, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v5, "properties"

    new-instance v6, Lorg/apache/poi/ddf/d;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getPropertiesSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public lookup(I)Lorg/apache/poi/ddf/EscherProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/e;

    invoke-direct {v0, p1}, Lorg/apache/poi/ddf/e;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherProperty;

    return-object p0
.end method

.method public lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">(",
            "Lorg/apache/poi/ddf/EscherPropertyTypes;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-short p1, p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->propNumber:S

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    return-object p0
.end method

.method public removeEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/m0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/archivers/zip/m0;-><init>(Ljava/io/Serializable;I)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getPropertiesSize()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v2, p2, v0}, Lorg/apache/poi/ddf/EscherProperty;->serializeSimplePart([BI)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v2, p2, v0}, Lorg/apache/poi/ddf/EscherProperty;->serializeComplexPart([BI)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    sub-int p1, v0, p1

    invoke-interface {p3, v0, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    new-instance v1, Lf/f;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lf/f;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->sortProperties()V

    return-void
.end method

.method public sortProperties()V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    new-instance v0, Lorg/apache/poi/ddf/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/a;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method
