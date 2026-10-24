.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;",
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

    const-string v2, "cttablecellproperties1614type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract addNewCell3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract addNewHeaders()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHeaders;
.end method

.method public abstract addNewLnB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewLnBlToTr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewLnL()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewLnR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewLnT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewLnTlToBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
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

.method public abstract getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;
.end method

.method public abstract getAnchorCtr()Z
.end method

.method public abstract getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract getCell3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract getHeaders()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHeaders;
.end method

.method public abstract getHorzOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;
.end method

.method public abstract getLnB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getLnBlToTr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getLnL()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getLnR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getLnT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getLnTlToBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getMarB()Ljava/lang/Object;
.end method

.method public abstract getMarL()Ljava/lang/Object;
.end method

.method public abstract getMarR()Ljava/lang/Object;
.end method

.method public abstract getMarT()Ljava/lang/Object;
.end method

.method public abstract getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAnchor()Z
.end method

.method public abstract isSetAnchorCtr()Z
.end method

.method public abstract isSetBlipFill()Z
.end method

.method public abstract isSetCell3D()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGradFill()Z
.end method

.method public abstract isSetGrpFill()Z
.end method

.method public abstract isSetHeaders()Z
.end method

.method public abstract isSetHorzOverflow()Z
.end method

.method public abstract isSetLnB()Z
.end method

.method public abstract isSetLnBlToTr()Z
.end method

.method public abstract isSetLnL()Z
.end method

.method public abstract isSetLnR()Z
.end method

.method public abstract isSetLnT()Z
.end method

.method public abstract isSetLnTlToBr()Z
.end method

.method public abstract isSetMarB()Z
.end method

.method public abstract isSetMarL()Z
.end method

.method public abstract isSetMarR()Z
.end method

.method public abstract isSetMarT()Z
.end method

.method public abstract isSetNoFill()Z
.end method

.method public abstract isSetPattFill()Z
.end method

.method public abstract isSetSolidFill()Z
.end method

.method public abstract isSetVert()Z
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

.method public abstract setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V
.end method

.method public abstract setAnchorCtr(Z)V
.end method

.method public abstract setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
.end method

.method public abstract setCell3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCell3D;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
.end method

.method public abstract setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
.end method

.method public abstract setHeaders(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHeaders;)V
.end method

.method public abstract setHorzOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;)V
.end method

.method public abstract setLnB(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setLnBlToTr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setLnL(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setLnR(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setLnT(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setLnTlToBr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setMarB(Ljava/lang/Object;)V
.end method

.method public abstract setMarL(Ljava/lang/Object;)V
.end method

.method public abstract setMarR(Ljava/lang/Object;)V
.end method

.method public abstract setMarT(Ljava/lang/Object;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
.end method

.method public abstract setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
.end method

.method public abstract setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
.end method

.method public abstract setVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAnchor()V
.end method

.method public abstract unsetAnchorCtr()V
.end method

.method public abstract unsetBlipFill()V
.end method

.method public abstract unsetCell3D()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGradFill()V
.end method

.method public abstract unsetGrpFill()V
.end method

.method public abstract unsetHeaders()V
.end method

.method public abstract unsetHorzOverflow()V
.end method

.method public abstract unsetLnB()V
.end method

.method public abstract unsetLnBlToTr()V
.end method

.method public abstract unsetLnL()V
.end method

.method public abstract unsetLnR()V
.end method

.method public abstract unsetLnT()V
.end method

.method public abstract unsetLnTlToBr()V
.end method

.method public abstract unsetMarB()V
.end method

.method public abstract unsetMarL()V
.end method

.method public abstract unsetMarR()V
.end method

.method public abstract unsetMarT()V
.end method

.method public abstract unsetNoFill()V
.end method

.method public abstract unsetPattFill()V
.end method

.method public abstract unsetSolidFill()V
.end method

.method public abstract unsetVert()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;
.end method

.method public abstract xgetAnchorCtr()Li5/m0;
.end method

.method public abstract xgetHorzOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType;
.end method

.method public abstract xgetMarB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetMarL()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetMarR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetMarT()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;)V
.end method

.method public abstract xsetAnchorCtr(Li5/m0;)V
.end method

.method public abstract xsetHorzOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType;)V
.end method

.method public abstract xsetMarB(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetMarL(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetMarR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetMarT(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;)V
.end method
