.class public Lorg/apache/poi/hssf/usermodel/HSSFPicture;
.super Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Picture;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    const/16 p1, 0x4b

    .line 3
    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setShapeType(I)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    return-void
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    sget-short v2, Lorg/apache/poi/ddf/EscherClientDataRecord;->RECORD_ID:S

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    :cond_0
    return-void
.end method

.method public cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 4

    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->serialize()[B

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v2}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/ObjRecord;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    return-object v1
.end method

.method public createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    sget-short v0, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherOptRecord;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEDASHING:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)V

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)V

    sget-short v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    return-object p0
.end method

.method public getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__BLIPFILENAME:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherComplexProperty;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getImageDimension()Ljava/awt/Dimension;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipTypeWin32()B

    move-result p0

    :try_start_0
    sget v1, Ln4/f;->Z:I

    new-instance v1, Ln4/f$a;

    invoke-direct {v1}, Ln4/f$a;-><init>()V

    invoke-virtual {v1, v0}, Ln4/f$a;->m([B)V

    invoke-virtual {v1}, Ln4/f$a;->k()Ln4/f;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPictureData()Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getParent()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object p0

    :goto_0
    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getParent()Lorg/apache/poi/hssf/usermodel/HSSFShape;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object p0

    .line 10
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;-><init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    return-object v0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find a patriarch for a HSSPicture"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureData()Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public getPictureIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__BLIPTODISPLAY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    return p0
.end method

.method public getPreferredSize()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(D)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredSize(D)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/ImageUtils;->setPreferredSize(Lorg/apache/poi/ss/usermodel/Picture;DD)Ljava/awt/Dimension;

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPreferredSize()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPreferredSize(DD)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public resize()V
    .locals 2

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->resize(D)V

    return-void
.end method

.method public resize(D)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->resize(DD)V

    return-void
.end method

.method public resize(DD)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_DONT_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setAnchorType(Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;)V

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p1

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result p3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result p4

    sub-int/2addr p3, p4

    add-int/2addr p3, p1

    int-to-short p1, p3

    .line 8
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDx2(I)V

    .line 10
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow2(I)V

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDy2(I)V

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Lorg/apache/poi/ddf/EscherComplexProperty;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__BLIPFILENAME:Lorg/apache/poi/ddf/EscherPropertyTypes;

    array-length v2, p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([B)I

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    return-void
.end method

.method public setPictureIndex(I)V
    .locals 4

    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->BLIP__BLIPTODISPLAY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    return-void
.end method

.method public setShapeType(I)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Shape type can not be changed in "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
