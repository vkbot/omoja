.class public final Lorg/apache/poi/ddf/EscherContainerRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ddf/EscherRecord;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/ddf/EscherRecord;",
        ">;"
    }
.end annotation


# static fields
.field public static final BSTORE_CONTAINER:S

.field public static final DGG_CONTAINER:S

.field public static final DG_CONTAINER:S

.field private static final LOGGER:La5/d;

.field private static final MAX_NESTED_CHILD_NODES:I = 0x3e8

.field public static final SOLVER_CONTAINER:S

.field public static final SPGR_CONTAINER:S

.field public static final SP_CONTAINER:S


# instance fields
.field private final _childRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field

.field private _remainingLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->DGG_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherContainerRecord;->DGG_CONTAINER:S

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BSTORE_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherContainerRecord;->BSTORE_CONTAINER:S

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->DG_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherContainerRecord;->DG_CONTAINER:S

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPGR_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherContainerRecord;->SPGR_CONTAINER:S

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SP_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherContainerRecord;->SP_CONTAINER:S

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SOLVER_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherContainerRecord;->SOLVER_CONTAINER:S

    const-class v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherContainerRecord;->LOGGER:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    .line 5
    iget v1, p1, Lorg/apache/poi/ddf/EscherContainerRecord;->_remainingLength:I

    iput v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_remainingLength:I

    .line 6
    iget-object p0, p1, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/ddf/q;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/ddf/q;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(SLorg/apache/poi/ddf/EscherRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->lambda$hasChildOfType$0(SLorg/apache/poi/ddf/EscherRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$hasChildOfType$0(SLorg/apache/poi/ddf/EscherRecord;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addChildBefore(Lorg/apache/poi/ddf/EscherRecord;I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    int-to-short v3, p2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->copy()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->copy()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    return-object p0
.end method

.method public display(Ljava/io/PrintWriter;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;I)I

    move-result p0

    return p0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;I)I
    .locals 5

    const/16 v0, 0x3e8

    if-gt p4, v0, :cond_4

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result v0

    const/16 v1, 0x8

    add-int/2addr p2, v1

    :cond_0
    :goto_0
    if-lez v0, :cond_3

    .line 3
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 4
    invoke-interface {p3, p1, p2}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v3, :cond_1

    .line 6
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v3, p1, p2, p3, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;I)I

    move-result v3

    goto :goto_1

    .line 7
    :cond_1
    instance-of v3, v2, Lorg/apache/poi/ddf/UnknownEscherRecord;

    if-eqz v3, :cond_2

    .line 8
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ddf/UnknownEscherRecord;

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v3, p1, p2, p3, v4}, Lorg/apache/poi/ddf/UnknownEscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;I)I

    move-result v3

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    add-int/2addr p2, v3

    sub-int/2addr v0, v3

    .line 10
    invoke-virtual {p0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 11
    array-length v2, p1

    if-lt p2, v2, :cond_0

    if-lez v0, :cond_0

    iput v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_remainingLength:I

    sget-object v2, Lorg/apache/poi/ddf/EscherContainerRecord;->LOGGER:La5/d;

    .line 12
    invoke-interface {v2}, La5/d;->g()La5/b;

    move-result-object v2

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Not enough Escher data: {} bytes remaining but no space left"

    invoke-interface {v2, v3, v4}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return v1

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Had more than the limit of 1000 nested child notes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getChild(I)Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherRecord;

    return-object p0
.end method

.method public getChildById(S)Lorg/apache/poi/ddf/EscherRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">(S)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildContainers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    instance-of v2, v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getChildCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getChildRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
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

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lorg/apache/poi/ddf/d;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "base"

    const-string v1, "isContainer"

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherRecordTypes;->UNKNOWN:Lorg/apache/poi/ddf/EscherRecordTypes;

    if-eq v0, v1, :cond_0

    iget-object p0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Container 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRecordSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getRecordsById(SLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    instance-of v1, v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordsById(SLjava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hasChildOfType(S)Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/p;

    invoke-direct {v0, p1}, Lorg/apache/poi/ddf/p;-><init>(S)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
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

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_remainingLength:I

    add-int/2addr v1, v0

    add-int/lit8 v0, p1, 0x4

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v2, v0, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

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

.method public setChildRecords(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    if-eq p1, v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Child records private data member has escaped"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
