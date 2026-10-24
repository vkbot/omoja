.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;",
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

    const-string v2, "ctoleobject5da8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewEmbed()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObjectEmbed;
.end method

.method public abstract addNewLink()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObjectLink;
.end method

.method public abstract addNewPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
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

.method public abstract getEmbed()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObjectEmbed;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImgH()I
.end method

.method public abstract getImgW()I
.end method

.method public abstract getLink()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObjectLink;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
.end method

.method public abstract getProgId()Ljava/lang/String;
.end method

.method public abstract getShowAsIcon()Z
.end method

.method public abstract getSpid()Ljava/lang/String;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetEmbed()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetImgH()Z
.end method

.method public abstract isSetImgW()Z
.end method

.method public abstract isSetLink()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetPic()Z
.end method

.method public abstract isSetProgId()Z
.end method

.method public abstract isSetShowAsIcon()Z
.end method

.method public abstract isSetSpid()Z
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

.method public abstract setEmbed(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObjectEmbed;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setImgH(I)V
.end method

.method public abstract setImgW(I)V
.end method

.method public abstract setLink(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObjectLink;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPic(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)V
.end method

.method public abstract setProgId(Ljava/lang/String;)V
.end method

.method public abstract setShowAsIcon(Z)V
.end method

.method public abstract setSpid(Ljava/lang/String;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetEmbed()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetImgH()V
.end method

.method public abstract unsetImgW()V
.end method

.method public abstract unsetLink()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetPic()V
.end method

.method public abstract unsetProgId()V
.end method

.method public abstract unsetShowAsIcon()V
.end method

.method public abstract unsetSpid()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetImgH()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;
.end method

.method public abstract xgetImgW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;
.end method

.method public abstract xgetName()Li5/g2;
.end method

.method public abstract xgetProgId()Li5/g2;
.end method

.method public abstract xgetShowAsIcon()Li5/m0;
.end method

.method public abstract xgetSpid()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeID;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetImgH(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;)V
.end method

.method public abstract xsetImgW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;)V
.end method

.method public abstract xsetName(Li5/g2;)V
.end method

.method public abstract xsetProgId(Li5/g2;)V
.end method

.method public abstract xsetShowAsIcon(Li5/m0;)V
.end method

.method public abstract xsetSpid(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeID;)V
.end method
