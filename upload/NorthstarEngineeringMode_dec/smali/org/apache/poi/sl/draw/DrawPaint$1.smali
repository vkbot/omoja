.class Lorg/apache/poi/sl/draw/DrawPaint$1;
.super Lorg/apache/poi/sl/usermodel/AbstractColorStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/draw/DrawPaint;->getSolidPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/sl/draw/DrawPaint;

.field final synthetic val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field final synthetic val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/DrawPaint;Lorg/apache/poi/sl/usermodel/ColorStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->this$0:Lorg/apache/poi/sl/draw/DrawPaint;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    iput-object p3, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-direct {p0}, Lorg/apache/poi/sl/usermodel/AbstractColorStyle;-><init>()V

    return-void
.end method

.method private scale(ILorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$modifier:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    const/4 v0, 0x0

    if-ne p0, p2, :cond_1

    const/16 p0, 0x4e20

    goto :goto_0

    :cond_1
    if-ne p0, p3, :cond_2

    const p0, 0x9c40

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p0

    const p0, 0x186a0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getHueMod()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueMod()I

    move-result p0

    return p0
.end method

.method public getHueOff()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueOff()I

    move-result p0

    return p0
.end method

.method public getLumMod()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumMod()I

    move-result p0

    return p0
.end method

.method public getLumOff()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumOff()I

    move-result p0

    return p0
.end method

.method public getSatMod()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatMod()I

    move-result p0

    return p0
.end method

.method public getSatOff()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatOff()I

    move-result p0

    return p0
.end method

.method public getShade()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getShade()I

    move-result v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    sget-object v2, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint$1;->scale(ILorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)I

    move-result p0

    return p0
.end method

.method public getTint()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$1;->val$orig:Lorg/apache/poi/sl/usermodel/ColorStyle;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getTint()I

    move-result v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    sget-object v2, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint$1;->scale(ILorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)I

    move-result p0

    return p0
.end method
