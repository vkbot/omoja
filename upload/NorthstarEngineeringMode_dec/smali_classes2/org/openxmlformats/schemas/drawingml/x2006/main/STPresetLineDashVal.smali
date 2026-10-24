.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/i2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;
    }
.end annotation


# static fields
.field public static final DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DASH:I = 0x3

.field public static final INT_DASH_DOT:I = 0x5

.field public static final INT_DOT:I = 0x2

.field public static final INT_LG_DASH:I = 0x4

.field public static final INT_LG_DASH_DOT:I = 0x6

.field public static final INT_LG_DASH_DOT_DOT:I = 0x7

.field public static final INT_SOLID:I = 0x1

.field public static final INT_SYS_DASH:I = 0x8

.field public static final INT_SYS_DASH_DOT:I = 0xa

.field public static final INT_SYS_DASH_DOT_DOT:I = 0xb

.field public static final INT_SYS_DOT:I = 0x9

.field public static final LG_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final LG_DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final LG_DASH_DOT_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final SOLID:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final SYS_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final SYS_DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final SYS_DASH_DOT_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final SYS_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpresetlinedashval159dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->type:Li5/c0;

    const-string v0, "solid"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SOLID:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "dot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "dash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "lgDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->LG_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "dashDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "lgDashDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->LG_DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "lgDashDotDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->LG_DASH_DOT_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "sysDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "sysDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "sysDashDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "sysDashDotDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DASH_DOT_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

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
