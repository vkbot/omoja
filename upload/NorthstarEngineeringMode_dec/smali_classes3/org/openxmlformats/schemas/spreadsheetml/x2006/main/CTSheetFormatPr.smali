.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctsheetformatprdef7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->type:Li5/c0;

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

.method public abstract getBaseColWidth()J
.end method

.method public abstract getCustomHeight()Z
.end method

.method public abstract getDefaultColWidth()D
.end method

.method public abstract getDefaultRowHeight()D
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getOutlineLevelCol()S
.end method

.method public abstract getOutlineLevelRow()S
.end method

.method public abstract getThickBottom()Z
.end method

.method public abstract getThickTop()Z
.end method

.method public abstract getZeroHeight()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBaseColWidth()Z
.end method

.method public abstract isSetCustomHeight()Z
.end method

.method public abstract isSetDefaultColWidth()Z
.end method

.method public abstract isSetOutlineLevelCol()Z
.end method

.method public abstract isSetOutlineLevelRow()Z
.end method

.method public abstract isSetThickBottom()Z
.end method

.method public abstract isSetThickTop()Z
.end method

.method public abstract isSetZeroHeight()Z
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

.method public abstract setBaseColWidth(J)V
.end method

.method public abstract setCustomHeight(Z)V
.end method

.method public abstract setDefaultColWidth(D)V
.end method

.method public abstract setDefaultRowHeight(D)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOutlineLevelCol(S)V
.end method

.method public abstract setOutlineLevelRow(S)V
.end method

.method public abstract setThickBottom(Z)V
.end method

.method public abstract setThickTop(Z)V
.end method

.method public abstract setZeroHeight(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBaseColWidth()V
.end method

.method public abstract unsetCustomHeight()V
.end method

.method public abstract unsetDefaultColWidth()V
.end method

.method public abstract unsetOutlineLevelCol()V
.end method

.method public abstract unsetOutlineLevelRow()V
.end method

.method public abstract unsetThickBottom()V
.end method

.method public abstract unsetThickTop()V
.end method

.method public abstract unsetZeroHeight()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetBaseColWidth()Li5/l2;
.end method

.method public abstract xgetCustomHeight()Li5/m0;
.end method

.method public abstract xgetDefaultColWidth()Li5/u0;
.end method

.method public abstract xgetDefaultRowHeight()Li5/u0;
.end method

.method public abstract xgetOutlineLevelCol()Li5/k2;
.end method

.method public abstract xgetOutlineLevelRow()Li5/k2;
.end method

.method public abstract xgetThickBottom()Li5/m0;
.end method

.method public abstract xgetThickTop()Li5/m0;
.end method

.method public abstract xgetZeroHeight()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetBaseColWidth(Li5/l2;)V
.end method

.method public abstract xsetCustomHeight(Li5/m0;)V
.end method

.method public abstract xsetDefaultColWidth(Li5/u0;)V
.end method

.method public abstract xsetDefaultRowHeight(Li5/u0;)V
.end method

.method public abstract xsetOutlineLevelCol(Li5/k2;)V
.end method

.method public abstract xsetOutlineLevelRow(Li5/k2;)V
.end method

.method public abstract xsetThickBottom(Li5/m0;)V
.end method

.method public abstract xsetThickTop(Li5/m0;)V
.end method

.method public abstract xsetZeroHeight(Li5/m0;)V
.end method
