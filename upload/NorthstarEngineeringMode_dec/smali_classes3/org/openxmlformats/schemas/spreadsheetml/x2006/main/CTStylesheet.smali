.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;",
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

    const-string v2, "ctstylesheet4257type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBorders()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;
.end method

.method public abstract addNewCellStyleXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;
.end method

.method public abstract addNewCellStyles()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyles;
.end method

.method public abstract addNewCellXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;
.end method

.method public abstract addNewColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;
.end method

.method public abstract addNewDxfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFills()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;
.end method

.method public abstract addNewFonts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;
.end method

.method public abstract addNewNumFmts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;
.end method

.method public abstract addNewTableStyles()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;
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

.method public abstract getBorders()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;
.end method

.method public abstract getCellStyleXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;
.end method

.method public abstract getCellStyles()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyles;
.end method

.method public abstract getCellXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;
.end method

.method public abstract getColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDxfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFills()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;
.end method

.method public abstract getFonts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;
.end method

.method public abstract getNumFmts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;
.end method

.method public abstract getTableStyles()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBorders()Z
.end method

.method public abstract isSetCellStyleXfs()Z
.end method

.method public abstract isSetCellStyles()Z
.end method

.method public abstract isSetCellXfs()Z
.end method

.method public abstract isSetColors()Z
.end method

.method public abstract isSetDxfs()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFills()Z
.end method

.method public abstract isSetFonts()Z
.end method

.method public abstract isSetNumFmts()Z
.end method

.method public abstract isSetTableStyles()Z
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

.method public abstract setBorders(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;)V
.end method

.method public abstract setCellStyleXfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;)V
.end method

.method public abstract setCellStyles(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyles;)V
.end method

.method public abstract setCellXfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;)V
.end method

.method public abstract setColors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;)V
.end method

.method public abstract setDxfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFills(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;)V
.end method

.method public abstract setFonts(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNumFmts(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;)V
.end method

.method public abstract setTableStyles(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBorders()V
.end method

.method public abstract unsetCellStyleXfs()V
.end method

.method public abstract unsetCellStyles()V
.end method

.method public abstract unsetCellXfs()V
.end method

.method public abstract unsetColors()V
.end method

.method public abstract unsetDxfs()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFills()V
.end method

.method public abstract unsetFonts()V
.end method

.method public abstract unsetNumFmts()V
.end method

.method public abstract unsetTableStyles()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method
