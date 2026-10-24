.class public final synthetic Lorg/apache/poi/sl/draw/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->a(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method
