.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;",
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

    const-string v2, "ctdatavalidation9d0ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->type:Li5/c0;

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

.method public abstract getAllowBlank()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getError()Ljava/lang/String;
.end method

.method public abstract getErrorStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;
.end method

.method public abstract getErrorTitle()Ljava/lang/String;
.end method

.method public abstract getFormula1()Ljava/lang/String;
.end method

.method public abstract getFormula2()Ljava/lang/String;
.end method

.method public abstract getImeMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;
.end method

.method public abstract getOperator()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;
.end method

.method public abstract getPrompt()Ljava/lang/String;
.end method

.method public abstract getPromptTitle()Ljava/lang/String;
.end method

.method public abstract getShowDropDown()Z
.end method

.method public abstract getShowErrorMessage()Z
.end method

.method public abstract getShowInputMessage()Z
.end method

.method public abstract getSqref()Ljava/util/List;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAllowBlank()Z
.end method

.method public abstract isSetError()Z
.end method

.method public abstract isSetErrorStyle()Z
.end method

.method public abstract isSetErrorTitle()Z
.end method

.method public abstract isSetFormula1()Z
.end method

.method public abstract isSetFormula2()Z
.end method

.method public abstract isSetImeMode()Z
.end method

.method public abstract isSetOperator()Z
.end method

.method public abstract isSetPrompt()Z
.end method

.method public abstract isSetPromptTitle()Z
.end method

.method public abstract isSetShowDropDown()Z
.end method

.method public abstract isSetShowErrorMessage()Z
.end method

.method public abstract isSetShowInputMessage()Z
.end method

.method public abstract isSetType()Z
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

.method public abstract setAllowBlank(Z)V
.end method

.method public abstract setError(Ljava/lang/String;)V
.end method

.method public abstract setErrorStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;)V
.end method

.method public abstract setErrorTitle(Ljava/lang/String;)V
.end method

.method public abstract setFormula1(Ljava/lang/String;)V
.end method

.method public abstract setFormula2(Ljava/lang/String;)V
.end method

.method public abstract setImeMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOperator(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;)V
.end method

.method public abstract setPrompt(Ljava/lang/String;)V
.end method

.method public abstract setPromptTitle(Ljava/lang/String;)V
.end method

.method public abstract setShowDropDown(Z)V
.end method

.method public abstract setShowErrorMessage(Z)V
.end method

.method public abstract setShowInputMessage(Z)V
.end method

.method public abstract setSqref(Ljava/util/List;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAllowBlank()V
.end method

.method public abstract unsetError()V
.end method

.method public abstract unsetErrorStyle()V
.end method

.method public abstract unsetErrorTitle()V
.end method

.method public abstract unsetFormula1()V
.end method

.method public abstract unsetFormula2()V
.end method

.method public abstract unsetImeMode()V
.end method

.method public abstract unsetOperator()V
.end method

.method public abstract unsetPrompt()V
.end method

.method public abstract unsetPromptTitle()V
.end method

.method public abstract unsetShowDropDown()V
.end method

.method public abstract unsetShowErrorMessage()V
.end method

.method public abstract unsetShowInputMessage()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAllowBlank()Li5/m0;
.end method

.method public abstract xgetError()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetErrorStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;
.end method

.method public abstract xgetErrorTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetFormula1()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract xgetFormula2()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract xgetImeMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;
.end method

.method public abstract xgetOperator()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;
.end method

.method public abstract xgetPrompt()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetPromptTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetShowDropDown()Li5/m0;
.end method

.method public abstract xgetShowErrorMessage()Li5/m0;
.end method

.method public abstract xgetShowInputMessage()Li5/m0;
.end method

.method public abstract xgetSqref()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAllowBlank(Li5/m0;)V
.end method

.method public abstract xsetError(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetErrorStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;)V
.end method

.method public abstract xsetErrorTitle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetFormula1(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;)V
.end method

.method public abstract xsetFormula2(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;)V
.end method

.method public abstract xsetImeMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;)V
.end method

.method public abstract xsetOperator(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;)V
.end method

.method public abstract xsetPrompt(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetPromptTitle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetShowDropDown(Li5/m0;)V
.end method

.method public abstract xsetShowErrorMessage(Li5/m0;)V
.end method

.method public abstract xsetShowInputMessage(Li5/m0;)V
.end method

.method public abstract xsetSqref(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;)V
.end method
