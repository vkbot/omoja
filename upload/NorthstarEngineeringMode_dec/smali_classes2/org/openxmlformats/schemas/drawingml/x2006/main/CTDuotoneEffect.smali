.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;",
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

    const-string v2, "ctduotoneeffectae52type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;->type:Li5/c0;

    return-void
.end method


# virtual methods
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

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getHslClrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract getHslClrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract getHslClrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrstClrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract getPrstClrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract getPrstClrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSchemeClrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract getSchemeClrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract getSchemeClrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScrgbClrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract getScrgbClrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract getScrgbClrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSrgbClrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract getSrgbClrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract getSrgbClrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSysClrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract getSysClrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract getSysClrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewHslClr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract insertNewPrstClr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract insertNewSchemeClr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract insertNewScrgbClr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract insertNewSrgbClr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract insertNewSysClr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
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

.method public abstract removeHslClr(I)V
.end method

.method public abstract removePrstClr(I)V
.end method

.method public abstract removeSchemeClr(I)V
.end method

.method public abstract removeScrgbClr(I)V
.end method

.method public abstract removeSrgbClr(I)V
.end method

.method public abstract removeSysClr(I)V
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

.method public abstract setHslClrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)V
.end method

.method public abstract setHslClrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPrstClrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)V
.end method

.method public abstract setPrstClrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)V
.end method

.method public abstract setSchemeClrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
.end method

.method public abstract setSchemeClrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
.end method

.method public abstract setScrgbClrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)V
.end method

.method public abstract setScrgbClrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)V
.end method

.method public abstract setSrgbClrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V
.end method

.method public abstract setSrgbClrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V
.end method

.method public abstract setSysClrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V
.end method

.method public abstract setSysClrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V
.end method

.method public abstract sizeOfHslClrArray()I
.end method

.method public abstract sizeOfPrstClrArray()I
.end method

.method public abstract sizeOfSchemeClrArray()I
.end method

.method public abstract sizeOfScrgbClrArray()I
.end method

.method public abstract sizeOfSrgbClrArray()I
.end method

.method public abstract sizeOfSysClrArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
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
