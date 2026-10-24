.class public Li5/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d1:Ljava/util/ResourceBundle;


# instance fields
.field public final Z:I

.field public final b1:I

.field public final c:Ljava/lang/String;

.field public final transient c1:Li5/p0;

.field public final r:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.apache.xmlbeans.message"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Li5/y0;->d1:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILi5/p0;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eqz p4, :cond_3

    .line 3
    invoke-interface {p4}, Li5/j2;->documentProperties()Li5/t0;

    move-result-object v1

    .line 4
    sget-object v2, Li5/t0;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v2}, Li5/t0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-interface {p4}, Li5/j2;->newCursor()Li5/p0;

    move-result-object v2

    .line 8
    :try_start_0
    invoke-interface {v2}, Li5/p0;->s0()Li5/p0$b;

    move-result-object v3

    check-cast v3, Li5/o1;

    if-nez v3, :cond_0

    .line 9
    invoke-interface {v2}, Li5/p0;->f()Li5/p0$b;

    move-result-object v3

    check-cast v3, Li5/o1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 10
    iget v0, v3, Li5/o1;->a:I

    .line 11
    iget v3, v3, Li5/o1;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move v3, v0

    .line 12
    :goto_1
    invoke-interface {v2}, Li5/p0;->close()V

    goto :goto_4

    .line 13
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_2

    .line 14
    :try_start_2
    invoke-interface {v2}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1

    :cond_3
    const/4 v1, 0x0

    move v3, v0

    :goto_4
    iput-object p1, p0, Li5/y0;->c:Ljava/lang/String;

    iput-object p2, p0, Li5/y0;->r:Ljava/lang/String;

    iput p3, p0, Li5/y0;->y:I

    iput-object v1, p0, Li5/y0;->x:Ljava/lang/String;

    iput v0, p0, Li5/y0;->Z:I

    iput v3, p0, Li5/y0;->b1:I

    iput-object p4, p0, Li5/y0;->c1:Li5/p0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/y0;->c:Ljava/lang/String;

    iput-object p2, p0, Li5/y0;->r:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Li5/y0;->y:I

    iput-object p3, p0, Li5/y0;->x:Ljava/lang/String;

    iput p4, p0, Li5/y0;->Z:I

    iput p5, p0, Li5/y0;->b1:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;ILi5/p0;)V
    .locals 0

    .line 15
    invoke-static {p1, p2}, Li5/y0;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3, p4}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;ILi5/p0;)V

    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)Li5/y0;
    .locals 6

    if-nez p2, :cond_0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    new-instance p2, Li5/y0;

    invoke-static {p0, p1}, Li5/y0;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p2

    new-instance v0, Li5/y0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Li5/y0;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILi5/p0;)V

    move-object p2, v0

    :goto_0
    return-object p2
.end method

.method public static b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    sget-object v0, Li5/y0;->d1:Ljava/util/ResourceBundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/MessageFormat;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, p0, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Ljava/util/MissingResourceException;

    if-eqz p1, :cond_1

    const-string p1, "message.missing.resource"

    goto :goto_0

    :cond_1
    const-string p1, "message.pattern.invalid"

    :goto_0
    new-instance v1, Ljava/text/MessageFormat;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, p1, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li5/y0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li5/y0;->x:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :catch_0
    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    :cond_2
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_3
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li5/y0;->Z:I

    if-gez v1, :cond_4

    const/4 v1, 0x0

    :cond_4
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Li5/y0;->b1:I

    if-lez v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Li5/y0;->y:I

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, "warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v1, p0, Li5/y0;->r:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Li5/y0;->c()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    const-string p0, "<Unspecified message>"

    :cond_a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
