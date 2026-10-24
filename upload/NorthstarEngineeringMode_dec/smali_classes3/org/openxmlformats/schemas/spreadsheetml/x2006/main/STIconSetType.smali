.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_X_3_ARROWS:I = 0x1

.field public static final INT_X_3_ARROWS_GRAY:I = 0x2

.field public static final INT_X_3_FLAGS:I = 0x3

.field public static final INT_X_3_SIGNS:I = 0x6

.field public static final INT_X_3_SYMBOLS:I = 0x7

.field public static final INT_X_3_SYMBOLS_2:I = 0x8

.field public static final INT_X_3_TRAFFIC_LIGHTS_1:I = 0x4

.field public static final INT_X_3_TRAFFIC_LIGHTS_2:I = 0x5

.field public static final INT_X_4_ARROWS:I = 0x9

.field public static final INT_X_4_ARROWS_GRAY:I = 0xa

.field public static final INT_X_4_RATING:I = 0xc

.field public static final INT_X_4_RED_TO_BLACK:I = 0xb

.field public static final INT_X_4_TRAFFIC_LIGHTS:I = 0xd

.field public static final INT_X_5_ARROWS:I = 0xe

.field public static final INT_X_5_ARROWS_GRAY:I = 0xf

.field public static final INT_X_5_QUARTERS:I = 0x11

.field public static final INT_X_5_RATING:I = 0x10

.field public static final X_3_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_FLAGS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_SIGNS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_SYMBOLS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_SYMBOLS_2:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_TRAFFIC_LIGHTS_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_3_TRAFFIC_LIGHTS_2:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_4_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_4_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_4_RATING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_4_RED_TO_BLACK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_4_TRAFFIC_LIGHTS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_5_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_5_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_5_QUARTERS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final X_5_RATING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sticonsettype6112type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->type:Li5/c0;

    const-string v0, "3Arrows"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3ArrowsGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3Flags"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_FLAGS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3TrafficLights1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_TRAFFIC_LIGHTS_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3TrafficLights2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_TRAFFIC_LIGHTS_2:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3Signs"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_SIGNS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3Symbols"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_SYMBOLS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "3Symbols2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_3_SYMBOLS_2:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "4Arrows"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_4_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "4ArrowsGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_4_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "4RedToBlack"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_4_RED_TO_BLACK:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "4Rating"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_4_RATING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "4TrafficLights"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_4_TRAFFIC_LIGHTS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "5Arrows"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_5_ARROWS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "5ArrowsGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_5_ARROWS_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "5Rating"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_5_RATING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    const-string v0, "5Quarters"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType;->X_5_QUARTERS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STIconSetType$Enum;

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
