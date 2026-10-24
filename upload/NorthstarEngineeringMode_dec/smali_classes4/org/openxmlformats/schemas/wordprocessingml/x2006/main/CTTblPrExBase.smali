.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;",
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

    const-string v2, "cttblprexbasee7eetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;
.end method

.method public abstract addNewShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract addNewTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;
.end method

.method public abstract addNewTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;
.end method

.method public abstract addNewTblCellSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract addNewTblInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract addNewTblLayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLayoutType;
.end method

.method public abstract addNewTblLook()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;
.end method

.method public abstract addNewTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
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

.method public abstract getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;
.end method

.method public abstract getShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;
.end method

.method public abstract getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;
.end method

.method public abstract getTblCellSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getTblInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getTblLayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLayoutType;
.end method

.method public abstract getTblLook()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;
.end method

.method public abstract getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetJc()Z
.end method

.method public abstract isSetShd()Z
.end method

.method public abstract isSetTblBorders()Z
.end method

.method public abstract isSetTblCellMar()Z
.end method

.method public abstract isSetTblCellSpacing()Z
.end method

.method public abstract isSetTblInd()Z
.end method

.method public abstract isSetTblLayout()Z
.end method

.method public abstract isSetTblLook()Z
.end method

.method public abstract isSetTblW()Z
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

.method public abstract setJc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setShd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;)V
.end method

.method public abstract setTblBorders(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;)V
.end method

.method public abstract setTblCellMar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;)V
.end method

.method public abstract setTblCellSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setTblInd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setTblLayout(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLayoutType;)V
.end method

.method public abstract setTblLook(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;)V
.end method

.method public abstract setTblW(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetJc()V
.end method

.method public abstract unsetShd()V
.end method

.method public abstract unsetTblBorders()V
.end method

.method public abstract unsetTblCellMar()V
.end method

.method public abstract unsetTblCellSpacing()V
.end method

.method public abstract unsetTblInd()V
.end method

.method public abstract unsetTblLayout()V
.end method

.method public abstract unsetTblLook()V
.end method

.method public abstract unsetTblW()V
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
