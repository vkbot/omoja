.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;",
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

    const-string v2, "cttextparagraphcaf2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract addNewEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.end method

.method public abstract addNewFld()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
.end method

.method public abstract addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
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

.method public abstract getBrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract getBrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract getBrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.end method

.method public abstract getFldArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract getFldArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract getFldList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
.end method

.method public abstract getRArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract getRArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract getRList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewBr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract insertNewFld(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract insertNewR(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetEndParaRPr()Z
.end method

.method public abstract isSetPPr()Z
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

.method public abstract removeBr(I)V
.end method

.method public abstract removeFld(I)V
.end method

.method public abstract removeR(I)V
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

.method public abstract setBrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;)V
.end method

.method public abstract setBrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;)V
.end method

.method public abstract setEndParaRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
.end method

.method public abstract setFldArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;)V
.end method

.method public abstract setFldArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
.end method

.method public abstract setRArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)V
.end method

.method public abstract setRArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)V
.end method

.method public abstract sizeOfBrArray()I
.end method

.method public abstract sizeOfFldArray()I
.end method

.method public abstract sizeOfRArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetEndParaRPr()V
.end method

.method public abstract unsetPPr()V
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
