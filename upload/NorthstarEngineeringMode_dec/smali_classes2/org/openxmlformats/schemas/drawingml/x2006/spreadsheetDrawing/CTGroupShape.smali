.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;",
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

    const-string v2, "ctgroupshape6c36type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
.end method

.method public abstract addNewGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
.end method

.method public abstract addNewGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
.end method

.method public abstract addNewGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
.end method

.method public abstract addNewNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShapeNonVisual;
.end method

.method public abstract addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
.end method

.method public abstract addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
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

.method public abstract getCxnSpArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
.end method

.method public abstract getCxnSpArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
.end method

.method public abstract getCxnSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getGraphicFrameArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
.end method

.method public abstract getGraphicFrameArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
.end method

.method public abstract getGraphicFrameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpSpArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
.end method

.method public abstract getGrpSpArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
.end method

.method public abstract getGrpSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
.end method

.method public abstract getNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShapeNonVisual;
.end method

.method public abstract getPicArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
.end method

.method public abstract getPicArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
.end method

.method public abstract getPicList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
.end method

.method public abstract getSpArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
.end method

.method public abstract getSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCxnSp(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
.end method

.method public abstract insertNewGraphicFrame(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
.end method

.method public abstract insertNewGrpSp(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
.end method

.method public abstract insertNewPic(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
.end method

.method public abstract insertNewSp(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
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

.method public abstract removeCxnSp(I)V
.end method

.method public abstract removeGraphicFrame(I)V
.end method

.method public abstract removeGrpSp(I)V
.end method

.method public abstract removePic(I)V
.end method

.method public abstract removeSp(I)V
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

.method public abstract setCxnSpArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V
.end method

.method public abstract setCxnSpArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V
.end method

.method public abstract setGraphicFrameArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V
.end method

.method public abstract setGraphicFrameArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V
.end method

.method public abstract setGrpSpArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V
.end method

.method public abstract setGrpSpArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V
.end method

.method public abstract setGrpSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNvGrpSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShapeNonVisual;)V
.end method

.method public abstract setPicArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V
.end method

.method public abstract setPicArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V
.end method

.method public abstract setSpArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
.end method

.method public abstract setSpArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
.end method

.method public abstract sizeOfCxnSpArray()I
.end method

.method public abstract sizeOfGraphicFrameArray()I
.end method

.method public abstract sizeOfGrpSpArray()I
.end method

.method public abstract sizeOfPicArray()I
.end method

.method public abstract sizeOfSpArray()I
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
