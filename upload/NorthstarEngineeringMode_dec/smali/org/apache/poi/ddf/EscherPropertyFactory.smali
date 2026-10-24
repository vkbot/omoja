.class public final Lorg/apache/poi/ddf/EscherPropertyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createProperties([BIS)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIS)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_6

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    add-int/lit8 v3, p2, 0x2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    const v4, 0x8000

    and-int/2addr v4, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-static {v2}, Lorg/apache/poi/ddf/EscherPropertyTypes;->forPropertyID(I)Lorg/apache/poi/ddf/EscherPropertyTypes;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/ddf/EscherPropertyFactory$1;->$SwitchMap$org$apache$poi$ddf$EscherPropertyTypesHolder:[I

    iget-object v8, v6, Lorg/apache/poi/ddf/EscherPropertyTypes;->holder:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    if-eqz v4, :cond_2

    iget-object v4, v6, Lorg/apache/poi/ddf/EscherPropertyTypes;->holder:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    sget-object v6, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;->ARRAY:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    if-ne v4, v6, :cond_1

    new-instance v4, Lorg/apache/poi/ddf/a0;

    invoke-direct {v4, v5}, Lorg/apache/poi/ddf/a0;-><init>(I)V

    goto :goto_2

    :cond_1
    new-instance v4, Lorg/apache/poi/ddf/b0;

    invoke-direct {v4, v5}, Lorg/apache/poi/ddf/b0;-><init>(I)V

    goto :goto_2

    :cond_2
    new-instance v4, Lorg/apache/poi/ddf/c0;

    invoke-direct {v4, v5}, Lorg/apache/poi/ddf/c0;-><init>(I)V

    goto :goto_2

    :cond_3
    new-instance v4, Lorg/apache/poi/ddf/c0;

    invoke-direct {v4, v0}, Lorg/apache/poi/ddf/c0;-><init>(I)V

    goto :goto_2

    :cond_4
    new-instance v4, Lorg/apache/poi/ddf/b0;

    invoke-direct {v4, v0}, Lorg/apache/poi/ddf/b0;-><init>(I)V

    goto :goto_2

    :cond_5
    new-instance v4, Lorg/apache/poi/ddf/a0;

    invoke-direct {v4, v0}, Lorg/apache/poi/ddf/a0;-><init>(I)V

    :goto_2
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherProperty;

    instance-of v1, v0, Lorg/apache/poi/ddf/EscherArrayProperty;

    if-eqz v1, :cond_8

    check-cast v0, Lorg/apache/poi/ddf/EscherArrayProperty;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ddf/EscherArrayProperty;->setArrayData([BI)I

    move-result v0

    :goto_4
    add-int/2addr v0, p2

    move p2, v0

    goto :goto_3

    :cond_8
    instance-of v1, v0, Lorg/apache/poi/ddf/EscherComplexProperty;

    if-eqz v1, :cond_7

    check-cast v0, Lorg/apache/poi/ddf/EscherComplexProperty;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v2, p2

    if-lt v2, v1, :cond_9

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([BI)I

    move-result v0

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not read complex escher property, length was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", but had only "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes left"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    return-object p0
.end method
