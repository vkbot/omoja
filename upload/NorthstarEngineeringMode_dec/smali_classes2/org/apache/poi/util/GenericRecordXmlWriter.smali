.class public Lorg/apache/poi/util/GenericRecordXmlWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ESC_CHARS:Ljava/util/regex/Pattern;

.field private static final TABS:Ljava/lang/String;

.field private static final ZEROS:Ljava/lang/String; = "0000000000000000"

.field private static final handler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private attributePhase:Z

.field private childIndex:I

.field private final fw:Ljava/io/PrintWriter;

.field private indent:I

.field private withComments:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "[<>&\'\"\\p{Cntrl}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->ESC_CHARS:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler:Ljava/util/List;

    const/16 v0, 0xff

    new-array v0, v0, [C

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    sput-object v1, Lorg/apache/poi/util/GenericRecordXmlWriter;->TABS:Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/util/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/util/s;-><init>(I)V

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/s;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/apache/poi/util/s;-><init>(I)V

    const-class v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/t;

    invoke-direct {v0, v2}, Lorg/apache/poi/util/t;-><init>(I)V

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v3, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/u;

    invoke-direct {v0, v2}, Lorg/apache/poi/util/u;-><init>(I)V

    const-class v2, Ljava/util/List;

    invoke-static {v2, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/s;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lorg/apache/poi/util/s;-><init>(I)V

    const-class v3, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    invoke-static {v3, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/t;

    invoke-direct {v0, v2}, Lorg/apache/poi/util/t;-><init>(I)V

    const-class v3, [B

    invoke-static {v3, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/geom/Point2D;

    new-instance v3, Lorg/apache/poi/util/u;

    invoke-direct {v3, v2}, Lorg/apache/poi/util/u;-><init>(I)V

    invoke-static {v0, v3}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/geom/Dimension2D;

    new-instance v2, Lorg/apache/poi/util/s;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/apache/poi/util/s;-><init>(I)V

    invoke-static {v0, v2}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/geom/Rectangle2D;

    new-instance v2, Lorg/apache/poi/util/t;

    invoke-direct {v2, v3}, Lorg/apache/poi/util/t;-><init>(I)V

    invoke-static {v0, v2}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/geom/Path2D;

    new-instance v2, Lorg/apache/poi/util/u;

    invoke-direct {v2, v3}, Lorg/apache/poi/util/u;-><init>(I)V

    invoke-static {v0, v2}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/geom/AffineTransform;

    new-instance v2, Lorg/apache/poi/util/t;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/t;-><init>(I)V

    invoke-static {v0, v2}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/Color;

    new-instance v2, Lorg/apache/poi/util/u;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/u;-><init>(I)V

    invoke-static {v0, v2}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    const-class v0, Ljava/awt/image/BufferedImage;

    new-instance v1, Lorg/apache/poi/util/s;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/poi/util/s;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/t;

    invoke-direct {v0, v2}, Lorg/apache/poi/util/t;-><init>(I)V

    const-class v1, Ljava/lang/reflect/Array;

    invoke-static {v1, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    new-instance v0, Lorg/apache/poi/util/u;

    invoke-direct {v0, v2}, Lorg/apache/poi/util/u;-><init>(I)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->withComments:Z

    iput v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    iput-boolean v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->attributePhase:Z

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
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->withComments:Z

    iput v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    iput-boolean v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->attributePhase:Z

    .line 6
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;

    invoke-direct {v1, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/util/GenericRecordXmlWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/util/GenericRecordXmlWriter;->lambda$writeValue$3(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/util/GenericRecordXmlWriter;Lorg/apache/poi/common/usermodel/GenericRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->lambda$writeChildren$0(Lorg/apache/poi/common/usermodel/GenericRecord;)V

    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/util/GenericRecordXmlWriter;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->lambda$printList$4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->lambda$writeProp$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Object;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->lambda$writeValue$2(Ljava/lang/Object;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method private static handler(Ljava/lang/Class;Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;",
            ")V"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isComplex(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/awt/Color;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/lang/Enum;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$printList$4(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "item>"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    return-void
.end method

.method private synthetic lambda$writeChildren$0(Lorg/apache/poi/common/usermodel/GenericRecord;)V
    .locals 1

    const-string v0, "record"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    return-void
.end method

.method private static synthetic lambda$writeProp$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$writeValue$2(Ljava/lang/Object;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1, p0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->matchInstanceOrArray(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$writeValue$3(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;

    invoke-interface {p3, p0, p1, p2}, Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;->print(Lorg/apache/poi/util/GenericRecordXmlWriter;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public static marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;Z)Ljava/lang/String;

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
    new-instance v1, Lorg/apache/poi/util/GenericRecordXmlWriter;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;-><init>(Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->setWithComments(Z)V

    .line 5
    invoke-virtual {v1, p0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->write(Lorg/apache/poi/common/usermodel/GenericRecord;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->close()V
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
    invoke-virtual {v1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->close()V
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
    const-string p0, "<record/>"

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


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public closeName(Ljava/lang/String;)V
    .locals 2

    const-string v0, ">>"

    const-string v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->attributePhase:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->tabs()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t</"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string p1, "/>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public openName(Ljava/lang/String;)V
    .locals 4

    const-string v0, ">>"

    const-string v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->attributePhase:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e

    const/16 v2, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->tabs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_1
    :goto_0
    return-void
.end method

.method public printAffineTransform(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/geom/AffineTransform;

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v1, "<"

    const-string v2, " scaleX=\""

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\" shearX=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\" transX=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\" scaleY=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\" shearY=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\" transY=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "\"/>"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printAnnotatedFlag(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    invoke-virtual {p2}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->getValue()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, " flag=\"0x"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->trimHex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-boolean v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->withComments:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v1, " description=\""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printArray(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iget v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    iget v3, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    const/4 v4, 0x1

    if-ge v3, v0, :cond_0

    const-string v5, "item>"

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lorg/apache/poi/util/GenericRecordXmlWriter;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    return v4
.end method

.method public printBoolean(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printBufferedImage(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/image/BufferedImage;

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " width=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\" height=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\" bands=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printBytes(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    check-cast p2, [B

    invoke-virtual {v2, p2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printColor(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/Color;

    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, p2

    const/16 p2, 0x8

    invoke-virtual {p0, v2, v3, p2}, Lorg/apache/poi/util/GenericRecordXmlWriter;->trimHex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printDimension(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/geom/Dimension2D;

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " width=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\" height=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "\"/>"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printGenericRecord(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/apache/poi/common/usermodel/GenericRecord;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/util/GenericRecordXmlWriter;->write(Ljava/lang/String;Lorg/apache/poi/common/usermodel/GenericRecord;)V

    return-void
.end method

.method public printList(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    check-cast p2, Ljava/util/List;

    new-instance v2, Lorg/apache/poi/util/p;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lorg/apache/poi/util/p;-><init>(Lorg/apache/poi/util/GenericRecordXmlWriter;I)V

    invoke-interface {p2, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iput v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    return v3
.end method

.method public printNumber(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Number;

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->ESC_CHARS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v4, p2, v3, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v6, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move v5, v6

    goto :goto_2

    :sswitch_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    goto :goto_2

    :sswitch_1
    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    goto :goto_2

    :sswitch_2
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :sswitch_4
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v5, v2

    :cond_4
    :goto_2
    packed-switch v5, :pswitch_data_0

    iget-object v4, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v5, "&#x"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_0
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v4, "&apos;"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    iget-object v3, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p2, v3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    return v5

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printPath(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    move-object/from16 v2, p2

    check-cast v2, Ljava/awt/geom/Path2D;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/awt/geom/Path2D;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v2

    const/4 v4, 0x6

    new-array v4, v4, [D

    iget v5, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    const/4 v6, 0x2

    add-int/2addr v5, v6

    iput v5, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->tabs()Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    sub-int/2addr v7, v6

    iput v7, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    :goto_0
    invoke-interface {v2}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    iget-object v7, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v7

    iget-object v9, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v10, "<pathelement "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "\" y=\""

    const-string v10, "\""

    const/4 v11, 0x0

    if-eqz v7, :cond_4

    if-eq v7, v8, :cond_3

    const-string v9, "\" y2=\""

    const-string v12, "\" x2=\""

    const-string v13, "\" y1=\""

    const/4 v14, 0x3

    if-eq v7, v6, :cond_2

    const/4 v15, 0x4

    if-eq v7, v14, :cond_1

    if-eq v7, v15, :cond_0

    :goto_1
    move v12, v6

    goto/16 :goto_2

    :cond_0
    iget-object v7, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v8, "type=\"close\""

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "type=\"cubic\" x1=\""

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v7

    aget-wide v6, v4, v11

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v4, v8

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget-wide v7, v4, v6

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget-wide v6, v4, v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "\" x3=\""

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    aget-wide v6, v4, v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "\" y3=\""

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    aget-wide v6, v4, v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v16

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x2

    goto/16 :goto_2

    :cond_2
    iget-object v6, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "type=\"quad\" x1=\""

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v14, v4, v11

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v13, v4, v8

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    aget-wide v13, v4, v12

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    aget-wide v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v12, v6

    iget-object v6, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "type=\"lineto\" x=\""

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v13, v4, v11

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v12, v6

    iget-object v6, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "type=\"move\" x=\""

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v13, v4, v11

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    iget-object v6, v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v7, "/>"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/awt/geom/PathIterator;->next()V

    move v6, v12

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    return v8
.end method

.method public printPoint(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/geom/Point2D;

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " x=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\" y=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "\"/>"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public printRectangle(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->openName(Ljava/lang/String;)V

    check-cast p2, Ljava/awt/geom/Rectangle2D;

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " x=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\" y=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\" width=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\" height=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "\"/>"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->closeName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setWithComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->withComments:Z

    return-void
.end method

.method public tabs()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->TABS:Ljava/lang/String;

    iget p0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trimHex(JI)Ljava/lang/String;
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v0, p3, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v2, "0000000000000000"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int p3, p1, p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/lang/String;Lorg/apache/poi/common/usermodel/GenericRecord;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->tabs()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p2}, Lorg/apache/poi/common/usermodel/GenericRecord;->getGenericRecordType()Ljava/lang/Enum;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    .line 5
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, "<"

    .line 6
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, " type=\""

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    .line 7
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v2, "\""

    .line 8
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, " index=\""

    .line 9
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    iget v3, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    .line 10
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    .line 11
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->attributePhase:Z

    .line 12
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/GenericRecordXmlWriter;->writeProperties(Lorg/apache/poi/common/usermodel/GenericRecord;)Z

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->attributePhase:Z

    .line 13
    invoke-virtual {p0, p2, v1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->writeChildren(Lorg/apache/poi/common/usermodel/GenericRecord;Z)Z

    move-result p2

    or-int/2addr p2, v1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    .line 14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "</"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string p1, "/>"

    .line 16
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public write(Lorg/apache/poi/common/usermodel/GenericRecord;)V
    .locals 1

    const-string v0, "record"

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->write(Ljava/lang/String;Lorg/apache/poi/common/usermodel/GenericRecord;)V

    return-void
.end method

.method public writeChildren(Lorg/apache/poi/common/usermodel/GenericRecord;Z)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/GenericRecord;->getGenericChildren()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v1, ">"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    const/4 v1, 0x1

    add-int/2addr p2, v1

    iput p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->tabs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<children>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    add-int/2addr p2, v1

    iput p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    iget p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    iput v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    new-instance v0, Lorg/apache/poi/util/r;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/r;-><init>(Lorg/apache/poi/util/GenericRecordXmlWriter;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iput p2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    iget-object p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->tabs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</children>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public writeError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->printObject(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public writeProp(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->isComplex(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->attributePhase:Z

    if-ne v2, v1, :cond_2

    if-eqz v1, :cond_1

    new-instance p0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/util/q;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/q;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    iget v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/GenericRecordXmlWriter;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public writeProperties(Lorg/apache/poi/common/usermodel/GenericRecord;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/GenericRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    iput v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lorg/apache/poi/util/o;

    invoke-direct {v2, p0}, Lorg/apache/poi/util/o;-><init>(Lorg/apache/poi/util/GenericRecordXmlWriter;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-boolean v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->attributePhase:Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    new-instance v2, Lorg/apache/poi/util/p;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/util/p;-><init>(Lorg/apache/poi/util/GenericRecordXmlWriter;I)V

    invoke-interface {p1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->indent:I

    :cond_1
    iput v1, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->childIndex:I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lorg/apache/poi/common/usermodel/GenericRecord;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/util/GenericRecordXmlWriter;->printGenericRecord(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordXmlWriter;->fw:Ljava/io/PrintWriter;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lorg/apache/poi/util/GenericRecordXmlWriter;->handler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/util/m;

    invoke-direct {v1, p2}, Lorg/apache/poi/util/m;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/util/n;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/poi/util/n;-><init>(Lorg/apache/poi/util/GenericRecordXmlWriter;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method
