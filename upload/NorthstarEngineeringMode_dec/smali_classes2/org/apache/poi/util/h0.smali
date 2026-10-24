.class public final synthetic Lorg/apache/poi/util/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# virtual methods
.method public final resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/util/XMLHelper;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method
