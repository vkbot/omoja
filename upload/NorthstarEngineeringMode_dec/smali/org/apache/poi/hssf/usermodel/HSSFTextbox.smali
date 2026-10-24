.class public Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
.super Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;
.source "SourceFile"


# static fields
.field public static final HORIZONTAL_ALIGNMENT_CENTERED:S = 0x2s

.field public static final HORIZONTAL_ALIGNMENT_DISTRIBUTED:S = 0x7s

.field public static final HORIZONTAL_ALIGNMENT_JUSTIFIED:S = 0x4s

.field public static final HORIZONTAL_ALIGNMENT_LEFT:S = 0x1s

.field public static final HORIZONTAL_ALIGNMENT_RIGHT:S = 0x3s

.field public static final OBJECT_TYPE_TEXT:S = 0x6s

.field public static final VERTICAL_ALIGNMENT_BOTTOM:S = 0x3s

.field public static final VERTICAL_ALIGNMENT_CENTER:S = 0x2s

.field public static final VERTICAL_ALIGNMENT_DISTRIBUTED:S = 0x7s

.field public static final VERTICAL_ALIGNMENT_JUSTIFY:S = 0x4s

.field public static final VERTICAL_ALIGNMENT_TOP:S = 0x1s


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setHorizontalAlignment(S)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->setVerticalAlignment(S)V

    .line 5
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    const-string p2, ""

    invoke-direct {p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    return-void
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    sget-short v1, Lorg/apache/poi/ddf/EscherClientDataRecord;->RECORD_ID:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    sget-short v1, Lorg/apache/poi/ddf/EscherTextboxRecord;->RECORD_ID:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    :cond_0
    return-void
.end method

.method public afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    sget-short v2, Lorg/apache/poi/ddf/EscherClientDataRecord;->RECORD_ID:S

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    sget-short v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    return-void
.end method

.method public cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    :goto_0
    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->serialize()[B

    move-result-object v2

    new-instance v3, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v3}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/ObjRecord;

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    invoke-direct {v2, v1, p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    return-object v2
.end method

.method public createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 2

    new-instance p0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    new-instance v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    new-instance v1, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    return-object p0
.end method

.method public createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 11

    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    new-instance v1, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    new-instance v2, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    new-instance v3, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    new-instance v4, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherTextboxRecord;-><init>()V

    sget-short v5, Lorg/apache/poi/ddf/EscherContainerRecord;->SP_CONTAINER:S

    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    sget-short v5, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    sget-object v5, Lorg/apache/poi/sl/usermodel/ShapeType;->TEXT_BOX:Lorg/apache/poi/sl/usermodel/ShapeType;

    iget v5, v5, Lorg/apache/poi/sl/usermodel/ShapeType;->nativeId:I

    shl-int/lit8 v5, v5, 0x4

    or-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    const/16 v5, 0xa00

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    sget-short v5, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_ID:S

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v6, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTID:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v6, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__WRAPTEXT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v6, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__ANCHORTEXT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v6, Lorg/apache/poi/ddf/EscherPropertyTypes;->GROUPSHAPE__FLAGS:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v8, 0x80000

    invoke-direct {v5, v6, v8}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTLEFT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v5, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTRIGHT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v5, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTTOP:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v5, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTBOTTOM:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v5, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEDASHING:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v5, v9, v7}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherBoolProperty;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v10, 0x80008

    invoke-direct {v5, v9, v10}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEWIDTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/16 v10, 0x2535

    invoke-direct {v5, v9, v10}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherRGBProperty;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v10, 0x8000009

    invoke-direct {v5, v9, v10}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherRGBProperty;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v10, 0x8000040

    invoke-direct {v5, v9, v10}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherBoolProperty;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v10, 0x10000

    invoke-direct {v5, v9, v10}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherBoolProperty;

    invoke-direct {v5, v6, v8}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    sget-short v5, Lorg/apache/poi/ddf/EscherClientDataRecord;->RECORD_ID:S

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    invoke-virtual {v3, v7}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    sget-short v5, Lorg/apache/poi/ddf/EscherTextboxRecord;->RECORD_ID:S

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    invoke-virtual {v4, v7}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {v0, p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    return-object v0
.end method

.method public getHorizontalAlignment()S
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getHorizontalTextAlignment()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getMarginBottom()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTBOTTOM:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMarginLeft()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTLEFT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMarginRight()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTRIGHT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMarginTop()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTTOP:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getVerticalAlignment()S
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getVerticalTextAlignment()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public setHorizontalAlignment(S)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setHorizontalTextAlignment(I)V

    return-void
.end method

.method public setMarginBottom(I)V
    .locals 2

    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTBOTTOM:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    return-void
.end method

.method public setMarginLeft(I)V
    .locals 2

    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTLEFT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    return-void
.end method

.method public setMarginRight(I)V
    .locals 2

    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTRIGHT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    return-void
.end method

.method public setMarginTop(I)V
    .locals 2

    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->TEXT__TEXTTOP:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

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

.method public setVerticalAlignment(S)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->setVerticalTextAlignment(I)V

    return-void
.end method
