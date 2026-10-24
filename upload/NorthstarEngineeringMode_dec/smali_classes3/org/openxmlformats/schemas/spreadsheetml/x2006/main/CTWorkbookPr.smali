.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;",
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

    const-string v2, "ctworkbookpr03a5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;->type:Li5/c0;

    return-void
.end method


# virtual methods
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

.method public abstract getAllowRefreshQuery()Z
.end method

.method public abstract getAutoCompressPictures()Z
.end method

.method public abstract getBackupFile()Z
.end method

.method public abstract getCheckCompatibility()Z
.end method

.method public abstract getCodeName()Ljava/lang/String;
.end method

.method public abstract getDate1904()Z
.end method

.method public abstract getDefaultThemeVersion()J
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getFilterPrivacy()Z
.end method

.method public abstract getHidePivotFieldList()Z
.end method

.method public abstract getPromptedSolutions()Z
.end method

.method public abstract getPublishItems()Z
.end method

.method public abstract getRefreshAllConnections()Z
.end method

.method public abstract getSaveExternalLinkValues()Z
.end method

.method public abstract getShowBorderUnselectedTables()Z
.end method

.method public abstract getShowInkAnnotation()Z
.end method

.method public abstract getShowObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects$Enum;
.end method

.method public abstract getShowPivotChartFilter()Z
.end method

.method public abstract getUpdateLinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAllowRefreshQuery()Z
.end method

.method public abstract isSetAutoCompressPictures()Z
.end method

.method public abstract isSetBackupFile()Z
.end method

.method public abstract isSetCheckCompatibility()Z
.end method

.method public abstract isSetCodeName()Z
.end method

.method public abstract isSetDate1904()Z
.end method

.method public abstract isSetDefaultThemeVersion()Z
.end method

.method public abstract isSetFilterPrivacy()Z
.end method

.method public abstract isSetHidePivotFieldList()Z
.end method

.method public abstract isSetPromptedSolutions()Z
.end method

.method public abstract isSetPublishItems()Z
.end method

.method public abstract isSetRefreshAllConnections()Z
.end method

.method public abstract isSetSaveExternalLinkValues()Z
.end method

.method public abstract isSetShowBorderUnselectedTables()Z
.end method

.method public abstract isSetShowInkAnnotation()Z
.end method

.method public abstract isSetShowObjects()Z
.end method

.method public abstract isSetShowPivotChartFilter()Z
.end method

.method public abstract isSetUpdateLinks()Z
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

.method public abstract setAllowRefreshQuery(Z)V
.end method

.method public abstract setAutoCompressPictures(Z)V
.end method

.method public abstract setBackupFile(Z)V
.end method

.method public abstract setCheckCompatibility(Z)V
.end method

.method public abstract setCodeName(Ljava/lang/String;)V
.end method

.method public abstract setDate1904(Z)V
.end method

.method public abstract setDefaultThemeVersion(J)V
.end method

.method public abstract setFilterPrivacy(Z)V
.end method

.method public abstract setHidePivotFieldList(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPromptedSolutions(Z)V
.end method

.method public abstract setPublishItems(Z)V
.end method

.method public abstract setRefreshAllConnections(Z)V
.end method

.method public abstract setSaveExternalLinkValues(Z)V
.end method

.method public abstract setShowBorderUnselectedTables(Z)V
.end method

.method public abstract setShowInkAnnotation(Z)V
.end method

.method public abstract setShowObjects(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects$Enum;)V
.end method

.method public abstract setShowPivotChartFilter(Z)V
.end method

.method public abstract setUpdateLinks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks$Enum;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAllowRefreshQuery()V
.end method

.method public abstract unsetAutoCompressPictures()V
.end method

.method public abstract unsetBackupFile()V
.end method

.method public abstract unsetCheckCompatibility()V
.end method

.method public abstract unsetCodeName()V
.end method

.method public abstract unsetDate1904()V
.end method

.method public abstract unsetDefaultThemeVersion()V
.end method

.method public abstract unsetFilterPrivacy()V
.end method

.method public abstract unsetHidePivotFieldList()V
.end method

.method public abstract unsetPromptedSolutions()V
.end method

.method public abstract unsetPublishItems()V
.end method

.method public abstract unsetRefreshAllConnections()V
.end method

.method public abstract unsetSaveExternalLinkValues()V
.end method

.method public abstract unsetShowBorderUnselectedTables()V
.end method

.method public abstract unsetShowInkAnnotation()V
.end method

.method public abstract unsetShowObjects()V
.end method

.method public abstract unsetShowPivotChartFilter()V
.end method

.method public abstract unsetUpdateLinks()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAllowRefreshQuery()Li5/m0;
.end method

.method public abstract xgetAutoCompressPictures()Li5/m0;
.end method

.method public abstract xgetBackupFile()Li5/m0;
.end method

.method public abstract xgetCheckCompatibility()Li5/m0;
.end method

.method public abstract xgetCodeName()Li5/g2;
.end method

.method public abstract xgetDate1904()Li5/m0;
.end method

.method public abstract xgetDefaultThemeVersion()Li5/l2;
.end method

.method public abstract xgetFilterPrivacy()Li5/m0;
.end method

.method public abstract xgetHidePivotFieldList()Li5/m0;
.end method

.method public abstract xgetPromptedSolutions()Li5/m0;
.end method

.method public abstract xgetPublishItems()Li5/m0;
.end method

.method public abstract xgetRefreshAllConnections()Li5/m0;
.end method

.method public abstract xgetSaveExternalLinkValues()Li5/m0;
.end method

.method public abstract xgetShowBorderUnselectedTables()Li5/m0;
.end method

.method public abstract xgetShowInkAnnotation()Li5/m0;
.end method

.method public abstract xgetShowObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects;
.end method

.method public abstract xgetShowPivotChartFilter()Li5/m0;
.end method

.method public abstract xgetUpdateLinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAllowRefreshQuery(Li5/m0;)V
.end method

.method public abstract xsetAutoCompressPictures(Li5/m0;)V
.end method

.method public abstract xsetBackupFile(Li5/m0;)V
.end method

.method public abstract xsetCheckCompatibility(Li5/m0;)V
.end method

.method public abstract xsetCodeName(Li5/g2;)V
.end method

.method public abstract xsetDate1904(Li5/m0;)V
.end method

.method public abstract xsetDefaultThemeVersion(Li5/l2;)V
.end method

.method public abstract xsetFilterPrivacy(Li5/m0;)V
.end method

.method public abstract xsetHidePivotFieldList(Li5/m0;)V
.end method

.method public abstract xsetPromptedSolutions(Li5/m0;)V
.end method

.method public abstract xsetPublishItems(Li5/m0;)V
.end method

.method public abstract xsetRefreshAllConnections(Li5/m0;)V
.end method

.method public abstract xsetSaveExternalLinkValues(Li5/m0;)V
.end method

.method public abstract xsetShowBorderUnselectedTables(Li5/m0;)V
.end method

.method public abstract xsetShowInkAnnotation(Li5/m0;)V
.end method

.method public abstract xsetShowObjects(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects;)V
.end method

.method public abstract xsetShowPivotChartFilter(Li5/m0;)V
.end method

.method public abstract xsetUpdateLinks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUpdateLinks;)V
.end method
