.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/i2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;
    }
.end annotation


# static fields
.field public static final A_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final A_4:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final BANNER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final B_4_ISO:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final B_4_JIS:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final B_5_ISO:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final B_5_JIS:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final CUSTOM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HAGAKI_CARD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final INT_A_3:I = 0x9

.field public static final INT_A_4:I = 0x3

.field public static final INT_BANNER:I = 0x6

.field public static final INT_B_4_ISO:I = 0xa

.field public static final INT_B_4_JIS:I = 0xc

.field public static final INT_B_5_ISO:I = 0xb

.field public static final INT_B_5_JIS:I = 0xd

.field public static final INT_CUSTOM:I = 0x7

.field public static final INT_HAGAKI_CARD:I = 0xe

.field public static final INT_LEDGER:I = 0x8

.field public static final INT_LETTER:I = 0x2

.field public static final INT_OVERHEAD:I = 0x5

.field public static final INT_SCREEN_16_X_10:I = 0x10

.field public static final INT_SCREEN_16_X_9:I = 0xf

.field public static final INT_SCREEN_4_X_3:I = 0x1

.field public static final INT_X_35_MM:I = 0x4

.field public static final LEDGER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final LETTER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final OVERHEAD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final SCREEN_16_X_10:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final SCREEN_16_X_9:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final SCREEN_4_X_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final X_35_MM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stslidesizetypeb7f3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->type:Li5/c0;

    const-string v0, "screen4x3"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->SCREEN_4_X_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "letter"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->LETTER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "A4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->A_4:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "35mm"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->X_35_MM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "overhead"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->OVERHEAD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "banner"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->BANNER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "custom"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->CUSTOM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "ledger"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->LEDGER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "A3"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->A_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "B4ISO"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->B_4_ISO:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "B5ISO"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->B_5_ISO:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "B4JIS"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->B_4_JIS:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "B5JIS"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->B_5_JIS:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "hagakiCard"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->HAGAKI_CARD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "screen16x9"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->SCREEN_16_X_9:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "screen16x10"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->SCREEN_16_X_10:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

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
