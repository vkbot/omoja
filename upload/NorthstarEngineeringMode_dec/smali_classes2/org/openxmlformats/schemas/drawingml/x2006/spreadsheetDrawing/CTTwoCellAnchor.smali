.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;",
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

    const-string v2, "cttwocellanchor1e8dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewClientData()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;
.end method

.method public abstract addNewContentPart()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTRel;
.end method

.method public abstract addNewCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
.end method

.method public abstract addNewFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
.end method

.method public abstract addNewGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
.end method

.method public abstract addNewGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
.end method

.method public abstract addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
.end method

.method public abstract addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
.end method

.method public abstract addNewTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
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

.method public abstract getClientData()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;
.end method

.method public abstract getContentPart()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTRel;
.end method

.method public abstract getCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEditAs()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;
.end method

.method public abstract getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
.end method

.method public abstract getGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
.end method

.method public abstract getGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;
.end method

.method public abstract getPic()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
.end method

.method public abstract getSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
.end method

.method public abstract getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetContentPart()Z
.end method

.method public abstract isSetCxnSp()Z
.end method

.method public abstract isSetEditAs()Z
.end method

.method public abstract isSetGraphicFrame()Z
.end method

.method public abstract isSetGrpSp()Z
.end method

.method public abstract isSetPic()Z
.end method

.method public abstract isSetSp()Z
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

.method public abstract setClientData(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;)V
.end method

.method public abstract setContentPart(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTRel;)V
.end method

.method public abstract setCxnSp(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V
.end method

.method public abstract setEditAs(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;)V
.end method

.method public abstract setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V
.end method

.method public abstract setGraphicFrame(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V
.end method

.method public abstract setGrpSp(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPic(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V
.end method

.method public abstract setSp(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
.end method

.method public abstract setTo(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetContentPart()V
.end method

.method public abstract unsetCxnSp()V
.end method

.method public abstract unsetEditAs()V
.end method

.method public abstract unsetGraphicFrame()V
.end method

.method public abstract unsetGrpSp()V
.end method

.method public abstract unsetPic()V
.end method

.method public abstract unsetSp()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetEditAs()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetEditAs(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;)V
.end method
