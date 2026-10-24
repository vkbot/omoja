.class public Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/ddf/EscherContainerRecord;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->lambda$createShapeTree$0(Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/ddf/EscherContainerRecord;)V

    return-void
.end method

.method public static createShapeTree(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    sget-short v1, Lorg/apache/poi/ddf/EscherContainerRecord;->SPGR_CONTAINER:S

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    sget-short v1, Lorg/apache/poi/ddf/EscherClientDataRecord;->RECORD_ID:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherClientDataRecord;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/EscherAggregate;->getShapeToObjMapping()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/ObjRecord;

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Had unexpected type of clientData: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string p2, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v3, v0

    check-cast v3, Lorg/apache/poi/hssf/record/ObjRecord;

    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-direct {v0, p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    new-instance v1, Lorg/apache/poi/hssf/usermodel/b;

    invoke-direct {v1, p1, v0, v2, p3}, Lorg/apache/poi/hssf/usermodel/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-interface {p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    goto/16 :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Had unexpected type of child: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    sget-short v1, Lorg/apache/poi/ddf/EscherContainerRecord;->SP_CONTAINER:S

    if-ne v0, v1, :cond_16

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/EscherAggregate;->getShapeToObjMapping()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ddf/EscherRecord;

    sget-object v8, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory$1;->$SwitchMap$org$apache$poi$ddf$EscherRecordTypes:[I

    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v4, :cond_8

    if-eq v8, v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/Record;

    instance-of v6, v5, Lorg/apache/poi/hssf/record/TextObjectRecord;

    if-eqz v6, :cond_7

    check-cast v5, Lorg/apache/poi/hssf/record/TextObjectRecord;

    goto :goto_1

    :cond_7
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Did not have a TextObjRecord: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    instance-of v6, v3, Lorg/apache/poi/hssf/record/ObjRecord;

    if-eqz v6, :cond_9

    check-cast v3, Lorg/apache/poi/hssf/record/ObjRecord;

    goto :goto_1

    :cond_9
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Did not have a ObjRecord: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-eqz v3, :cond_15

    invoke-static {v3}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->isEmbeddedObject(Lorg/apache/poi/hssf/record/ObjRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    invoke-direct {p1, p0, v3, p3}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    invoke-interface {p2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    return-void

    :cond_b
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectType()S

    move-result p3

    if-eq p3, v4, :cond_14

    if-eq p3, v7, :cond_13

    const/4 v0, 0x6

    if-eq p3, v0, :cond_12

    const/16 v0, 0x8

    if-eq p3, v0, :cond_11

    const/16 v0, 0x14

    if-eq p3, v0, :cond_10

    const/16 v0, 0x19

    if-eq p3, v0, :cond_f

    const/16 p1, 0x1e

    if-eq p3, p1, :cond_c

    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {p1, p0, v3, v5}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    goto :goto_2

    :cond_c
    sget-short p1, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_ID:S

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ddf/EscherOptRecord;

    if-nez p1, :cond_d

    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {p1, p0, v3, v5}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    goto :goto_2

    :cond_d
    sget-object p3, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__VERTICES:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p1, p3}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p1

    if-eqz p1, :cond_e

    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;

    invoke-direct {p1, p0, v3, v5}, Lorg/apache/poi/hssf/usermodel/HSSFPolygon;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    goto :goto_2

    :cond_e
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {p1, p0, v3, v5}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    goto :goto_2

    :cond_f
    new-instance p3, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/record/EscherAggregate;->getNoteRecordByObj(Lorg/apache/poi/hssf/record/ObjRecord;)Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object p1

    invoke-direct {p3, p0, v3, v5, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;Lorg/apache/poi/hssf/record/NoteRecord;)V

    move-object p1, p3

    goto :goto_2

    :cond_10
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;

    invoke-direct {p1, p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCombobox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    goto :goto_2

    :cond_11
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-direct {p1, p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    goto :goto_2

    :cond_12
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;

    invoke-direct {p1, p0, v3, v5}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    goto :goto_2

    :cond_13
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {p1, p0, v3, v5}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    goto :goto_2

    :cond_14
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    invoke-direct {p1, p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    :goto_2
    invoke-interface {p2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->addShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)V

    goto :goto_3

    :cond_15
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "EscherClientDataRecord can\'t be found."

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_3
    return-void
.end method

.method private static isEmbeddedObject(Lorg/apache/poi/hssf/record/ObjRecord;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/SubRecord;

    instance-of v0, v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$createShapeTree$0(Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/ddf/EscherContainerRecord;)V
    .locals 0

    invoke-static {p3, p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->createShapeTree(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method
