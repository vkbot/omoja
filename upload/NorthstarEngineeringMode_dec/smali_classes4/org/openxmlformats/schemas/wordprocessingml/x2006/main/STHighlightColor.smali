.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;
    }
.end annotation


# static fields
.field public static final BLACK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;",
            ">;"
        }
    .end annotation
.end field

.field public static final GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final INT_BLACK:I = 0x1

.field public static final INT_BLUE:I = 0x2

.field public static final INT_CYAN:I = 0x3

.field public static final INT_DARK_BLUE:I = 0x9

.field public static final INT_DARK_CYAN:I = 0xa

.field public static final INT_DARK_GRAY:I = 0xf

.field public static final INT_DARK_GREEN:I = 0xb

.field public static final INT_DARK_MAGENTA:I = 0xc

.field public static final INT_DARK_RED:I = 0xd

.field public static final INT_DARK_YELLOW:I = 0xe

.field public static final INT_GREEN:I = 0x4

.field public static final INT_LIGHT_GRAY:I = 0x10

.field public static final INT_MAGENTA:I = 0x5

.field public static final INT_NONE:I = 0x11

.field public static final INT_RED:I = 0x6

.field public static final INT_WHITE:I = 0x8

.field public static final INT_YELLOW:I = 0x7

.field public static final LIGHT_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final WHITE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sthighlightcolora8e9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->type:Li5/c0;

    const-string v0, "black"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->BLACK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "blue"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "cyan"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "green"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "magenta"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "red"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "yellow"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "white"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->WHITE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkBlue"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkCyan"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkGreen"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkMagenta"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkRed"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkYellow"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "lightGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->LIGHT_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

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

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEnumValue()Li5/h0;
.end method

.method public abstract synthetic getStringValue()Ljava/lang/String;
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

.method public abstract setEnumValue(Li5/h0;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract synthetic setStringValue(Ljava/lang/String;)V
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
