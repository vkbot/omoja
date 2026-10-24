.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "cttlcommontimenodedatac8e9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommonTimeNodeData;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewChildTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract addNewEndCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract addNewEndSync()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.end method

.method public abstract addNewIterate()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateData;
.end method

.method public abstract addNewStCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract addNewSubTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract synthetic changeType(Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic compareTo(Ljava/lang/Object;)I
.end method

.method public abstract synthetic compareValue(Lorg/apache/xmlbeans/XmlObject;)I
.end method

.method public abstract synthetic copy()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic copy(Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic documentProperties()Li5/t0;
.end method

.method public abstract synthetic dump()V
.end method

.method public abstract synthetic execQuery(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic execQuery(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getAccel()Ljava/lang/Object;
.end method

.method public abstract getAfterEffect()Z
.end method

.method public abstract getAutoRev()Z
.end method

.method public abstract getBldLvl()I
.end method

.method public abstract getChildTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract getDecel()Ljava/lang/Object;
.end method

.method public abstract getDisplay()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDur()Ljava/lang/Object;
.end method

.method public abstract getEndCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract getEndSync()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.end method

.method public abstract getEvtFilter()Ljava/lang/String;
.end method

.method public abstract getFill()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;
.end method

.method public abstract getGrpId()J
.end method

.method public abstract getId()J
.end method

.method public abstract getIterate()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateData;
.end method

.method public abstract getMasterRel()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeMasterRelation$Enum;
.end method

.method public abstract getNodePh()Z
.end method

.method public abstract getNodeType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;
.end method

.method public abstract getPresetClass()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;
.end method

.method public abstract getPresetID()I
.end method

.method public abstract getPresetSubtype()I
.end method

.method public abstract getRepeatCount()Ljava/lang/Object;
.end method

.method public abstract getRepeatDur()Ljava/lang/Object;
.end method

.method public abstract getRestart()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;
.end method

.method public abstract getSpd()Ljava/lang/Object;
.end method

.method public abstract getStCondLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.end method

.method public abstract getSubTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract getSyncBehavior()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeSyncType$Enum;
.end method

.method public abstract getTmFilter()Ljava/lang/String;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAccel()Z
.end method

.method public abstract isSetAfterEffect()Z
.end method

.method public abstract isSetAutoRev()Z
.end method

.method public abstract isSetBldLvl()Z
.end method

.method public abstract isSetChildTnLst()Z
.end method

.method public abstract isSetDecel()Z
.end method

.method public abstract isSetDisplay()Z
.end method

.method public abstract isSetDur()Z
.end method

.method public abstract isSetEndCondLst()Z
.end method

.method public abstract isSetEndSync()Z
.end method

.method public abstract isSetEvtFilter()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetGrpId()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetIterate()Z
.end method

.method public abstract isSetMasterRel()Z
.end method

.method public abstract isSetNodePh()Z
.end method

.method public abstract isSetNodeType()Z
.end method

.method public abstract isSetPresetClass()Z
.end method

.method public abstract isSetPresetID()Z
.end method

.method public abstract isSetPresetSubtype()Z
.end method

.method public abstract isSetRepeatCount()Z
.end method

.method public abstract isSetRepeatDur()Z
.end method

.method public abstract isSetRestart()Z
.end method

.method public abstract isSetSpd()Z
.end method

.method public abstract isSetStCondLst()Z
.end method

.method public abstract isSetSubTnLst()Z
.end method

.method public abstract isSetSyncBehavior()Z
.end method

.method public abstract isSetTmFilter()Z
.end method

.method public abstract synthetic monitor()Ljava/lang/Object;
.end method

.method public abstract synthetic newCursor()Li5/p0;
.end method

.method public abstract synthetic newDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract synthetic newDomNode(Li5/z1;)Lorg/w3c/dom/Node;
.end method

.method public abstract synthetic newInputStream()Ljava/io/InputStream;
.end method

.method public abstract synthetic newInputStream(Li5/z1;)Ljava/io/InputStream;
.end method

.method public abstract synthetic newReader()Ljava/io/Reader;
.end method

.method public abstract synthetic newReader(Li5/z1;)Ljava/io/Reader;
.end method

.method public abstract synthetic newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
.end method

.method public abstract synthetic newXMLStreamReader(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;
.end method

.method public abstract synthetic save(Ljava/io/File;)V
.end method

.method public abstract synthetic save(Ljava/io/File;Li5/z1;)V
.end method

.method public abstract synthetic save(Ljava/io/OutputStream;)V
.end method

.method public abstract synthetic save(Ljava/io/OutputStream;Li5/z1;)V
.end method

.method public abstract synthetic save(Ljava/io/Writer;)V
.end method

.method public abstract synthetic save(Ljava/io/Writer;Li5/z1;)V
.end method

.method public abstract synthetic save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
.end method

.method public abstract synthetic save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Li5/z1;)V
.end method

.method public abstract synthetic schemaType()Li5/c0;
.end method

.method public abstract synthetic selectAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectAttributes(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Ljavax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectPath(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract setAccel(Ljava/lang/Object;)V
.end method

.method public abstract setAfterEffect(Z)V
.end method

.method public abstract setAutoRev(Z)V
.end method

.method public abstract setBldLvl(I)V
.end method

.method public abstract setChildTnLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;)V
.end method

.method public abstract setDecel(Ljava/lang/Object;)V
.end method

.method public abstract setDisplay(Z)V
.end method

.method public abstract setDur(Ljava/lang/Object;)V
.end method

.method public abstract setEndCondLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;)V
.end method

.method public abstract setEndSync(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;)V
.end method

.method public abstract setEvtFilter(Ljava/lang/String;)V
.end method

.method public abstract setFill(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;)V
.end method

.method public abstract setGrpId(J)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setIterate(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLIterateData;)V
.end method

.method public abstract setMasterRel(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeMasterRelation$Enum;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNodePh(Z)V
.end method

.method public abstract setNodeType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType$Enum;)V
.end method

.method public abstract setPresetClass(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType$Enum;)V
.end method

.method public abstract setPresetID(I)V
.end method

.method public abstract setPresetSubtype(I)V
.end method

.method public abstract setRepeatCount(Ljava/lang/Object;)V
.end method

.method public abstract setRepeatDur(Ljava/lang/Object;)V
.end method

.method public abstract setRestart(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;)V
.end method

.method public abstract setSpd(Ljava/lang/Object;)V
.end method

.method public abstract setStCondLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;)V
.end method

.method public abstract setSubTnLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;)V
.end method

.method public abstract setSyncBehavior(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeSyncType$Enum;)V
.end method

.method public abstract setTmFilter(Ljava/lang/String;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAccel()V
.end method

.method public abstract unsetAfterEffect()V
.end method

.method public abstract unsetAutoRev()V
.end method

.method public abstract unsetBldLvl()V
.end method

.method public abstract unsetChildTnLst()V
.end method

.method public abstract unsetDecel()V
.end method

.method public abstract unsetDisplay()V
.end method

.method public abstract unsetDur()V
.end method

.method public abstract unsetEndCondLst()V
.end method

.method public abstract unsetEndSync()V
.end method

.method public abstract unsetEvtFilter()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetGrpId()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetIterate()V
.end method

.method public abstract unsetMasterRel()V
.end method

.method public abstract unsetNodePh()V
.end method

.method public abstract unsetNodeType()V
.end method

.method public abstract unsetPresetClass()V
.end method

.method public abstract unsetPresetID()V
.end method

.method public abstract unsetPresetSubtype()V
.end method

.method public abstract unsetRepeatCount()V
.end method

.method public abstract unsetRepeatDur()V
.end method

.method public abstract unsetRestart()V
.end method

.method public abstract unsetSpd()V
.end method

.method public abstract unsetStCondLst()V
.end method

.method public abstract unsetSubTnLst()V
.end method

.method public abstract unsetSyncBehavior()V
.end method

.method public abstract unsetTmFilter()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAccel()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xgetAfterEffect()Li5/m0;
.end method

.method public abstract xgetAutoRev()Li5/m0;
.end method

.method public abstract xgetBldLvl()Li5/l1;
.end method

.method public abstract xgetDecel()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;
.end method

.method public abstract xgetDisplay()Li5/m0;
.end method

.method public abstract xgetDur()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;
.end method

.method public abstract xgetEvtFilter()Li5/g2;
.end method

.method public abstract xgetFill()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;
.end method

.method public abstract xgetGrpId()Li5/l2;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeID;
.end method

.method public abstract xgetMasterRel()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeMasterRelation;
.end method

.method public abstract xgetNodePh()Li5/m0;
.end method

.method public abstract xgetNodeType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;
.end method

.method public abstract xgetPresetClass()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;
.end method

.method public abstract xgetPresetID()Li5/l1;
.end method

.method public abstract xgetPresetSubtype()Li5/l1;
.end method

.method public abstract xgetRepeatCount()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;
.end method

.method public abstract xgetRepeatDur()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;
.end method

.method public abstract xgetRestart()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;
.end method

.method public abstract xgetSpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetSyncBehavior()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeSyncType;
.end method

.method public abstract xgetTmFilter()Li5/g2;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAccel(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method

.method public abstract xsetAfterEffect(Li5/m0;)V
.end method

.method public abstract xsetAutoRev(Li5/m0;)V
.end method

.method public abstract xsetBldLvl(Li5/l1;)V
.end method

.method public abstract xsetDecel(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)V
.end method

.method public abstract xsetDisplay(Li5/m0;)V
.end method

.method public abstract xsetDur(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;)V
.end method

.method public abstract xsetEvtFilter(Li5/g2;)V
.end method

.method public abstract xsetFill(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;)V
.end method

.method public abstract xsetGrpId(Li5/l2;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeID;)V
.end method

.method public abstract xsetMasterRel(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeMasterRelation;)V
.end method

.method public abstract xsetNodePh(Li5/m0;)V
.end method

.method public abstract xsetNodeType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeType;)V
.end method

.method public abstract xsetPresetClass(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodePresetClassType;)V
.end method

.method public abstract xsetPresetID(Li5/l1;)V
.end method

.method public abstract xsetPresetSubtype(Li5/l1;)V
.end method

.method public abstract xsetRepeatCount(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;)V
.end method

.method public abstract xsetRepeatDur(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTime;)V
.end method

.method public abstract xsetRestart(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;)V
.end method

.method public abstract xsetSpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetSyncBehavior(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeSyncType;)V
.end method

.method public abstract xsetTmFilter(Li5/g2;)V
.end method
