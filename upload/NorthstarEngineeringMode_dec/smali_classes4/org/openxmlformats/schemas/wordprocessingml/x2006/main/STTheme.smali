.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/g2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_MAJOR_ASCII:I = 0x3

.field public static final INT_MAJOR_BIDI:I = 0x2

.field public static final INT_MAJOR_EAST_ASIA:I = 0x1

.field public static final INT_MAJOR_H_ANSI:I = 0x4

.field public static final INT_MINOR_ASCII:I = 0x7

.field public static final INT_MINOR_BIDI:I = 0x6

.field public static final INT_MINOR_EAST_ASIA:I = 0x5

.field public static final INT_MINOR_H_ANSI:I = 0x8

.field public static final MAJOR_ASCII:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

.field public static final MAJOR_BIDI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

.field public static final MAJOR_EAST_ASIA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

.field public static final MAJOR_H_ANSI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

.field public static final MINOR_ASCII:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

.field public static final MINOR_BIDI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

.field public static final MINOR_EAST_ASIA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

.field public static final MINOR_H_ANSI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttheme58b9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->type:Li5/c0;

    const-string v0, "majorEastAsia"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MAJOR_EAST_ASIA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    const-string v0, "majorBidi"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MAJOR_BIDI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    const-string v0, "majorAscii"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MAJOR_ASCII:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    const-string v0, "majorHAnsi"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MAJOR_H_ANSI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    const-string v0, "minorEastAsia"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MINOR_EAST_ASIA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    const-string v0, "minorBidi"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MINOR_BIDI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    const-string v0, "minorAscii"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MINOR_ASCII:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    const-string v0, "minorHAnsi"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MINOR_H_ANSI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

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
