.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;
    }
.end annotation


# static fields
.field public static final AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final COUNT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final COUNT_NUMS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AVERAGE:I = 0x1

.field public static final INT_COUNT:I = 0x2

.field public static final INT_COUNT_NUMS:I = 0x3

.field public static final INT_MAX:I = 0x4

.field public static final INT_MIN:I = 0x5

.field public static final INT_PRODUCT:I = 0x6

.field public static final INT_STD_DEV:I = 0x7

.field public static final INT_STD_DEVP:I = 0x8

.field public static final INT_SUM:I = 0x9

.field public static final INT_VAR:I = 0xa

.field public static final INT_VARP:I = 0xb

.field public static final MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final PRODUCT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final STD_DEV:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final STD_DEVP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final SUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final VAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final VARP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stdataconsolidatefunction1206type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->type:Li5/c0;

    const-string v0, "average"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->AVERAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    const-string v0, "count"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->COUNT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    const-string v0, "countNums"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->COUNT_NUMS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    const-string v0, "max"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    const-string v0, "min"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    const-string v0, "product"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->PRODUCT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    const-string v0, "stdDev"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->STD_DEV:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    const-string v0, "stdDevp"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->STD_DEVP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    const-string v0, "sum"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->SUM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    const-string v0, "var"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->VAR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    const-string v0, "varp"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;->VARP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

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
