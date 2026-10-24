.class Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/util/XMLHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocHelperErrorHandler"
.end annotation


# instance fields
.field private final logException:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;->logException:Z

    return-void
.end method

.method private printError(La5/a;Lorg/xml/sax/SAXParseException;)V
    .locals 3

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->access$000()La5/d;

    move-result-object v1

    invoke-interface {v1, p1}, La5/d;->i(La5/a;)La5/b;

    move-result-object p1

    iget-boolean p0, p0, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;->logException:Z

    if-eqz p0, :cond_2

    invoke-interface {p1, p2}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p1

    :cond_2
    invoke-interface {p1, v0}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    sget-object v0, La5/a;->Z:La5/a;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;->printError(La5/a;Lorg/xml/sax/SAXParseException;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    sget-object v0, La5/a;->y:La5/a;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;->printError(La5/a;Lorg/xml/sax/SAXParseException;)V

    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    sget-object v0, La5/a;->b1:La5/a;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/util/XMLHelper$DocHelperErrorHandler;->printError(La5/a;Lorg/xml/sax/SAXParseException;)V

    return-void
.end method
