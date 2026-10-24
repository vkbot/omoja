.class public final synthetic Lorg/apache/poi/xslf/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
