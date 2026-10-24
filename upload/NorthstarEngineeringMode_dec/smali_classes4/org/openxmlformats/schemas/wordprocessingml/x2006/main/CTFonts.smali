.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;",
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

    const-string v2, "ctfonts124etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->type:Li5/c0;

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

.method public abstract getAscii()Ljava/lang/String;
.end method

.method public abstract getAsciiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;
.end method

.method public abstract getCs()Ljava/lang/String;
.end method

.method public abstract getCstheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEastAsia()Ljava/lang/String;
.end method

.method public abstract getEastAsiaTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;
.end method

.method public abstract getHAnsi()Ljava/lang/String;
.end method

.method public abstract getHAnsiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;
.end method

.method public abstract getHint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAscii()Z
.end method

.method public abstract isSetAsciiTheme()Z
.end method

.method public abstract isSetCs()Z
.end method

.method public abstract isSetCstheme()Z
.end method

.method public abstract isSetEastAsia()Z
.end method

.method public abstract isSetEastAsiaTheme()Z
.end method

.method public abstract isSetHAnsi()Z
.end method

.method public abstract isSetHAnsiTheme()Z
.end method

.method public abstract isSetHint()Z
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

.method public abstract setAscii(Ljava/lang/String;)V
.end method

.method public abstract setAsciiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V
.end method

.method public abstract setCs(Ljava/lang/String;)V
.end method

.method public abstract setCstheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V
.end method

.method public abstract setEastAsia(Ljava/lang/String;)V
.end method

.method public abstract setEastAsiaTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V
.end method

.method public abstract setHAnsi(Ljava/lang/String;)V
.end method

.method public abstract setHAnsiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V
.end method

.method public abstract setHint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint$Enum;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAscii()V
.end method

.method public abstract unsetAsciiTheme()V
.end method

.method public abstract unsetCs()V
.end method

.method public abstract unsetCstheme()V
.end method

.method public abstract unsetEastAsia()V
.end method

.method public abstract unsetEastAsiaTheme()V
.end method

.method public abstract unsetHAnsi()V
.end method

.method public abstract unsetHAnsiTheme()V
.end method

.method public abstract unsetHint()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAscii()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetAsciiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;
.end method

.method public abstract xgetCs()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCstheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;
.end method

.method public abstract xgetEastAsia()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetEastAsiaTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;
.end method

.method public abstract xgetHAnsi()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetHAnsiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;
.end method

.method public abstract xgetHint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAscii(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetAsciiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V
.end method

.method public abstract xsetCs(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCstheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V
.end method

.method public abstract xsetEastAsia(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetEastAsiaTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V
.end method

.method public abstract xsetHAnsi(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetHAnsiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V
.end method

.method public abstract xsetHint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint;)V
.end method
