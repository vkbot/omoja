.class public final Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;
.implements Lorg/apache/poi/ss/usermodel/Drawing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;",
        "Lorg/apache/poi/ss/usermodel/Drawing<",
        "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
        ">;"
    }
.end annotation


# instance fields
.field private _boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

.field private final _mainSpgrContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

.field private final _shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation
.end field

.field private final _sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

.field private final _spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    const-string p1, "Could not read mainSpgrContainer from "

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ddf/EscherContainerRecord;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_mainSpgrContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/poi/ddf/EscherContainerRecord;

    sget-short p2, Lorg/apache/poi/ddf/EscherSpgrRecord;->RECORD_ID:S

    invoke-virtual {p1, p2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ddf/EscherSpgrRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->buildShapeTree()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Did not have a EscherContainerRecord: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static createPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    new-instance v1, Lorg/apache/poi/hssf/record/EscherAggregate;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;-><init>(Z)V

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->afterCreate()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    instance-of v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;->cloneShape(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object p1

    :goto_1
    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->newShapeId()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setShapeId(I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->setFlipFlags(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    return-void
.end method

.method private setFlipFlags(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isHorizontallyFlipped()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->isVerticallyFlipped()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public afterCreate()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/DrawingManager2;->findNewDrawingGroupId()S

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->setDgId(S)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->newShapeId()I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/apache/poi/hssf/record/EscherAggregate;->setMainSpRecordId(I)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/DrawingManager2;->incrementDrawingsSaved()V

    return-void
.end method

.method public buildShapeTree()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->createShapeTree(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsChart()Z
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    sget-short v0, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->findFirstWithId(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherOptRecord;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v2

    const/16 v3, 0x380

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->isComplex()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/ddf/EscherComplexProperty;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Chart 1\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public countOfAllChildren()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->countOfAllChildren()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public createAnchor(IIIIIIII)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 10

    .line 2
    new-instance v9, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move v0, p5

    int-to-short v5, v0

    move/from16 v0, p7

    int-to-short v7, v0

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>(IIIISISI)V

    return-object v9
.end method

.method public bridge synthetic createAnchor(IIIIIIII)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createAnchor(IIIIIIII)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createComment(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object p0

    return-object p0
.end method

.method public createComboBox(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    return-object v0
.end method

.method public createComment(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    return-object v0
.end method

.method public createGroup(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    return-object v0
.end method

.method public createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/hssf/usermodel/HSSFObjectData;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 3
    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    .line 6
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    .line 7
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    .line 8
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setReserved1(I)V

    .line 10
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setReserved2(I)V

    .line 11
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setReserved3(I)V

    .line 12
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 13
    new-instance v1, Lorg/apache/poi/hssf/record/FtCfSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/FtCfSubRecord;-><init>()V

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    .line 15
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->getFormat()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 16
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid picture type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->getFormat()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 v3, 0x9

    .line 17
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/FtCfSubRecord;->setFlags(S)V

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x2

    .line 18
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/FtCfSubRecord;->setFlags(S)V

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 20
    new-instance v1, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;-><init>()V

    .line 21
    invoke-virtual {v1, v2, v2}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->setFlagByBit(IZ)V

    .line 22
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 23
    new-instance v1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 24
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->setUnknownFormulaData([B)V

    const-string v2, "Paket"

    .line 25
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->setOleClassname(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->setStorageId(I)V

    .line 27
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 28
    new-instance v1, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MBD"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 30
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    const/4 v2, 0x0

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-direct {v1, v2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 33
    invoke-virtual {v1, p3}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setPictureIndex(I)V

    .line 34
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p1

    .line 35
    sget-short p3, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p1, p3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 36
    invoke-virtual {p3}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p3, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    .line 37
    new-instance p3, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    invoke-direct {p3, p1, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 38
    invoke-virtual {p0, p3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 39
    invoke-direct {p0, p3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    return-object p3

    :catch_0
    move-exception p0

    goto :goto_1

    .line 40
    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "trying to add ole shape without actually adding data first - use HSSFWorkbook.addOlePackage first"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public bridge synthetic createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/ss/usermodel/ObjectData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    move-result-object p0

    return-object p0
.end method

.method public createPicture(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;I)Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    .line 3
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->setPictureIndex(I)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    return-object v0
.end method

.method public createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/hssf/usermodel/HSSFPicture;
    .locals 0

    .line 6
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createPicture(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;I)Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/ss/usermodel/Picture;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    move-result-object p0

    return-object p0
.end method

.method public createPolygon(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFPolygon;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    return-object v0
.end method

.method public createSimpleShape(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    return-object v0
.end method

.method public createTextbox(Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->onCreate(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    return-object v0
.end method

.method public getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    return-object p0
.end method

.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object p0
.end method

.method public getX1()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectX1()I

    move-result p0

    return p0
.end method

.method public getX2()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectX2()I

    move-result p0

    return p0
.end method

.method public getY1()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectY1()I

    move-result p0

    return p0
.end method

.method public getY2()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRectY2()I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public newShapeId()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    sget-short v1, Lorg/apache/poi/ddf/EscherDgRecord;->RECORD_ID:S

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/model/DrawingManager2;->allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;)I

    move-result p0

    return p0
.end method

.method public preSerialize()V
    .locals 5

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_boundAggregate:Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EscherAggregate;->getTailRecords()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/NoteRecord;

    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NoteRecord;->getRow()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NoteRecord;->getColumn()I

    move-result v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "found multiple cell comments for cell "

    invoke-static {v0, v1}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_mainSpgrContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method

.method public setCoordinates(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {v0, p2}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY1(I)V

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p2, p4}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectY2(I)V

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX1(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_spgrRecord:Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-virtual {p0, p3}, Lorg/apache/poi/ddf/EscherSpgrRecord;->setRectX2(I)V

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/hssf/usermodel/HSSFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
