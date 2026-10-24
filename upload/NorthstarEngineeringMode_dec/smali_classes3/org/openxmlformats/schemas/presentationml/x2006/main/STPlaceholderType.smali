.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/i2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;
    }
.end annotation


# static fields
.field public static final BODY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final CHART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final CLIP_ART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final CTR_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final DGM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final DT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final FTR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HDR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final INT_BODY:I = 0x2

.field public static final INT_CHART:I = 0xa

.field public static final INT_CLIP_ART:I = 0xc

.field public static final INT_CTR_TITLE:I = 0x3

.field public static final INT_DGM:I = 0xd

.field public static final INT_DT:I = 0x5

.field public static final INT_FTR:I = 0x7

.field public static final INT_HDR:I = 0x8

.field public static final INT_MEDIA:I = 0xe

.field public static final INT_OBJ:I = 0x9

.field public static final INT_PIC:I = 0x10

.field public static final INT_SLD_IMG:I = 0xf

.field public static final INT_SLD_NUM:I = 0x6

.field public static final INT_SUB_TITLE:I = 0x4

.field public static final INT_TBL:I = 0xb

.field public static final INT_TITLE:I = 0x1

.field public static final MEDIA:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final OBJ:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final SLD_IMG:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final SLD_NUM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final SUB_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final TBL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stplaceholdertypeca72type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->type:Li5/c0;

    const-string v0, "title"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "body"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->BODY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "ctrTitle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->CTR_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "subTitle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->SUB_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "dt"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->DT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "sldNum"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->SLD_NUM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "ftr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->FTR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "hdr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->HDR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "obj"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->OBJ:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "chart"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->CHART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "tbl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->TBL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "clipArt"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->CLIP_ART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "dgm"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->DGM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "media"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->MEDIA:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "sldImg"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->SLD_IMG:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "pic"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

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
