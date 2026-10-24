.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;",
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

    const-string v2, "ctshape3d6783type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBevelB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;
.end method

.method public abstract addNewBevelT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;
.end method

.method public abstract addNewContourClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewExtrusionClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
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

.method public abstract getBevelB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;
.end method

.method public abstract getBevelT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;
.end method

.method public abstract getContourClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getContourW()J
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getExtrusionClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getExtrusionH()J
.end method

.method public abstract getPrstMaterial()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;
.end method

.method public abstract getZ()Ljava/lang/Object;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBevelB()Z
.end method

.method public abstract isSetBevelT()Z
.end method

.method public abstract isSetContourClr()Z
.end method

.method public abstract isSetContourW()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetExtrusionClr()Z
.end method

.method public abstract isSetExtrusionH()Z
.end method

.method public abstract isSetPrstMaterial()Z
.end method

.method public abstract isSetZ()Z
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

.method public abstract setBevelB(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;)V
.end method

.method public abstract setBevelT(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBevel;)V
.end method

.method public abstract setContourClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setContourW(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setExtrusionClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setExtrusionH(J)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPrstMaterial(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType$Enum;)V
.end method

.method public abstract setZ(Ljava/lang/Object;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBevelB()V
.end method

.method public abstract unsetBevelT()V
.end method

.method public abstract unsetContourClr()V
.end method

.method public abstract unsetContourW()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetExtrusionClr()V
.end method

.method public abstract unsetExtrusionH()V
.end method

.method public abstract unsetPrstMaterial()V
.end method

.method public abstract unsetZ()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetContourW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetExtrusionH()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetPrstMaterial()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;
.end method

.method public abstract xgetZ()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetContourW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetExtrusionH(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetPrstMaterial(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetMaterialType;)V
.end method

.method public abstract xsetZ(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)V
.end method
