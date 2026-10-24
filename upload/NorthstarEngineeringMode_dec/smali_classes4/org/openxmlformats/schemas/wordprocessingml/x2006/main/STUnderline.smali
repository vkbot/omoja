.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;
    }
.end annotation


# static fields
.field public static final DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DASHED_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DASH_DOT_DOT_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DASH_DOT_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DASH_LONG:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DASH_LONG_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DOTTED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DOTTED_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DOT_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DOT_DOT_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DOUBLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DASH:I = 0x7

.field public static final INT_DASHED_HEAVY:I = 0x8

.field public static final INT_DASH_DOT_DOT_HEAVY:I = 0xe

.field public static final INT_DASH_DOT_HEAVY:I = 0xc

.field public static final INT_DASH_LONG:I = 0x9

.field public static final INT_DASH_LONG_HEAVY:I = 0xa

.field public static final INT_DOTTED:I = 0x5

.field public static final INT_DOTTED_HEAVY:I = 0x6

.field public static final INT_DOT_DASH:I = 0xb

.field public static final INT_DOT_DOT_DASH:I = 0xd

.field public static final INT_DOUBLE:I = 0x3

.field public static final INT_NONE:I = 0x12

.field public static final INT_SINGLE:I = 0x1

.field public static final INT_THICK:I = 0x4

.field public static final INT_WAVE:I = 0xf

.field public static final INT_WAVY_DOUBLE:I = 0x11

.field public static final INT_WAVY_HEAVY:I = 0x10

.field public static final INT_WORDS:I = 0x2

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final SINGLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final THICK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final WAVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final WAVY_DOUBLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final WAVY_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final WORDS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stunderlinef416type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->type:Li5/c0;

    const-string v0, "single"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->SINGLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "words"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->WORDS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "double"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DOUBLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "thick"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->THICK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dotted"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DOTTED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dottedHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DOTTED_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dashedHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASHED_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dashLong"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASH_LONG:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dashLongHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASH_LONG_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dotDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DOT_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dashDotHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASH_DOT_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dotDotDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DOT_DOT_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dashDotDotHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASH_DOT_DOT_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "wave"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->WAVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "wavyHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->WAVY_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "wavyDouble"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->WAVY_DOUBLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

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
