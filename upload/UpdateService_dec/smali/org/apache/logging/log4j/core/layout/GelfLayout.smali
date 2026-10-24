.class public final Lorg/apache/logging/log4j/core/layout/GelfLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.source "GelfLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;,
        Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;,
        Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "GelfLayout"
    printObject = true
.end annotation


# static fields
.field private static final C:C = ','

.field private static final COMPRESSION_THRESHOLD:I = 0x400

.field private static final Q:C = '\"'

.field private static final QC:Ljava/lang/String; = "\","

.field private static final QU:Ljava/lang/String; = "\"_"

.field private static final messageStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final timestampStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

.field private final compressionThreshold:I

.field private final compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

.field private final host:Ljava/lang/String;

.field private final includeMapMessage:Z

.field private final includeNewLineDelimiter:Z

.field private final includeNullDelimiter:Z

.field private final includeStacktrace:Z

.field private final includeThreadContext:Z

.field private final layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

.field private final mapWriter:Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;

.field private final mdcWriter:Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;

.field private final omitEmptyFields:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 699
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->messageStringBuilder:Ljava/lang/ThreadLocal;

    .line 728
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->timestampStringBuilder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;IZ)V
    .locals 17
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .param p3, "compressionType"    # Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
    .param p4, "compressionThreshold"    # I
    .param p5, "includeStacktrace"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "host",
            "additionalFields",
            "compressionType",
            "compressionThreshold",
            "includeStacktrace"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 449
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, ""

    const-string v16, ""

    invoke-direct/range {v0 .. v16}, Lorg/apache/logging/log4j/core/layout/GelfLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;IZZZZZZLorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;IZZZZZZLorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .param p4, "compressionType"    # Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
    .param p5, "compressionThreshold"    # I
    .param p6, "includeStacktrace"    # Z
    .param p7, "includeThreadContext"    # Z
    .param p8, "includeMapMessage"    # Z
    .param p9, "includeNullDelimiter"    # Z
    .param p10, "includeNewLineDelimiter"    # Z
    .param p11, "omitEmptyFields"    # Z
    .param p12, "mdcChecker"    # Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .param p13, "mapChecker"    # Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .param p14, "patternLayout"    # Lorg/apache/logging/log4j/core/layout/PatternLayout;
    .param p15, "mdcPrefix"    # Ljava/lang/String;
    .param p16, "mapPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "config",
            "host",
            "additionalFields",
            "compressionType",
            "compressionThreshold",
            "includeStacktrace",
            "includeThreadContext",
            "includeMapMessage",
            "includeNullDelimiter",
            "includeNewLineDelimiter",
            "omitEmptyFields",
            "mdcChecker",
            "mapChecker",
            "patternLayout",
            "mdcPrefix",
            "mapPrefix"
        }
    .end annotation

    .line 459
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p9

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5, v5}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)V

    .line 460
    if-eqz p2, :cond_0

    move-object/from16 v4, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NetUtils;->getLocalHostname()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->host:Ljava/lang/String;

    .line 461
    if-eqz p3, :cond_1

    move-object/from16 v4, p3

    goto :goto_1

    :cond_1
    sget-object v4, Lorg/apache/logging/log4j/core/util/KeyValuePair;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    :goto_1
    iput-object v4, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    .line 462
    if-nez v1, :cond_3

    .line 463
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 464
    .local v7, "additionalField":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->valueNeedsLookup(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 463
    .end local v7    # "additionalField":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 465
    .restart local v7    # "additionalField":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "configuration needs to be set when there are additional fields with variables"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 469
    .end local v7    # "additionalField":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    :cond_3
    iput-object v2, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    .line 470
    move/from16 v4, p5

    iput v4, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->compressionThreshold:I

    .line 471
    move/from16 v5, p6

    iput-boolean v5, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeStacktrace:Z

    .line 472
    move/from16 v6, p7

    iput-boolean v6, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeThreadContext:Z

    .line 473
    move/from16 v7, p8

    iput-boolean v7, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeMapMessage:Z

    .line 474
    iput-boolean v3, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeNullDelimiter:Z

    .line 475
    move/from16 v8, p10

    iput-boolean v8, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeNewLineDelimiter:Z

    .line 476
    move/from16 v9, p11

    iput-boolean v9, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->omitEmptyFields:Z

    .line 477
    if-eqz v3, :cond_5

    sget-object v10, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->OFF:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    if-ne v2, v10, :cond_4

    goto :goto_3

    .line 478
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "null delimiter cannot be used with compression"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 480
    :cond_5
    :goto_3
    new-instance v10, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;

    move-object/from16 v11, p12

    move-object/from16 v12, p15

    invoke-direct {v10, p0, v11, v12}, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;-><init>(Lorg/apache/logging/log4j/core/layout/GelfLayout;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;Ljava/lang/String;)V

    iput-object v10, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->mdcWriter:Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;

    .line 481
    new-instance v10, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;

    move-object/from16 v13, p13

    move-object/from16 v14, p16

    invoke-direct {v10, p0, v13, v14}, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;-><init>(Lorg/apache/logging/log4j/core/layout/GelfLayout;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;Ljava/lang/String;)V

    iput-object v10, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->mapWriter:Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;

    .line 482
    move-object/from16 v10, p14

    iput-object v10, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    .line 483
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;IZZZZZZLorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/GelfLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Z
    .param p10, "x9"    # Z
    .param p11, "x10"    # Z
    .param p12, "x11"    # Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .param p13, "x12"    # Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .param p14, "x13"    # Lorg/apache/logging/log4j/core/layout/PatternLayout;
    .param p15, "x14"    # Ljava/lang/String;
    .param p16, "x15"    # Ljava/lang/String;
    .param p17, "x16"    # Lorg/apache/logging/log4j/core/layout/GelfLayout$1;

    .line 73
    invoke-direct/range {p0 .. p16}, Lorg/apache/logging/log4j/core/layout/GelfLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;IZZZZZZLorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/layout/GelfLayout;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/layout/GelfLayout;

    .line 73
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->omitEmptyFields:Z

    return v0
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .line 73
    invoke-static {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->toNullSafeString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private compress([B)[B
    .locals 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 568
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->compressionThreshold:I

    div-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 569
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->createDeflaterOutputStream(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;

    move-result-object v1

    .line 570
    .local v1, "stream":Ljava/util/zip/DeflaterOutputStream;
    if-nez v1, :cond_1

    .line 571
    nop

    .line 575
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_0
    return-object p1

    .line 573
    :cond_1
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 574
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 576
    .end local v1    # "stream":Ljava/util/zip/DeflaterOutputStream;
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 569
    .restart local v1    # "stream":Ljava/util/zip/DeflaterOutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "stream":Ljava/util/zip/DeflaterOutputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/layout/GelfLayout;
    .end local p1    # "bytes":[B
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 575
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "stream":Ljava/util/zip/DeflaterOutputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/layout/GelfLayout;
    .restart local p1    # "bytes":[B
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/layout/GelfLayout;
    .end local p1    # "bytes":[B
    :cond_3
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 577
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "stream":Ljava/util/zip/DeflaterOutputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/layout/GelfLayout;
    .restart local p1    # "bytes":[B
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/Object;)V

    .line 579
    return-object p1
.end method

.method public static createLayout(Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;IZ)Lorg/apache/logging/log4j/core/layout/GelfLayout;
    .locals 18
    .param p0, "host"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "host"
        .end annotation
    .end param
    .param p1, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "AdditionalField"
        .end annotation
    .end param
    .param p2, "compressionType"    # Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "GZIP"
            value = "compressionType"
        .end annotation
    .end param
    .param p3, "compressionThreshold"    # I
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultInt = 0x400
            value = "compressionThreshold"
        .end annotation
    .end param
    .param p4, "includeStacktrace"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultBoolean = true
            value = "includeStacktrace"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "host",
            "additionalFields",
            "compressionType",
            "compressionThreshold",
            "includeStacktrace"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 524
    new-instance v17, Lorg/apache/logging/log4j/core/layout/GelfLayout;

    move-object/from16 v0, v17

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, ""

    const-string v16, ""

    invoke-direct/range {v0 .. v16}, Lorg/apache/logging/log4j/core/layout/GelfLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;IZZZZZZLorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;Ljava/lang/String;)V

    return-object v17
.end method

.method private formatLevel(Lorg/apache/logging/log4j/Level;)I
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 744
    invoke-static {p1}, Lorg/apache/logging/log4j/core/net/Severity;->getSeverity(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/net/Severity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/net/Severity;->getCode()I

    move-result v0

    return v0
.end method

.method static formatThrowable(Ljava/lang/Throwable;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 752
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 753
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 754
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 755
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 756
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2
.end method

.method static formatTimestamp(J)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "timeMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "timeMillis"
        }
    .end annotation

    .line 719
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 720
    const-string v0, "0"

    return-object v0

    .line 722
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->getTimestampStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 723
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 725
    return-object v0
.end method

.method private static getMessageStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .line 702
    sget-object v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->messageStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 703
    .local v0, "result":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v1

    .line 705
    sget-object v1, Lorg/apache/logging/log4j/core/layout/GelfLayout;->messageStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 707
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 708
    return-object v0
.end method

.method private static getTimestampStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .line 731
    sget-object v0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->timestampStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 732
    .local v0, "result":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v1

    .line 734
    sget-object v1, Lorg/apache/logging/log4j/core/layout/GelfLayout;->timestampStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 736
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 737
    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 530
    new-instance v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method private static toNullSafeString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 712
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private toText(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "gcFree"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "builder",
            "gcFree"
        }
    .end annotation

    .line 590
    const/16 v0, 0x7b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    const-string v0, "\"version\":\"1.1\","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v0, "\"host\":\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->host:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->toNullSafeString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 594
    const-string v0, "\","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, "\"timestamp\":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->formatTimestamp(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    const-string v2, "\"level\":"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->formatLevel(Lorg/apache/logging/log4j/Level;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 597
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 598
    const-string v1, "\"_thread\":\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 600
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 603
    const-string v1, "\"_logger\":\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 605
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    array-length v1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_5

    .line 608
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    .line 609
    .local v1, "strSubstitutor":Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 610
    .local v6, "additionalField":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->valueNeedsLookup(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 611
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, p1, v7}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 612
    :cond_2
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    :goto_1
    nop

    .line 613
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->omitEmptyFields:Z

    if-nez v8, :cond_4

    .line 614
    :cond_3
    const-string v8, "\"_"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 616
    const-string v8, "\":\""

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {v7}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->toNullSafeString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 618
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .end local v6    # "additionalField":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 622
    .end local v1    # "strSubstitutor":Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    :cond_5
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeThreadContext:Z

    if-eqz v1, :cond_6

    .line 623
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->mdcWriter:Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;

    invoke-interface {v1, v3, p2}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V

    .line 625
    :cond_6
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeMapMessage:Z

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/logging/log4j/message/MapMessage;

    if-eqz v1, :cond_7

    .line 626
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/message/MapMessage;

    new-instance v3, Lorg/apache/logging/log4j/core/layout/-$$Lambda$GelfLayout$76XVhyn5_g74zs0jQwL11AfyU1A;

    invoke-direct {v3, p0, p2}, Lorg/apache/logging/log4j/core/layout/-$$Lambda$GelfLayout$76XVhyn5_g74zs0jQwL11AfyU1A;-><init>(Lorg/apache/logging/log4j/core/layout/GelfLayout;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/message/MapMessage;->forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V

    .line 629
    :cond_7
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    if-eqz v1, :cond_b

    .line 630
    :cond_8
    const-string v1, "\"full_message\":\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    if-eqz v1, :cond_9

    .line 632
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->getMessageStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 633
    .local v1, "messageBuffer":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    invoke-virtual {v3, p1, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->serialize(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 634
    invoke-static {v1, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 635
    .end local v1    # "messageBuffer":Ljava/lang/StringBuilder;
    goto :goto_2

    :cond_9
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeStacktrace:Z

    if-eqz v1, :cond_a

    .line 636
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->formatThrowable(Ljava/lang/Throwable;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 638
    :cond_a
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 640
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_b
    const-string v0, "\"short_message\":\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 645
    .local v0, "message":Lorg/apache/logging/log4j/message/Message;
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    .line 646
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 647
    :cond_c
    if-eqz p3, :cond_d

    instance-of v1, v0, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    if-eqz v1, :cond_d

    .line 648
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->getMessageStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 650
    .restart local v1    # "messageBuffer":Ljava/lang/StringBuilder;
    :try_start_0
    move-object v3, v0

    check-cast v3, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    invoke-interface {v3, v1}, Lorg/apache/logging/log4j/util/StringBuilderFormattable;->formatTo(Ljava/lang/StringBuilder;)V

    .line 651
    invoke-static {v1, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-static {v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->trimToMaxSize(Ljava/lang/StringBuilder;)V

    .line 654
    nop

    .line 655
    .end local v1    # "messageBuffer":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 653
    .restart local v1    # "messageBuffer":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->trimToMaxSize(Ljava/lang/StringBuilder;)V

    throw v2

    .line 656
    .end local v1    # "messageBuffer":Ljava/lang/StringBuilder;
    :cond_d
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->toNullSafeString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 658
    :goto_3
    const/16 v1, 0x22

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    const/16 v1, 0x7d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeNullDelimiter:Z

    if-eqz v1, :cond_e

    .line 661
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    :cond_e
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeNewLineDelimiter:Z

    if-eqz v1, :cond_f

    .line 664
    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    :cond_f
    return-object p2
.end method

.method private static valueNeedsLookup(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 670
    if-eqz p0, :cond_0

    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "event",
            "destination"
        }
    .end annotation

    .line 72
    check-cast p1, Lorg/apache/logging/log4j/core/LogEvent;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->encode(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    return-void
.end method

.method public encode(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "destination"    # Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "destination"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    sget-object v1, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->OFF:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    if-eq v0, v1, :cond_0

    .line 553
    invoke-super {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->encode(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 554
    return-void

    .line 556
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->toText(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 557
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->getStringBuilderEncoder()Lorg/apache/logging/log4j/core/layout/Encoder;

    move-result-object v1

    .line 558
    .local v1, "helper":Lorg/apache/logging/log4j/core/layout/Encoder;, "Lorg/apache/logging/log4j/core/layout/Encoder<Ljava/lang/StringBuilder;>;"
    invoke-interface {v1, v0, p2}, Lorg/apache/logging/log4j/core/layout/Encoder;->encode(Ljava/lang/Object;Lorg/apache/logging/log4j/core/layout/ByteBufferDestination;)V

    .line 559
    return-void
.end method

.method public getContentFormat()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 535
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/json; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$toText$0$GelfLayout(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "builder",
            "key",
            "value"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->mapWriter:Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;

    invoke-virtual {v0, p2, p3, p1}, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->accept(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public requiresLocation()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->requiresLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 545
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->toText(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 546
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 547
    .local v1, "bytes":[B
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    sget-object v3, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->OFF:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    if-eq v2, v3, :cond_0

    array-length v2, v1

    iget v3, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->compressionThreshold:I

    if-le v2, v3, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->compress([B)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public bridge synthetic toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "event"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 585
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->toText(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 586
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, ", compressionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string v1, ", compressionThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->compressionThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, ", includeStackTrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeStacktrace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 492
    const-string v1, ", includeThreadContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeThreadContext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 493
    const-string v1, ", includeNullDelimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeNullDelimiter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, ", includeNewLineDelimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->includeNewLineDelimiter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 495
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->mdcWriter:Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->getChecker()Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "threadVars":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ", "

    if-lez v2, :cond_0

    .line 497
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->mapWriter:Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->getChecker()Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "mapVars":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_1
    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    if-eqz v3, :cond_2

    .line 504
    const-string v3, ", PatternLayout{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
