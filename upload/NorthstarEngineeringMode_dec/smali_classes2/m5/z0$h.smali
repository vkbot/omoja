.class public abstract Lm5/z0$h;
.super Lm5/z0$g;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation


# instance fields
.field public final h1:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 4

    invoke-direct {p0}, Lm5/z0$g;-><init>()V

    iput-object p1, p0, Lm5/z0$h;->h1:Lorg/xml/sax/XMLReader;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p1, v1, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Ld/f;->L(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lm5/z0;->z:Le5/g;

    invoke-interface {v1}, La5/d;->g()La5/b;

    move-result-object v1

    invoke-interface {v1, p1}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p1

    const-string v1, "Secure Processing Feature is not supported"

    invoke-interface {p1, v1}, La5/b;->f(Ljava/lang/String;)V

    :goto_0
    :try_start_2
    iget-object p1, p0, Lm5/z0$h;->h1:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/properties/declaration-handler"

    invoke-interface {p1, v1, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Ld/f;->L(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lm5/z0;->z:Le5/g;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "SAX Declaration Handler is not supported"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p0}, Ld/f;->W(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ld/f;->W(Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception p0

    invoke-static {p0}, Ld/f;->L(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Ld/f;->W(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final b(Lm5/z0;Lorg/xml/sax/InputSource;Li5/z1;)Lm5/h;
    .locals 6

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lm5/z0$g;->a(Lm5/z0;Li5/z1;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lm5/z0$h;->h1:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object p2, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-virtual {p2}, Lm5/h$a;->e()Lm5/h;

    move-result-object p2

    invoke-static {p2, p3}, Lm5/z0;->c(Lm5/h;Li5/z1;)V

    iput-object p1, p0, Lm5/z0$g;->c:Lm5/z0;

    iput-object p1, p0, Lm5/z0$g;->r:Lm5/h$a;
    :try_end_0
    .catch Li5/c2; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_5

    :goto_0
    iget-object p0, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-virtual {p0}, Lm5/h$a;->a()V

    throw p1

    :goto_1
    iget-object p0, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-virtual {p0}, Lm5/h$a;->a()V

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    new-instance p0, Li5/y0;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p2, Li5/z0;

    invoke-virtual {p0}, Li5/y0;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1, p0}, Li5/z0;-><init>(Ljava/lang/String;Lorg/xml/sax/SAXException;Li5/y0;)V

    throw p2

    :goto_2
    iget-object p0, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-virtual {p0}, Lm5/h$a;->a()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_0

    :goto_3
    move-object v3, p1

    goto :goto_4

    :cond_0
    sget-object p0, Li5/z1$a;->G1:Li5/z1$a;

    iget-object p1, p3, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    :goto_4
    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v5

    new-instance p0, Li5/y0;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p1, Li5/z0;

    invoke-virtual {p0}, Li5/y0;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2, p0}, Li5/z0;-><init>(Ljava/lang/String;Lorg/xml/sax/SAXException;Li5/y0;)V

    throw p1

    :goto_5
    iget-object p0, p0, Lm5/z0$g;->r:Lm5/h$a;

    invoke-virtual {p0}, Lm5/h$a;->a()V

    new-instance p0, Li5/z0;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p1, Li5/c2;->c:Ljava/util/List;

    if-eqz p1, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li5/z0;->c:Ljava/util/List;

    :cond_1
    throw p0
.end method

.method public final error(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    throw p1
.end method

.method public final fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    throw p1
.end method

.method public final warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    throw p1
.end method
