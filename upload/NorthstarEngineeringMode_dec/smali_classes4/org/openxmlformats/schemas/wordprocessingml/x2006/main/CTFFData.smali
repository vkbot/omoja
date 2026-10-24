.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;",
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

    const-string v2, "ctffdataaa7etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewCalcOnExit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewCheckBox()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
.end method

.method public abstract addNewDdList()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;
.end method

.method public abstract addNewEnabled()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewEntryMacro()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract addNewExitMacro()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract addNewHelpText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;
.end method

.method public abstract addNewLabel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;
.end method

.method public abstract addNewStatusText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;
.end method

.method public abstract addNewTabIndex()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract addNewTextInput()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;
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

.method public abstract getCalcOnExitArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCalcOnExitArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCalcOnExitList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCheckBoxArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
.end method

.method public abstract getCheckBoxArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
.end method

.method public abstract getCheckBoxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDdListArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;
.end method

.method public abstract getDdListArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;
.end method

.method public abstract getDdListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEnabledArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getEnabledArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getEnabledList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntryMacroArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract getEntryMacroArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract getEntryMacroList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExitMacroArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract getExitMacroArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract getExitMacroList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHelpTextArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;
.end method

.method public abstract getHelpTextArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;
.end method

.method public abstract getHelpTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLabelArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLabelArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLabelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNameArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;
.end method

.method public abstract getNameArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;
.end method

.method public abstract getNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatusTextArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;
.end method

.method public abstract getStatusTextArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;
.end method

.method public abstract getStatusTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTabIndexArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract getTabIndexArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract getTabIndexList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextInputArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;
.end method

.method public abstract getTextInputArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;
.end method

.method public abstract getTextInputList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCalcOnExit(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewCheckBox(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
.end method

.method public abstract insertNewDdList(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;
.end method

.method public abstract insertNewEnabled(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewEntryMacro(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract insertNewExitMacro(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;
.end method

.method public abstract insertNewHelpText(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;
.end method

.method public abstract insertNewLabel(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract insertNewName(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;
.end method

.method public abstract insertNewStatusText(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;
.end method

.method public abstract insertNewTabIndex(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;
.end method

.method public abstract insertNewTextInput(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;
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

.method public abstract removeCalcOnExit(I)V
.end method

.method public abstract removeCheckBox(I)V
.end method

.method public abstract removeDdList(I)V
.end method

.method public abstract removeEnabled(I)V
.end method

.method public abstract removeEntryMacro(I)V
.end method

.method public abstract removeExitMacro(I)V
.end method

.method public abstract removeHelpText(I)V
.end method

.method public abstract removeLabel(I)V
.end method

.method public abstract removeName(I)V
.end method

.method public abstract removeStatusText(I)V
.end method

.method public abstract removeTabIndex(I)V
.end method

.method public abstract removeTextInput(I)V
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

.method public abstract setCalcOnExitArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCalcOnExitArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCheckBoxArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;)V
.end method

.method public abstract setCheckBoxArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;)V
.end method

.method public abstract setDdListArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;)V
.end method

.method public abstract setDdListArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFDDList;)V
.end method

.method public abstract setEnabledArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setEnabledArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setEntryMacroArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;)V
.end method

.method public abstract setEntryMacroArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;)V
.end method

.method public abstract setExitMacroArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;)V
.end method

.method public abstract setExitMacroArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMacroName;)V
.end method

.method public abstract setHelpTextArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;)V
.end method

.method public abstract setHelpTextArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFHelpText;)V
.end method

.method public abstract setLabelArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLabelArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setNameArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;)V
.end method

.method public abstract setNameArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFName;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setStatusTextArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;)V
.end method

.method public abstract setStatusTextArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFStatusText;)V
.end method

.method public abstract setTabIndexArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;)V
.end method

.method public abstract setTabIndexArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnsignedDecimalNumber;)V
.end method

.method public abstract setTextInputArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;)V
.end method

.method public abstract setTextInputArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFTextInput;)V
.end method

.method public abstract sizeOfCalcOnExitArray()I
.end method

.method public abstract sizeOfCheckBoxArray()I
.end method

.method public abstract sizeOfDdListArray()I
.end method

.method public abstract sizeOfEnabledArray()I
.end method

.method public abstract sizeOfEntryMacroArray()I
.end method

.method public abstract sizeOfExitMacroArray()I
.end method

.method public abstract sizeOfHelpTextArray()I
.end method

.method public abstract sizeOfLabelArray()I
.end method

.method public abstract sizeOfNameArray()I
.end method

.method public abstract sizeOfStatusTextArray()I
.end method

.method public abstract sizeOfTabIndexArray()I
.end method

.method public abstract sizeOfTextInputArray()I
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
