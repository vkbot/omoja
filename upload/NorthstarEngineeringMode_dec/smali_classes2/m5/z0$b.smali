.class public final Lm5/z0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# virtual methods
.method public final resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0

    new-instance p0, Lorg/xml/sax/InputSource;

    new-instance p1, Ljava/io/StringReader;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    return-object p0
.end method
