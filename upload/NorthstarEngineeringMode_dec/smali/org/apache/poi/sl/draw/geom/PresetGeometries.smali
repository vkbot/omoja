.class public final Lorg/apache/poi/sl/draw/geom/PresetGeometries;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/geom/PresetGeometries$SingletonHelper;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/sl/draw/geom/CustomGeometry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->map:Ljava/util/Map;

    :try_start_0
    const-class p0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    const-string/jumbo v1, "presetShapeDefinitions.xml"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newXMLInputFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v1

    .line 6
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    new-instance v2, Lorg/apache/poi/sl/draw/geom/PresetParser;

    sget-object v3, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->FILE:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    invoke-direct {v2, v3}, Lorg/apache/poi/sl/draw/geom/PresetParser;-><init>(Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;)V

    .line 8
    invoke-virtual {v2, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parse(Ljavax/xml/stream/XMLStreamReader;)V

    .line 9
    invoke-virtual {v2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->getGeom()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    :try_start_3
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_0

    .line 11
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    :try_start_5
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->close()V

    .line 13
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 14
    :goto_1
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz p0, :cond_1

    .line 15
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_8 .. :try_end_8} :catch_0

    .line 16
    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/sl/draw/geom/PresetGeometries$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/poi/sl/draw/geom/PresetGeometries;
    .locals 1

    invoke-static {}, Lorg/apache/poi/sl/draw/geom/PresetGeometries$SingletonHelper;->access$100()Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->map:Ljava/util/Map;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
