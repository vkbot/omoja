.class public Lorg/apache/poi/util/GenericRecordJsonWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;,
        Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;
    }
.end annotation


# static fields
.field private static final ESC_CHARS:Ljava/util/regex/Pattern;

.field private static final NL:Ljava/lang/String;

.field private static final TABS:Ljava/lang/String;

.field private static final ZEROS:Ljava/lang/String; = "0000000000000000"

.field private static final handler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final aw:Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

.field protected childIndex:I

.field protected final fw:Ljava/io/PrintWriter;

.field protected indent:I

.field protected withComments:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "[\"\\p{Cntrl}\\\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/GenericRecordJsonWriter;->ESC_CHARS:Ljava/util/regex/Pattern;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/GenericRecordJsonWriter;->NL:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler:Ljava/util/List;

    const/16 v0, 0xff

    new-array v0, v0, [C

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    sput-object v1, Lorg/apache/poi/util/GenericRecordJsonWriter;->TABS:Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/util/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/util/d;-><init>(I)V

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/f;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/apache/poi/util/f;-><init>(I)V

    const-class v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/g;

    invoke-direct {v0, v2}, Lorg/apache/poi/util/g;-><init>(I)V

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v3, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/d;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lorg/apache/poi/util/d;-><init>(I)V

    const-class v4, Ljava/util/List;

    invoke-static {v4, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/f;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Lorg/apache/poi/util/f;-><init>(I)V

    const-class v5, Lorg/apache/poi/common/usermodel/GenericRecord;

    invoke-static {v5, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/g;

    invoke-direct {v0, v4}, Lorg/apache/poi/util/g;-><init>(I)V

    const-class v5, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    invoke-static {v5, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/d;

    const/4 v5, 0x5

    invoke-direct {v0, v5}, Lorg/apache/poi/util/d;-><init>(I)V

    const-class v5, [B

    invoke-static {v5, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/geom/Point2D;

    new-instance v5, Lorg/apache/poi/util/f;

    invoke-direct {v5, v3}, Lorg/apache/poi/util/f;-><init>(I)V

    invoke-static {v0, v5}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/geom/Dimension2D;

    new-instance v5, Lorg/apache/poi/util/g;

    invoke-direct {v5, v3}, Lorg/apache/poi/util/g;-><init>(I)V

    invoke-static {v0, v5}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/geom/Rectangle2D;

    new-instance v3, Lorg/apache/poi/util/d;

    const/4 v5, 0x6

    invoke-direct {v3, v5}, Lorg/apache/poi/util/d;-><init>(I)V

    invoke-static {v0, v3}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/geom/Path2D;

    new-instance v3, Lorg/apache/poi/util/f;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lorg/apache/poi/util/f;-><init>(I)V

    invoke-static {v0, v3}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/geom/AffineTransform;

    new-instance v3, Lorg/apache/poi/util/g;

    invoke-direct {v3, v5}, Lorg/apache/poi/util/g;-><init>(I)V

    invoke-static {v0, v3}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/Color;

    new-instance v3, Lorg/apache/poi/util/d;

    invoke-direct {v3, v2}, Lorg/apache/poi/util/d;-><init>(I)V

    invoke-static {v0, v3}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/image/BufferedImage;

    new-instance v2, Lorg/apache/poi/util/f;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/f;-><init>(I)V

    invoke-static {v0, v2}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/g;

    invoke-direct {v0, v1}, Lorg/apache/poi/util/g;-><init>(I)V

    const-class v1, Ljava/lang/reflect/Array;

    invoke-static {v1, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/d;

    invoke-direct {v0, v4}, Lorg/apache/poi/util/d;-><init>(I)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->withComments:Z

    iput v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lorg/apache/commons/io/output/f;->c:Lorg/apache/commons/io/output/f;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    .line 4
    :goto_0
    new-instance v0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->aw:Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    .line 5
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->withComments:Z

    iput v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    .line 7
    new-instance v0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->aw:Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    .line 8
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/util/GenericRecordJsonWriter;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->lambda$writeProperties$0(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Object;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->lambda$writeValue$2(Ljava/lang/Object;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/apache/poi/util/GenericRecordJsonWriter;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->lambda$printList$3(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lorg/apache/poi/util/GenericRecordJsonWriter;Lorg/apache/poi/common/usermodel/GenericRecord;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->lambda$writeChildren$1(Lorg/apache/poi/common/usermodel/GenericRecord;)Z

    move-result p0

    return p0
.end method

.method private static handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;",
            ")V"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$printList$3(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->writeValue(Ljava/lang/String;Ljava/lang/Object;)Z

    iget p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    return-void
.end method

.method private synthetic lambda$writeChildren$1(Lorg/apache/poi/common/usermodel/GenericRecord;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->writeValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$writeProperties$0(Ljava/util/Map$Entry;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Supplier;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->writeProp(Ljava/lang/String;Ljava/util/function/Supplier;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$writeValue$2(Ljava/lang/Object;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1, p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->matchInstanceOrArray(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static marshal(Lorg/apache/poi/common/usermodel/GenericRecord;Z)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lorg/apache/poi/util/GenericRecordJsonWriter;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;-><init>(Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->setWithComments(Z)V

    .line 5
    invoke-virtual {v1, p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->write(Lorg/apache/poi/common/usermodel/GenericRecord;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 9
    :try_start_4
    invoke-virtual {v1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const-string p0, "{}"

    return-object p0
.end method

.method public static matchInstanceOrArray(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/reflect/Array;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static trimHex(JI)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v1, p2, p1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v3, "0000000000000000"

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int p2, p1, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public printAffineTransform(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{ \"scaleX\": "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", \"shearX\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", \"transX\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", \"scaleY\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", \"shearY\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", \"transY\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " }"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printAnnotatedFlag(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    check-cast p2, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->getValue()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    iget-boolean p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->withComments:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v0, " /* "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string p1, " */ "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public printArray(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    iget v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    const/4 v2, 0x1

    if-ge v1, p1, :cond_0

    const/4 v3, 0x0

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->writeValue(Ljava/lang/String;Ljava/lang/Object;)Z

    iget v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->tabs()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return v2
.end method

.method public printBoolean(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printBytes(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(I)V

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    check-cast p2, [B

    invoke-virtual {v1, p2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public printColor(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/Color;

    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p1

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    iget-boolean p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->withComments:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v0, " /* 0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    int-to-long v0, p1

    const/16 p1, 0x8

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->trimHex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string p1, " */"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public printDimension(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/geom/Dimension2D;

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{ \"width\": "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", \"height\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " }"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printGenericRecord(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    iget p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    check-cast p2, Lorg/apache/poi/common/usermodel/GenericRecord;

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/GenericRecordJsonWriter;->write(Lorg/apache/poi/common/usermodel/GenericRecord;)V

    iget p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    return v0
.end method

.method public printImage(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p2

    check-cast v0, Ljava/awt/image/BufferedImage;

    const-string v1, "XYZ"

    const-string v2, "Lab"

    const-string v3, "Luv"

    const-string v4, "YCbCr"

    const-string v5, "Yxy"

    const-string v6, "RGB"

    const-string v7, "GRAY"

    const-string v8, "HSV"

    const-string v9, "HLS"

    const-string v10, "CMYK"

    const-string v11, "Unknown"

    const-string v12, "CMY"

    const-string v13, "Unknown"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "CUSTOM"

    const-string v3, "INT_RGB"

    const-string v4, "INT_ARGB"

    const-string v5, "INT_ARGB_PRE"

    const-string v6, "INT_BGR"

    const-string v7, "3BYTE_BGR"

    const-string v8, "4BYTE_ABGR"

    const-string v9, "4BYTE_ABGR_PRE"

    const-string v10, "USHORT_565_RGB"

    const-string v11, "USHORT_555_RGB"

    const-string v12, "BYTE_GRAY"

    const-string v13, "USHORT_GRAY"

    const-string v14, "BYTE_BINARY"

    const-string v15, "BYTE_INDEXED"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v3

    instance-of v4, v3, Ljava/awt/image/IndexColorModel;

    if-eqz v4, :cond_0

    const-string v4, "indexed"

    :goto_0
    move-object/from16 v5, p0

    goto :goto_1

    :cond_0
    instance-of v4, v3, Ljava/awt/image/ComponentColorModel;

    if-eqz v4, :cond_1

    const-string v4, "component"

    goto :goto_0

    :cond_1
    instance-of v4, v3, Ljava/awt/image/DirectColorModel;

    if-eqz v4, :cond_2

    const-string v4, "direct"

    goto :goto_0

    :cond_2
    instance-of v4, v3, Ljava/awt/image/PackedColorModel;

    if-eqz v4, :cond_3

    const-string v4, "packed"

    goto :goto_0

    :cond_3
    const-string v4, "unknown"

    goto :goto_0

    :goto_1
    iget-object v5, v5, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{ \"width\": "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", \"height\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", \"type\": \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"colormodel\": \""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"pixelBits\": "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \"numComponents\": "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \"colorSpace\": \""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v0

    const/16 v2, 0xc

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"transparency\": "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \"alpha\": "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public printList(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    check-cast p2, Ljava/util/List;

    new-instance v0, Lorg/apache/poi/util/b;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/b;-><init>(Lorg/apache/poi/util/GenericRecordJsonWriter;)V

    invoke-interface {p2, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iput p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->tabs()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printName(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    if-eqz p1, :cond_0

    const-string v0, "\""

    const-string v1, "\": "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public printNull(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printNumber(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    instance-of p1, p2, Ljava/lang/Float;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(F)V

    return v1

    :cond_0
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(D)V

    return v1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    instance-of p1, v0, Ljava/lang/Byte;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    instance-of p1, v0, Ljava/lang/Short;

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    goto :goto_0

    :cond_3
    instance-of p1, v0, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    const/16 p1, 0x8

    goto :goto_0

    :cond_4
    instance-of p1, v0, Ljava/lang/Long;

    if-eqz p1, :cond_5

    const/16 p1, 0x10

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-boolean p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->withComments:Z

    if-eqz p2, :cond_7

    if-lez p1, :cond_7

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-ltz p2, :cond_6

    const-wide/16 v4, 0x9

    cmp-long p2, v2, v4

    if-lez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v0, " /* 0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-static {v2, v3, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->trimHex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string p1, " */"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_7
    return v1
.end method

.method public printObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(I)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/util/GenericRecordJsonWriter;->ESC_CHARS:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v3, p1, v2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v4, v6

    goto :goto_2

    :sswitch_0
    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x6

    goto :goto_2

    :sswitch_1
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_2
    const-string v3, "\r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :sswitch_3
    const-string v3, "\u000c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_4
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_5
    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :sswitch_6
    const-string v3, "\u0008"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v4, v1

    :cond_6
    :goto_2
    packed-switch v4, :pswitch_data_0

    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v4, "\\\\u"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-long v6, v2

    invoke-static {v6, v7, v5}, Lorg/apache/poi/util/GenericRecordJsonWriter;->trimHex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_0
    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, "\\\\\\\\"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, "\\\\\""

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, "\\\\r"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, "\\\\f"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, "\\\\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, "\\\\t"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_6
    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, "\\\\b"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto/16 :goto_0

    :cond_7
    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, p1, v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(I)V

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x22 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printPath(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 13

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/geom/Path2D;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/awt/geom/Path2D;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p1

    const/4 p2, 0x6

    new-array p2, p2, [D

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->tabs()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    if-eqz v3, :cond_0

    const-string v3, ", "

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v6, "{ \"type\": "

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v4, ", \"y\": "

    if-eqz v3, :cond_5

    if-eq v3, v5, :cond_4

    const-string v4, ", \"y2\": "

    const-string v6, ", \"x2\": "

    const-string v7, ", \"y1\": "

    const/4 v8, 0x3

    if-eq v3, v1, :cond_3

    const/4 v9, 0x4

    if-eq v3, v8, :cond_2

    if-eq v3, v9, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v4, "\"close\""

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\"cubic\", \"x1\": "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v11, p2, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, p2, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p2, v1

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p2, v8

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", \"x3\": "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p2, v9

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", \"y3\": "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    aget-wide v6, p2, v4

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\"quad\", \"x1\": "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v10, p2, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, p2, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p2, v1

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p2, v8

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\"lineto\", \"x\": "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v7, p2, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, p2, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\"move\", \"x\": "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v7, p2, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, p2, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->next()V

    move v3, v5

    goto/16 :goto_0

    :cond_6
    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return v5
.end method

.method public printPoint(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/geom/Point2D;

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{ \"x\": "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", \"y\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " }"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printRectangle(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/geom/Rectangle2D;

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{ \"x\": "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", \"y\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", \"width\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", \"height\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " }"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setWithComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->withComments:Z

    return-void
.end method

.method public tabs()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/poi/util/GenericRecordJsonWriter;->TABS:Ljava/lang/String;

    iget p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/common/usermodel/GenericRecord;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->tabs()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/GenericRecord;->getGenericRecordType()Ljava/lang/Enum;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-boolean v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->withComments:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, "   /* "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v2, " - index: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    iget v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v2, " */"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->writeProperties(Lorg/apache/poi/common/usermodel/GenericRecord;)Z

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->writeChildren(Lorg/apache/poi/common/usermodel/GenericRecord;Z)Z

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method public writeChildren(Lorg/apache/poi/common/usermodel/GenericRecord;Z)Z
    .locals 5

    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/GenericRecord;->getGenericChildren()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->aw:Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->tabs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p2, ", "

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"children\": ["

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/apache/poi/util/GenericRecordJsonWriter;->NL:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->setHoldBack(Ljava/lang/String;)V

    iget p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    iput v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/util/e;

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/util/e;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v3

    iput p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->aw:Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->setHoldBack(Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    cmp-long p1, v3, p1

    if-lez p1, :cond_2

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->tabs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    sub-int/2addr p2, v2

    iput p2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->indent:I

    if-lez p1, :cond_3

    move v0, v2

    :cond_3
    :goto_1
    return v0
.end method

.method public writeError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string v1, "{ error: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "error"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->printObject(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->fw:Ljava/io/PrintWriter;

    const-string p1, " }"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method public writeProp(Ljava/lang/String;Ljava/util/function/Supplier;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;)Z"
        }
    .end annotation

    iget v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->aw:Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/apache/poi/util/GenericRecordJsonWriter;->NL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->tabs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t, "

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->tabs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t  "

    goto :goto_1

    :goto_2
    invoke-virtual {v2, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->setHoldBack(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    iput v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/util/GenericRecordJsonWriter;->writeValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->aw:Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->setHoldBack(Ljava/lang/String;)V

    return p1
.end method

.method public writeProperties(Lorg/apache/poi/common/usermodel/GenericRecord;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/GenericRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    iput v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lorg/apache/poi/util/c;

    invoke-direct {v2, p0}, Lorg/apache/poi/util/c;-><init>(Lorg/apache/poi/util/GenericRecordJsonWriter;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    iput v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    iget v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->childIndex:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->aw:Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->setHoldBack(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    new-instance v2, Lorg/apache/poi/util/d;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/d;-><init>(I)V

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/poi/util/GenericRecordJsonWriter;->handler:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/util/e;

    invoke-direct {v3, v1, p2}, Lorg/apache/poi/util/e;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lg5/l;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lg5/l;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2, p0, p1, p2}, Lorg/apache/poi/util/GenericRecordJsonWriter$GenericRecordHandler;->print(Lorg/apache/poi/util/GenericRecordJsonWriter;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter;->aw:Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->setHoldBack(Ljava/lang/String;)V

    return v1
.end method
