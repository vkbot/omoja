.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;",
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

    const-string v2, "ctsheetpr3ae0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
.end method

.method public abstract addNewPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
.end method

.method public abstract addNewTabColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
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

.method public abstract getCodeName()Ljava/lang/String;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEnableFormatConditionsCalculation()Z
.end method

.method public abstract getFilterMode()Z
.end method

.method public abstract getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
.end method

.method public abstract getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
.end method

.method public abstract getPublished()Z
.end method

.method public abstract getSyncHorizontal()Z
.end method

.method public abstract getSyncRef()Ljava/lang/String;
.end method

.method public abstract getSyncVertical()Z
.end method

.method public abstract getTabColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract getTransitionEntry()Z
.end method

.method public abstract getTransitionEvaluation()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCodeName()Z
.end method

.method public abstract isSetEnableFormatConditionsCalculation()Z
.end method

.method public abstract isSetFilterMode()Z
.end method

.method public abstract isSetOutlinePr()Z
.end method

.method public abstract isSetPageSetUpPr()Z
.end method

.method public abstract isSetPublished()Z
.end method

.method public abstract isSetSyncHorizontal()Z
.end method

.method public abstract isSetSyncRef()Z
.end method

.method public abstract isSetSyncVertical()Z
.end method

.method public abstract isSetTabColor()Z
.end method

.method public abstract isSetTransitionEntry()Z
.end method

.method public abstract isSetTransitionEvaluation()Z
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

.method public abstract setCodeName(Ljava/lang/String;)V
.end method

.method public abstract setEnableFormatConditionsCalculation(Z)V
.end method

.method public abstract setFilterMode(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOutlinePr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;)V
.end method

.method public abstract setPageSetUpPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;)V
.end method

.method public abstract setPublished(Z)V
.end method

.method public abstract setSyncHorizontal(Z)V
.end method

.method public abstract setSyncRef(Ljava/lang/String;)V
.end method

.method public abstract setSyncVertical(Z)V
.end method

.method public abstract setTabColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
.end method

.method public abstract setTransitionEntry(Z)V
.end method

.method public abstract setTransitionEvaluation(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCodeName()V
.end method

.method public abstract unsetEnableFormatConditionsCalculation()V
.end method

.method public abstract unsetFilterMode()V
.end method

.method public abstract unsetOutlinePr()V
.end method

.method public abstract unsetPageSetUpPr()V
.end method

.method public abstract unsetPublished()V
.end method

.method public abstract unsetSyncHorizontal()V
.end method

.method public abstract unsetSyncRef()V
.end method

.method public abstract unsetSyncVertical()V
.end method

.method public abstract unsetTabColor()V
.end method

.method public abstract unsetTransitionEntry()V
.end method

.method public abstract unsetTransitionEvaluation()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetCodeName()Li5/g2;
.end method

.method public abstract xgetEnableFormatConditionsCalculation()Li5/m0;
.end method

.method public abstract xgetFilterMode()Li5/m0;
.end method

.method public abstract xgetPublished()Li5/m0;
.end method

.method public abstract xgetSyncHorizontal()Li5/m0;
.end method

.method public abstract xgetSyncRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetSyncVertical()Li5/m0;
.end method

.method public abstract xgetTransitionEntry()Li5/m0;
.end method

.method public abstract xgetTransitionEvaluation()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetCodeName(Li5/g2;)V
.end method

.method public abstract xsetEnableFormatConditionsCalculation(Li5/m0;)V
.end method

.method public abstract xsetFilterMode(Li5/m0;)V
.end method

.method public abstract xsetPublished(Li5/m0;)V
.end method

.method public abstract xsetSyncHorizontal(Li5/m0;)V
.end method

.method public abstract xsetSyncRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetSyncVertical(Li5/m0;)V
.end method

.method public abstract xsetTransitionEntry(Li5/m0;)V
.end method

.method public abstract xsetTransitionEvaluation(Li5/m0;)V
.end method
