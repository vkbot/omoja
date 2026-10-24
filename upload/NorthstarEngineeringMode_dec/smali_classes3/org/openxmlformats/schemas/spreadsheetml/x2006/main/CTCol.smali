.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
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

    const-string v2, "ctcola95ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->type:Li5/c0;

    return-void
.end method


# virtual methods
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

.method public abstract getBestFit()Z
.end method

.method public abstract getCollapsed()Z
.end method

.method public abstract getCustomWidth()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getMax()J
.end method

.method public abstract getMin()J
.end method

.method public abstract getOutlineLevel()S
.end method

.method public abstract getPhonetic()Z
.end method

.method public abstract getStyle()J
.end method

.method public abstract getWidth()D
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBestFit()Z
.end method

.method public abstract isSetCollapsed()Z
.end method

.method public abstract isSetCustomWidth()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetOutlineLevel()Z
.end method

.method public abstract isSetPhonetic()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract isSetWidth()Z
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

.method public abstract setBestFit(Z)V
.end method

.method public abstract setCollapsed(Z)V
.end method

.method public abstract setCustomWidth(Z)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setMax(J)V
.end method

.method public abstract setMin(J)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOutlineLevel(S)V
.end method

.method public abstract setPhonetic(Z)V
.end method

.method public abstract setStyle(J)V
.end method

.method public abstract setWidth(D)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBestFit()V
.end method

.method public abstract unsetCollapsed()V
.end method

.method public abstract unsetCustomWidth()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetOutlineLevel()V
.end method

.method public abstract unsetPhonetic()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract unsetWidth()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetBestFit()Li5/m0;
.end method

.method public abstract xgetCollapsed()Li5/m0;
.end method

.method public abstract xgetCustomWidth()Li5/m0;
.end method

.method public abstract xgetHidden()Li5/m0;
.end method

.method public abstract xgetMax()Li5/l2;
.end method

.method public abstract xgetMin()Li5/l2;
.end method

.method public abstract xgetOutlineLevel()Li5/k2;
.end method

.method public abstract xgetPhonetic()Li5/m0;
.end method

.method public abstract xgetStyle()Li5/l2;
.end method

.method public abstract xgetWidth()Li5/u0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetBestFit(Li5/m0;)V
.end method

.method public abstract xsetCollapsed(Li5/m0;)V
.end method

.method public abstract xsetCustomWidth(Li5/m0;)V
.end method

.method public abstract xsetHidden(Li5/m0;)V
.end method

.method public abstract xsetMax(Li5/l2;)V
.end method

.method public abstract xsetMin(Li5/l2;)V
.end method

.method public abstract xsetOutlineLevel(Li5/k2;)V
.end method

.method public abstract xsetPhonetic(Li5/m0;)V
.end method

.method public abstract xsetStyle(Li5/l2;)V
.end method

.method public abstract xsetWidth(Li5/u0;)V
.end method
