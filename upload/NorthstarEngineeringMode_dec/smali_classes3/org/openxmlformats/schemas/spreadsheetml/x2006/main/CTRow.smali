.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;",
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

    const-string v2, "ctrowdd39type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewC()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
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

.method public abstract getCArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
.end method

.method public abstract getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
.end method

.method public abstract getCList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCollapsed()Z
.end method

.method public abstract getCustomFormat()Z
.end method

.method public abstract getCustomHeight()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getHt()D
.end method

.method public abstract getOutlineLevel()S
.end method

.method public abstract getPh()Z
.end method

.method public abstract getR()J
.end method

.method public abstract getS()J
.end method

.method public abstract getSpans()Ljava/util/List;
.end method

.method public abstract getThickBot()Z
.end method

.method public abstract getThickTop()Z
.end method

.method public abstract insertNewC(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCollapsed()Z
.end method

.method public abstract isSetCustomFormat()Z
.end method

.method public abstract isSetCustomHeight()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetHt()Z
.end method

.method public abstract isSetOutlineLevel()Z
.end method

.method public abstract isSetPh()Z
.end method

.method public abstract isSetR()Z
.end method

.method public abstract isSetS()Z
.end method

.method public abstract isSetSpans()Z
.end method

.method public abstract isSetThickBot()Z
.end method

.method public abstract isSetThickTop()Z
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

.method public abstract removeC(I)V
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

.method public abstract setCArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
.end method

.method public abstract setCArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
.end method

.method public abstract setCollapsed(Z)V
.end method

.method public abstract setCustomFormat(Z)V
.end method

.method public abstract setCustomHeight(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setHt(D)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOutlineLevel(S)V
.end method

.method public abstract setPh(Z)V
.end method

.method public abstract setR(J)V
.end method

.method public abstract setS(J)V
.end method

.method public abstract setSpans(Ljava/util/List;)V
.end method

.method public abstract setThickBot(Z)V
.end method

.method public abstract setThickTop(Z)V
.end method

.method public abstract sizeOfCArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCollapsed()V
.end method

.method public abstract unsetCustomFormat()V
.end method

.method public abstract unsetCustomHeight()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetHt()V
.end method

.method public abstract unsetOutlineLevel()V
.end method

.method public abstract unsetPh()V
.end method

.method public abstract unsetR()V
.end method

.method public abstract unsetS()V
.end method

.method public abstract unsetSpans()V
.end method

.method public abstract unsetThickBot()V
.end method

.method public abstract unsetThickTop()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetCollapsed()Li5/m0;
.end method

.method public abstract xgetCustomFormat()Li5/m0;
.end method

.method public abstract xgetCustomHeight()Li5/m0;
.end method

.method public abstract xgetHidden()Li5/m0;
.end method

.method public abstract xgetHt()Li5/u0;
.end method

.method public abstract xgetOutlineLevel()Li5/k2;
.end method

.method public abstract xgetPh()Li5/m0;
.end method

.method public abstract xgetR()Li5/l2;
.end method

.method public abstract xgetS()Li5/l2;
.end method

.method public abstract xgetSpans()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellSpans;
.end method

.method public abstract xgetThickBot()Li5/m0;
.end method

.method public abstract xgetThickTop()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetCollapsed(Li5/m0;)V
.end method

.method public abstract xsetCustomFormat(Li5/m0;)V
.end method

.method public abstract xsetCustomHeight(Li5/m0;)V
.end method

.method public abstract xsetHidden(Li5/m0;)V
.end method

.method public abstract xsetHt(Li5/u0;)V
.end method

.method public abstract xsetOutlineLevel(Li5/k2;)V
.end method

.method public abstract xsetPh(Li5/m0;)V
.end method

.method public abstract xsetR(Li5/l2;)V
.end method

.method public abstract xsetS(Li5/l2;)V
.end method

.method public abstract xsetSpans(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellSpans;)V
.end method

.method public abstract xsetThickBot(Li5/m0;)V
.end method

.method public abstract xsetThickTop(Li5/m0;)V
.end method
