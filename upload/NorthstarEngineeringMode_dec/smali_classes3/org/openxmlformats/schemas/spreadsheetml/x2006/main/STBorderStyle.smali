.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;
    }
.end annotation


# static fields
.field public static final DASHED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final DASH_DOT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final DASH_DOT_DOT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final DOTTED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final DOUBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final HAIR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final INT_DASHED:I = 0x4

.field public static final INT_DASH_DOT:I = 0xa

.field public static final INT_DASH_DOT_DOT:I = 0xc

.field public static final INT_DOTTED:I = 0x5

.field public static final INT_DOUBLE:I = 0x7

.field public static final INT_HAIR:I = 0x8

.field public static final INT_MEDIUM:I = 0x3

.field public static final INT_MEDIUM_DASHED:I = 0x9

.field public static final INT_MEDIUM_DASH_DOT:I = 0xb

.field public static final INT_MEDIUM_DASH_DOT_DOT:I = 0xd

.field public static final INT_NONE:I = 0x1

.field public static final INT_SLANT_DASH_DOT:I = 0xe

.field public static final INT_THICK:I = 0x6

.field public static final INT_THIN:I = 0x2

.field public static final MEDIUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final MEDIUM_DASHED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final MEDIUM_DASH_DOT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final MEDIUM_DASH_DOT_DOT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final SLANT_DASH_DOT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final THICK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final THIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stborderstylec774type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->type:Li5/c0;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "thin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->THIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "medium"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->MEDIUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "dashed"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->DASHED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "dotted"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->DOTTED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "thick"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->THICK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "double"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->DOUBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "hair"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->HAIR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "mediumDashed"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->MEDIUM_DASHED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "dashDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->DASH_DOT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "mediumDashDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->MEDIUM_DASH_DOT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "dashDotDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->DASH_DOT_DOT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "mediumDashDotDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->MEDIUM_DASH_DOT_DOT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    const-string v0, "slantDashDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle;->SLANT_DASH_DOT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

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
