.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;
    }
.end annotation


# static fields
.field public static final ABOVE_AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final BEGINS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final CELL_IS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final COLOR_SCALE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final DATA_BAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final DUPLICATE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final ENDS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final EXPRESSION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final INT_ABOVE_AVERAGE:I = 0x12

.field public static final INT_BEGINS_WITH:I = 0xb

.field public static final INT_CELL_IS:I = 0x2

.field public static final INT_COLOR_SCALE:I = 0x3

.field public static final INT_CONTAINS_BLANKS:I = 0xd

.field public static final INT_CONTAINS_ERRORS:I = 0xf

.field public static final INT_CONTAINS_TEXT:I = 0x9

.field public static final INT_DATA_BAR:I = 0x4

.field public static final INT_DUPLICATE_VALUES:I = 0x8

.field public static final INT_ENDS_WITH:I = 0xc

.field public static final INT_EXPRESSION:I = 0x1

.field public static final INT_ICON_SET:I = 0x5

.field public static final INT_NOT_CONTAINS_BLANKS:I = 0xe

.field public static final INT_NOT_CONTAINS_ERRORS:I = 0x10

.field public static final INT_NOT_CONTAINS_TEXT:I = 0xa

.field public static final INT_TIME_PERIOD:I = 0x11

.field public static final INT_TOP_10:I = 0x6

.field public static final INT_UNIQUE_VALUES:I = 0x7

.field public static final NOT_CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final NOT_CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final NOT_CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final TIME_PERIOD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final TOP_10:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final UNIQUE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stcftype8016type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->type:Li5/c0;

    const-string v0, "expression"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->EXPRESSION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "cellIs"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CELL_IS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "colorScale"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->COLOR_SCALE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "dataBar"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DATA_BAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "iconSet"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ICON_SET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "top10"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->TOP_10:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "uniqueValues"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->UNIQUE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "duplicateValues"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->DUPLICATE_VALUES:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "containsText"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "notContainsText"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_TEXT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "beginsWith"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->BEGINS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "endsWith"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ENDS_WITH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "containsBlanks"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "notContainsBlanks"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_BLANKS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "containsErrors"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "notContainsErrors"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->NOT_CONTAINS_ERRORS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "timePeriod"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->TIME_PERIOD:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    const-string v0, "aboveAverage"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->ABOVE_AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

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
