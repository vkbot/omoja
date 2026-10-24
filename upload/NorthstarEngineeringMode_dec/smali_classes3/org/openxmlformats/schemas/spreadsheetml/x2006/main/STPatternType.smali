.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;
    }
.end annotation


# static fields
.field public static final DARK_DOWN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_GRID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_HORIZONTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_TRELLIS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_UP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_VERTICAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRAY_0625:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final GRAY_125:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final INT_DARK_DOWN:I = 0x8

.field public static final INT_DARK_GRAY:I = 0x4

.field public static final INT_DARK_GRID:I = 0xa

.field public static final INT_DARK_HORIZONTAL:I = 0x6

.field public static final INT_DARK_TRELLIS:I = 0xb

.field public static final INT_DARK_UP:I = 0x9

.field public static final INT_DARK_VERTICAL:I = 0x7

.field public static final INT_GRAY_0625:I = 0x13

.field public static final INT_GRAY_125:I = 0x12

.field public static final INT_LIGHT_DOWN:I = 0xe

.field public static final INT_LIGHT_GRAY:I = 0x5

.field public static final INT_LIGHT_GRID:I = 0x10

.field public static final INT_LIGHT_HORIZONTAL:I = 0xc

.field public static final INT_LIGHT_TRELLIS:I = 0x11

.field public static final INT_LIGHT_UP:I = 0xf

.field public static final INT_LIGHT_VERTICAL:I = 0xd

.field public static final INT_MEDIUM_GRAY:I = 0x3

.field public static final INT_NONE:I = 0x1

.field public static final INT_SOLID:I = 0x2

.field public static final LIGHT_DOWN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_GRID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_HORIZONTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_TRELLIS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_UP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_VERTICAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final MEDIUM_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final SOLID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpatterntype7939type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->type:Li5/c0;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "solid"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->SOLID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "mediumGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->MEDIUM_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "darkGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "lightGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "darkHorizontal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_HORIZONTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "darkVertical"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_VERTICAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "darkDown"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_DOWN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "darkUp"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_UP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "darkGrid"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_GRID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "darkTrellis"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_TRELLIS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "lightHorizontal"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_HORIZONTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "lightVertical"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_VERTICAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "lightDown"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_DOWN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "lightUp"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_UP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "lightGrid"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_GRID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "lightTrellis"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_TRELLIS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "gray125"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->GRAY_125:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    const-string v0, "gray0625"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->GRAY_0625:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

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
