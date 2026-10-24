.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;",
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

    const-string v2, "cttablestyled59etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBand1H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewBand1V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewBand2H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewBand2V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewFirstCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewFirstRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewLastCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewLastRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewNeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewNwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewSeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewSwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract addNewTblBg()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableBackgroundStyle;
.end method

.method public abstract addNewWholeTbl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
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

.method public abstract getBand1H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getBand1V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getBand2H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getBand2V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFirstCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getFirstRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getLastCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getLastRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getNeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getNwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getSeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getStyleId()Ljava/lang/String;
.end method

.method public abstract getStyleName()Ljava/lang/String;
.end method

.method public abstract getSwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract getTblBg()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableBackgroundStyle;
.end method

.method public abstract getWholeTbl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBand1H()Z
.end method

.method public abstract isSetBand1V()Z
.end method

.method public abstract isSetBand2H()Z
.end method

.method public abstract isSetBand2V()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFirstCol()Z
.end method

.method public abstract isSetFirstRow()Z
.end method

.method public abstract isSetLastCol()Z
.end method

.method public abstract isSetLastRow()Z
.end method

.method public abstract isSetNeCell()Z
.end method

.method public abstract isSetNwCell()Z
.end method

.method public abstract isSetSeCell()Z
.end method

.method public abstract isSetSwCell()Z
.end method

.method public abstract isSetTblBg()Z
.end method

.method public abstract isSetWholeTbl()Z
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

.method public abstract setBand1H(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setBand1V(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setBand2H(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setBand2V(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFirstCol(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setFirstRow(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setLastCol(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setLastRow(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setNeCell(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNwCell(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setSeCell(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setStyleId(Ljava/lang/String;)V
.end method

.method public abstract setStyleName(Ljava/lang/String;)V
.end method

.method public abstract setSwCell(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract setTblBg(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableBackgroundStyle;)V
.end method

.method public abstract setWholeTbl(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBand1H()V
.end method

.method public abstract unsetBand1V()V
.end method

.method public abstract unsetBand2H()V
.end method

.method public abstract unsetBand2V()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFirstCol()V
.end method

.method public abstract unsetFirstRow()V
.end method

.method public abstract unsetLastCol()V
.end method

.method public abstract unsetLastRow()V
.end method

.method public abstract unsetNeCell()V
.end method

.method public abstract unsetNwCell()V
.end method

.method public abstract unsetSeCell()V
.end method

.method public abstract unsetSwCell()V
.end method

.method public abstract unsetTblBg()V
.end method

.method public abstract unsetWholeTbl()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetStyleId()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetStyleName()Li5/g2;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetStyleId(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetStyleName(Li5/g2;)V
.end method
