.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;",
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

    const-string v2, "cttablestyletextstylec932type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;
.end method

.method public abstract addNewFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;
.end method

.method public abstract addNewHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract addNewPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract addNewSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract addNewScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract addNewSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
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

.method public abstract getB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType$Enum;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;
.end method

.method public abstract getFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;
.end method

.method public abstract getHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract getI()Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType$Enum;
.end method

.method public abstract getPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract getScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract getSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetB()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFont()Z
.end method

.method public abstract isSetFontRef()Z
.end method

.method public abstract isSetHslClr()Z
.end method

.method public abstract isSetI()Z
.end method

.method public abstract isSetPrstClr()Z
.end method

.method public abstract isSetSchemeClr()Z
.end method

.method public abstract isSetScrgbClr()Z
.end method

.method public abstract isSetSrgbClr()Z
.end method

.method public abstract isSetSysClr()Z
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

.method public abstract setB(Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType$Enum;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFont(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;)V
.end method

.method public abstract setFontRef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;)V
.end method

.method public abstract setHslClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)V
.end method

.method public abstract setI(Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType$Enum;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPrstClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)V
.end method

.method public abstract setSchemeClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
.end method

.method public abstract setScrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)V
.end method

.method public abstract setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V
.end method

.method public abstract setSysClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetB()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFont()V
.end method

.method public abstract unsetFontRef()V
.end method

.method public abstract unsetHslClr()V
.end method

.method public abstract unsetI()V
.end method

.method public abstract unsetPrstClr()V
.end method

.method public abstract unsetSchemeClr()V
.end method

.method public abstract unsetScrgbClr()V
.end method

.method public abstract unsetSrgbClr()V
.end method

.method public abstract unsetSysClr()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType;
.end method

.method public abstract xgetI()Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetB(Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType;)V
.end method

.method public abstract xsetI(Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType;)V
.end method
