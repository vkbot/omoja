.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;",
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

    const-string v2, "ctcolormapping5bc6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
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

.method public abstract getAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getBg1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getBg2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFolHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getTx1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getTx2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetExtLst()Z
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

.method public abstract setAccent1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent3(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent4(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent5(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent6(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setBg1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setBg2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFolHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setTx1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setTx2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetBg1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetBg2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetFolHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetTx1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetTx2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAccent1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent3(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent4(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent5(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent6(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetBg1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetBg2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetFolHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetTx1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetTx2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method
