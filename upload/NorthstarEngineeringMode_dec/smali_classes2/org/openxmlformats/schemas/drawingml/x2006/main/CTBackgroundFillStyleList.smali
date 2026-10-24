.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFillStyleList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFillStyleList;",
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

    const-string v2, "ctbackgroundfillstylelist13cftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFillStyleList;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFillStyleList;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
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

.method public abstract getBlipFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract getBlipFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract getBlipFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getGradFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract getGradFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract getGradFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract getGrpFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract getGrpFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract getNoFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract getNoFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPattFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract getPattFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract getPattFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSolidFillArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getSolidFillArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getSolidFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewBlipFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract insertNewGradFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract insertNewGrpFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract insertNewNoFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract insertNewPattFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract insertNewSolidFill(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
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

.method public abstract removeBlipFill(I)V
.end method

.method public abstract removeGradFill(I)V
.end method

.method public abstract removeGrpFill(I)V
.end method

.method public abstract removeNoFill(I)V
.end method

.method public abstract removePattFill(I)V
.end method

.method public abstract removeSolidFill(I)V
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

.method public abstract setBlipFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
.end method

.method public abstract setBlipFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
.end method

.method public abstract setGradFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
.end method

.method public abstract setGradFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
.end method

.method public abstract setGrpFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
.end method

.method public abstract setGrpFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNoFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
.end method

.method public abstract setNoFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
.end method

.method public abstract setPattFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
.end method

.method public abstract setPattFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
.end method

.method public abstract setSolidFillArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
.end method

.method public abstract setSolidFillArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
.end method

.method public abstract sizeOfBlipFillArray()I
.end method

.method public abstract sizeOfGradFillArray()I
.end method

.method public abstract sizeOfGrpFillArray()I
.end method

.method public abstract sizeOfNoFillArray()I
.end method

.method public abstract sizeOfPattFillArray()I
.end method

.method public abstract sizeOfSolidFillArray()I
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
