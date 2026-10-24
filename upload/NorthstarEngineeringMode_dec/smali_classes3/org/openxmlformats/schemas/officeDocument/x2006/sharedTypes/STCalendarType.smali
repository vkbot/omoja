.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;",
            ">;"
        }
    .end annotation
.end field

.field public static final GREGORIAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final GREGORIAN_ARABIC:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final GREGORIAN_ME_FRENCH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final GREGORIAN_US:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final GREGORIAN_XLIT_ENGLISH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final GREGORIAN_XLIT_FRENCH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final HEBREW:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final HIJRI:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final INT_GREGORIAN:I = 0x1

.field public static final INT_GREGORIAN_ARABIC:I = 0x4

.field public static final INT_GREGORIAN_ME_FRENCH:I = 0x3

.field public static final INT_GREGORIAN_US:I = 0x2

.field public static final INT_GREGORIAN_XLIT_ENGLISH:I = 0xc

.field public static final INT_GREGORIAN_XLIT_FRENCH:I = 0xd

.field public static final INT_HEBREW:I = 0x6

.field public static final INT_HIJRI:I = 0x5

.field public static final INT_JAPAN:I = 0x8

.field public static final INT_KOREA:I = 0xa

.field public static final INT_NONE:I = 0xe

.field public static final INT_SAKA:I = 0xb

.field public static final INT_TAIWAN:I = 0x7

.field public static final INT_THAI:I = 0x9

.field public static final JAPAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final KOREA:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final SAKA:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final TAIWAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final THAI:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stcalendartype8cd2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->type:Li5/c0;

    const-string v0, "gregorian"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "gregorianUs"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN_US:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "gregorianMeFrench"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN_ME_FRENCH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "gregorianArabic"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN_ARABIC:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "hijri"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->HIJRI:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "hebrew"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->HEBREW:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "taiwan"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->TAIWAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "japan"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->JAPAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "thai"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->THAI:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "korea"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->KOREA:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "saka"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->SAKA:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "gregorianXlitEnglish"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN_XLIT_ENGLISH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "gregorianXlitFrench"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN_XLIT_FRENCH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->NONE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

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
