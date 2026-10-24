.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;",
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

    const-string v2, "ctpivotcachedefinition575ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;
.end method

.method public abstract addNewCacheHierarchies()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchies;
.end method

.method public abstract addNewCacheSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;
.end method

.method public abstract addNewCalculatedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedItems;
.end method

.method public abstract addNewCalculatedMembers()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedMembers;
.end method

.method public abstract addNewDimensions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDimensions;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewKpis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDKPIs;
.end method

.method public abstract addNewMaps()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureDimensionMaps;
.end method

.method public abstract addNewMeasureGroups()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureGroups;
.end method

.method public abstract addNewTupleCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTupleCache;
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

.method public abstract getBackgroundQuery()Z
.end method

.method public abstract getCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;
.end method

.method public abstract getCacheHierarchies()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchies;
.end method

.method public abstract getCacheSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;
.end method

.method public abstract getCalculatedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedItems;
.end method

.method public abstract getCalculatedMembers()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedMembers;
.end method

.method public abstract getCreatedVersion()S
.end method

.method public abstract getDimensions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDimensions;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEnableRefresh()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInvalid()Z
.end method

.method public abstract getKpis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDKPIs;
.end method

.method public abstract getMaps()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureDimensionMaps;
.end method

.method public abstract getMeasureGroups()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureGroups;
.end method

.method public abstract getMinRefreshableVersion()S
.end method

.method public abstract getMissingItemsLimit()J
.end method

.method public abstract getOptimizeMemory()Z
.end method

.method public abstract getRecordCount()J
.end method

.method public abstract getRefreshOnLoad()Z
.end method

.method public abstract getRefreshedBy()Ljava/lang/String;
.end method

.method public abstract getRefreshedDate()D
.end method

.method public abstract getRefreshedDateIso()Ljava/util/Calendar;
.end method

.method public abstract getRefreshedVersion()S
.end method

.method public abstract getSaveData()Z
.end method

.method public abstract getSupportAdvancedDrill()Z
.end method

.method public abstract getSupportSubquery()Z
.end method

.method public abstract getTupleCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTupleCache;
.end method

.method public abstract getTupleCache2()Z
.end method

.method public abstract getUpgradeOnRefresh()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBackgroundQuery()Z
.end method

.method public abstract isSetCacheHierarchies()Z
.end method

.method public abstract isSetCalculatedItems()Z
.end method

.method public abstract isSetCalculatedMembers()Z
.end method

.method public abstract isSetCreatedVersion()Z
.end method

.method public abstract isSetDimensions()Z
.end method

.method public abstract isSetEnableRefresh()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetInvalid()Z
.end method

.method public abstract isSetKpis()Z
.end method

.method public abstract isSetMaps()Z
.end method

.method public abstract isSetMeasureGroups()Z
.end method

.method public abstract isSetMinRefreshableVersion()Z
.end method

.method public abstract isSetMissingItemsLimit()Z
.end method

.method public abstract isSetOptimizeMemory()Z
.end method

.method public abstract isSetRecordCount()Z
.end method

.method public abstract isSetRefreshOnLoad()Z
.end method

.method public abstract isSetRefreshedBy()Z
.end method

.method public abstract isSetRefreshedDate()Z
.end method

.method public abstract isSetRefreshedDateIso()Z
.end method

.method public abstract isSetRefreshedVersion()Z
.end method

.method public abstract isSetSaveData()Z
.end method

.method public abstract isSetSupportAdvancedDrill()Z
.end method

.method public abstract isSetSupportSubquery()Z
.end method

.method public abstract isSetTupleCache()Z
.end method

.method public abstract isSetTupleCache2()Z
.end method

.method public abstract isSetUpgradeOnRefresh()Z
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

.method public abstract setBackgroundQuery(Z)V
.end method

.method public abstract setCacheFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;)V
.end method

.method public abstract setCacheHierarchies(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchies;)V
.end method

.method public abstract setCacheSource(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;)V
.end method

.method public abstract setCalculatedItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedItems;)V
.end method

.method public abstract setCalculatedMembers(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedMembers;)V
.end method

.method public abstract setCreatedVersion(S)V
.end method

.method public abstract setDimensions(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDimensions;)V
.end method

.method public abstract setEnableRefresh(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setInvalid(Z)V
.end method

.method public abstract setKpis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDKPIs;)V
.end method

.method public abstract setMaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureDimensionMaps;)V
.end method

.method public abstract setMeasureGroups(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureGroups;)V
.end method

.method public abstract setMinRefreshableVersion(S)V
.end method

.method public abstract setMissingItemsLimit(J)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOptimizeMemory(Z)V
.end method

.method public abstract setRecordCount(J)V
.end method

.method public abstract setRefreshOnLoad(Z)V
.end method

.method public abstract setRefreshedBy(Ljava/lang/String;)V
.end method

.method public abstract setRefreshedDate(D)V
.end method

.method public abstract setRefreshedDateIso(Ljava/util/Calendar;)V
.end method

.method public abstract setRefreshedVersion(S)V
.end method

.method public abstract setSaveData(Z)V
.end method

.method public abstract setSupportAdvancedDrill(Z)V
.end method

.method public abstract setSupportSubquery(Z)V
.end method

.method public abstract setTupleCache(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTupleCache;)V
.end method

.method public abstract setTupleCache2(Z)V
.end method

.method public abstract setUpgradeOnRefresh(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBackgroundQuery()V
.end method

.method public abstract unsetCacheHierarchies()V
.end method

.method public abstract unsetCalculatedItems()V
.end method

.method public abstract unsetCalculatedMembers()V
.end method

.method public abstract unsetCreatedVersion()V
.end method

.method public abstract unsetDimensions()V
.end method

.method public abstract unsetEnableRefresh()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetInvalid()V
.end method

.method public abstract unsetKpis()V
.end method

.method public abstract unsetMaps()V
.end method

.method public abstract unsetMeasureGroups()V
.end method

.method public abstract unsetMinRefreshableVersion()V
.end method

.method public abstract unsetMissingItemsLimit()V
.end method

.method public abstract unsetOptimizeMemory()V
.end method

.method public abstract unsetRecordCount()V
.end method

.method public abstract unsetRefreshOnLoad()V
.end method

.method public abstract unsetRefreshedBy()V
.end method

.method public abstract unsetRefreshedDate()V
.end method

.method public abstract unsetRefreshedDateIso()V
.end method

.method public abstract unsetRefreshedVersion()V
.end method

.method public abstract unsetSaveData()V
.end method

.method public abstract unsetSupportAdvancedDrill()V
.end method

.method public abstract unsetSupportSubquery()V
.end method

.method public abstract unsetTupleCache()V
.end method

.method public abstract unsetTupleCache2()V
.end method

.method public abstract unsetUpgradeOnRefresh()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetBackgroundQuery()Li5/m0;
.end method

.method public abstract xgetCreatedVersion()Li5/k2;
.end method

.method public abstract xgetEnableRefresh()Li5/m0;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetInvalid()Li5/m0;
.end method

.method public abstract xgetMinRefreshableVersion()Li5/k2;
.end method

.method public abstract xgetMissingItemsLimit()Li5/l2;
.end method

.method public abstract xgetOptimizeMemory()Li5/m0;
.end method

.method public abstract xgetRecordCount()Li5/l2;
.end method

.method public abstract xgetRefreshOnLoad()Li5/m0;
.end method

.method public abstract xgetRefreshedBy()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetRefreshedDate()Li5/u0;
.end method

.method public abstract xgetRefreshedDateIso()Li5/r0;
.end method

.method public abstract xgetRefreshedVersion()Li5/k2;
.end method

.method public abstract xgetSaveData()Li5/m0;
.end method

.method public abstract xgetSupportAdvancedDrill()Li5/m0;
.end method

.method public abstract xgetSupportSubquery()Li5/m0;
.end method

.method public abstract xgetTupleCache2()Li5/m0;
.end method

.method public abstract xgetUpgradeOnRefresh()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetBackgroundQuery(Li5/m0;)V
.end method

.method public abstract xsetCreatedVersion(Li5/k2;)V
.end method

.method public abstract xsetEnableRefresh(Li5/m0;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetInvalid(Li5/m0;)V
.end method

.method public abstract xsetMinRefreshableVersion(Li5/k2;)V
.end method

.method public abstract xsetMissingItemsLimit(Li5/l2;)V
.end method

.method public abstract xsetOptimizeMemory(Li5/m0;)V
.end method

.method public abstract xsetRecordCount(Li5/l2;)V
.end method

.method public abstract xsetRefreshOnLoad(Li5/m0;)V
.end method

.method public abstract xsetRefreshedBy(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetRefreshedDate(Li5/u0;)V
.end method

.method public abstract xsetRefreshedDateIso(Li5/r0;)V
.end method

.method public abstract xsetRefreshedVersion(Li5/k2;)V
.end method

.method public abstract xsetSaveData(Li5/m0;)V
.end method

.method public abstract xsetSupportAdvancedDrill(Li5/m0;)V
.end method

.method public abstract xsetSupportSubquery(Li5/m0;)V
.end method

.method public abstract xsetTupleCache2(Li5/m0;)V
.end method

.method public abstract xsetUpgradeOnRefresh(Li5/m0;)V
.end method
