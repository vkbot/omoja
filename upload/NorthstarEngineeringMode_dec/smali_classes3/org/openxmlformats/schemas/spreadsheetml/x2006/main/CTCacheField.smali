.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;",
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

    const-string v2, "ctcachefieldae21type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFieldGroup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldGroup;
.end method

.method public abstract addNewMpMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract addNewSharedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;
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

.method public abstract getCaption()Ljava/lang/String;
.end method

.method public abstract getDatabaseField()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFieldGroup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldGroup;
.end method

.method public abstract getFormula()Ljava/lang/String;
.end method

.method public abstract getHierarchy()I
.end method

.method public abstract getLevel()J
.end method

.method public abstract getMappingCount()J
.end method

.method public abstract getMemberPropertyField()Z
.end method

.method public abstract getMpMapArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract getMpMapArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract getMpMapList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumFmtId()J
.end method

.method public abstract getPropertyName()Ljava/lang/String;
.end method

.method public abstract getServerField()Z
.end method

.method public abstract getSharedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;
.end method

.method public abstract getSqlType()I
.end method

.method public abstract getUniqueList()Z
.end method

.method public abstract insertNewMpMap(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCaption()Z
.end method

.method public abstract isSetDatabaseField()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFieldGroup()Z
.end method

.method public abstract isSetFormula()Z
.end method

.method public abstract isSetHierarchy()Z
.end method

.method public abstract isSetLevel()Z
.end method

.method public abstract isSetMappingCount()Z
.end method

.method public abstract isSetMemberPropertyField()Z
.end method

.method public abstract isSetNumFmtId()Z
.end method

.method public abstract isSetPropertyName()Z
.end method

.method public abstract isSetServerField()Z
.end method

.method public abstract isSetSharedItems()Z
.end method

.method public abstract isSetSqlType()Z
.end method

.method public abstract isSetUniqueList()Z
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

.method public abstract removeMpMap(I)V
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

.method public abstract setCaption(Ljava/lang/String;)V
.end method

.method public abstract setDatabaseField(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFieldGroup(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldGroup;)V
.end method

.method public abstract setFormula(Ljava/lang/String;)V
.end method

.method public abstract setHierarchy(I)V
.end method

.method public abstract setLevel(J)V
.end method

.method public abstract setMappingCount(J)V
.end method

.method public abstract setMemberPropertyField(Z)V
.end method

.method public abstract setMpMapArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;)V
.end method

.method public abstract setMpMapArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTX;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNumFmtId(J)V
.end method

.method public abstract setPropertyName(Ljava/lang/String;)V
.end method

.method public abstract setServerField(Z)V
.end method

.method public abstract setSharedItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;)V
.end method

.method public abstract setSqlType(I)V
.end method

.method public abstract setUniqueList(Z)V
.end method

.method public abstract sizeOfMpMapArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCaption()V
.end method

.method public abstract unsetDatabaseField()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFieldGroup()V
.end method

.method public abstract unsetFormula()V
.end method

.method public abstract unsetHierarchy()V
.end method

.method public abstract unsetLevel()V
.end method

.method public abstract unsetMappingCount()V
.end method

.method public abstract unsetMemberPropertyField()V
.end method

.method public abstract unsetNumFmtId()V
.end method

.method public abstract unsetPropertyName()V
.end method

.method public abstract unsetServerField()V
.end method

.method public abstract unsetSharedItems()V
.end method

.method public abstract unsetSqlType()V
.end method

.method public abstract unsetUniqueList()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDatabaseField()Li5/m0;
.end method

.method public abstract xgetFormula()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetHierarchy()Li5/l1;
.end method

.method public abstract xgetLevel()Li5/l2;
.end method

.method public abstract xgetMappingCount()Li5/l2;
.end method

.method public abstract xgetMemberPropertyField()Li5/m0;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetNumFmtId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;
.end method

.method public abstract xgetPropertyName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetServerField()Li5/m0;
.end method

.method public abstract xgetSqlType()Li5/l1;
.end method

.method public abstract xgetUniqueList()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDatabaseField(Li5/m0;)V
.end method

.method public abstract xsetFormula(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetHierarchy(Li5/l1;)V
.end method

.method public abstract xsetLevel(Li5/l2;)V
.end method

.method public abstract xsetMappingCount(Li5/l2;)V
.end method

.method public abstract xsetMemberPropertyField(Li5/m0;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetNumFmtId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;)V
.end method

.method public abstract xsetPropertyName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetServerField(Li5/m0;)V
.end method

.method public abstract xsetSqlType(Li5/l1;)V
.end method

.method public abstract xsetUniqueList(Li5/m0;)V
.end method
