.class public interface abstract Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TexturePaint"
.end annotation


# virtual methods
.method public getAlignment()Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getAlpha()I
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public getDuoTone()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/usermodel/ColorStyle;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlipMode()Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;

    return-object p0
.end method

.method public abstract getImageData()Ljava/io/InputStream;
.end method

.method public getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOffset()Ljava/awt/geom/Point2D;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScale()Ljava/awt/geom/Dimension2D;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getShape()Lorg/apache/poi/sl/usermodel/Shape;
.end method

.method public getStretch()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isRotatedWithShape()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
