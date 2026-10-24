.class final Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:La5/d;

.field private static final fontDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/usermodel/FontDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static fontMetricsProps:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->LOGGER:La5/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontDetailsMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getFontDetails(Ljava/awt/Font;)Lorg/apache/poi/hssf/usermodel/FontDetails;
    .locals 5

    const-class v0, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->loadMetrics()Ljava/util/Properties;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not load font metrics"

    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0}, Ljava/awt/Font;->isPlain()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "plain"

    :cond_1
    invoke-virtual {p0}, Ljava/awt/Font;->isBold()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bold"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0}, Ljava/awt/Font;->isItalic()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "italic"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v1}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontHeightProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontHeightProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    invoke-virtual {v4, p0}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    sget-object p0, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    invoke-virtual {p0, v3}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    sget-object p0, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontDetailsMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/FontDetails;

    if-nez v2, :cond_5

    sget-object v2, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/usermodel/FontDetails;->create(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/poi/hssf/usermodel/FontDetails;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static loadMetrics()Ljava/util/Properties;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "font.metrics.filename"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->LOGGER:La5/d;

    invoke-interface {v1}, La5/d;->g()La5/b;

    move-result-object v1

    const-string v3, "font_metrics.properties not found at path {}"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->LOGGER:La5/d;

    invoke-interface {v1}, La5/d;->g()La5/b;

    move-result-object v1

    invoke-interface {v1, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "Can\'t access font.metrics.filename system property"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-class v0, Lorg/apache/poi/hssf/usermodel/FontDetails;

    const-string v1, "/font_metrics.properties"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    :try_start_2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_3
    :try_start_3
    const-string v1, "font_metrics.properties not found in classpath"

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v2
.end method
