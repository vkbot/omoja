.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;",
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

    const-string v2, "ctxf97f7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;
.end method

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

.method public abstract getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
.end method

.method public abstract getApplyAlignment()Z
.end method

.method public abstract getApplyBorder()Z
.end method

.method public abstract getApplyFill()Z
.end method

.method public abstract getApplyFont()Z
.end method

.method public abstract getApplyNumberFormat()Z
.end method

.method public abstract getApplyProtection()Z
.end method

.method public abstract getBorderId()J
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFillId()J
.end method

.method public abstract getFontId()J
.end method

.method public abstract getNumFmtId()J
.end method

.method public abstract getPivotButton()Z
.end method

.method public abstract getProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;
.end method

.method public abstract getQuotePrefix()Z
.end method

.method public abstract getXfId()J
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAlignment()Z
.end method

.method public abstract isSetApplyAlignment()Z
.end method

.method public abstract isSetApplyBorder()Z
.end method

.method public abstract isSetApplyFill()Z
.end method

.method public abstract isSetApplyFont()Z
.end method

.method public abstract isSetApplyNumberFormat()Z
.end method

.method public abstract isSetApplyProtection()Z
.end method

.method public abstract isSetBorderId()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFillId()Z
.end method

.method public abstract isSetFontId()Z
.end method

.method public abstract isSetNumFmtId()Z
.end method

.method public abstract isSetPivotButton()Z
.end method

.method public abstract isSetProtection()Z
.end method

.method public abstract isSetQuotePrefix()Z
.end method

.method public abstract isSetXfId()Z
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

.method public abstract setAlignment(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;)V
.end method

.method public abstract setApplyAlignment(Z)V
.end method

.method public abstract setApplyBorder(Z)V
.end method

.method public abstract setApplyFill(Z)V
.end method

.method public abstract setApplyFont(Z)V
.end method

.method public abstract setApplyNumberFormat(Z)V
.end method

.method public abstract setApplyProtection(Z)V
.end method

.method public abstract setBorderId(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFillId(J)V
.end method

.method public abstract setFontId(J)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNumFmtId(J)V
.end method

.method public abstract setPivotButton(Z)V
.end method

.method public abstract setProtection(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellProtection;)V
.end method

.method public abstract setQuotePrefix(Z)V
.end method

.method public abstract setXfId(J)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAlignment()V
.end method

.method public abstract unsetApplyAlignment()V
.end method

.method public abstract unsetApplyBorder()V
.end method

.method public abstract unsetApplyFill()V
.end method

.method public abstract unsetApplyFont()V
.end method

.method public abstract unsetApplyNumberFormat()V
.end method

.method public abstract unsetApplyProtection()V
.end method

.method public abstract unsetBorderId()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFillId()V
.end method

.method public abstract unsetFontId()V
.end method

.method public abstract unsetNumFmtId()V
.end method

.method public abstract unsetPivotButton()V
.end method

.method public abstract unsetProtection()V
.end method

.method public abstract unsetQuotePrefix()V
.end method

.method public abstract unsetXfId()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetApplyAlignment()Li5/m0;
.end method

.method public abstract xgetApplyBorder()Li5/m0;
.end method

.method public abstract xgetApplyFill()Li5/m0;
.end method

.method public abstract xgetApplyFont()Li5/m0;
.end method

.method public abstract xgetApplyNumberFormat()Li5/m0;
.end method

.method public abstract xgetApplyProtection()Li5/m0;
.end method

.method public abstract xgetBorderId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderId;
.end method

.method public abstract xgetFillId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFillId;
.end method

.method public abstract xgetFontId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontId;
.end method

.method public abstract xgetNumFmtId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;
.end method

.method public abstract xgetPivotButton()Li5/m0;
.end method

.method public abstract xgetQuotePrefix()Li5/m0;
.end method

.method public abstract xgetXfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellStyleXfId;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetApplyAlignment(Li5/m0;)V
.end method

.method public abstract xsetApplyBorder(Li5/m0;)V
.end method

.method public abstract xsetApplyFill(Li5/m0;)V
.end method

.method public abstract xsetApplyFont(Li5/m0;)V
.end method

.method public abstract xsetApplyNumberFormat(Li5/m0;)V
.end method

.method public abstract xsetApplyProtection(Li5/m0;)V
.end method

.method public abstract xsetBorderId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderId;)V
.end method

.method public abstract xsetFillId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFillId;)V
.end method

.method public abstract xsetFontId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontId;)V
.end method

.method public abstract xsetNumFmtId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;)V
.end method

.method public abstract xsetPivotButton(Li5/m0;)V
.end method

.method public abstract xsetQuotePrefix(Li5/m0;)V
.end method

.method public abstract xsetXfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellStyleXfId;)V
.end method
