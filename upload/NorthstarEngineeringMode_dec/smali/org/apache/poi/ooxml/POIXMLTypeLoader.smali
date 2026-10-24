.class public Lorg/apache/poi/ooxml/POIXMLTypeLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_XML_OPTIONS:Li5/z1;

.field private static final MS_EXCEL_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:office:excel"

.field private static final MS_OFFICE_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:office:office"

.field private static final MS_VML_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:vml"

.field private static final MS_WORD_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:office:word"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Li5/z1;

    invoke-direct {v0}, Li5/z1;-><init>()V

    sput-object v0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    sget-object v1, Li5/z1$a;->h1:Li5/z1$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v1, Li5/z1$a;->c1:Li5/z1$a;

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v1, Li5/z1$a;->b1:Li5/z1$a;

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v1, Li5/z1$a;->D1:Li5/z1$a;

    iget-object v3, v0, Li5/z1;->c:Ljava/util/Map;

    const-string v4, "UTF-8"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Li5/z1$a;->T1:Li5/z1$a;

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v1, Li5/z1$a;->Q1:Li5/z1$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const-string v3, "a"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/chart"

    const-string v3, "c"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"

    const-string/jumbo v3, "wp"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://schemas.openxmlformats.org/markup-compatibility/2006"

    const-string/jumbo v3, "ve"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/math"

    const-string v3, "m"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string/jumbo v3, "r"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes"

    const-string/jumbo v3, "vt"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string/jumbo v3, "p"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://schemas.openxmlformats.org/wordprocessingml/2006/main"

    const-string/jumbo v3, "w"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://schemas.microsoft.com/office/word/2006/wordml"

    const-string/jumbo v3, "wne"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "urn:schemas-microsoft-com:office:office"

    const-string v3, "o"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "urn:schemas-microsoft-com:office:excel"

    const-string/jumbo v3, "x"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "urn:schemas-microsoft-com:office:word"

    const-string/jumbo v3, "w10"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "urn:schemas-microsoft-com:vml"

    const-string/jumbo v3, "v"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://schemas.microsoft.com/office/drawing/2012/chart"

    const-string v3, "c15"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Li5/z1$a;->e1:Li5/z1$a;

    iget-object v0, v0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
