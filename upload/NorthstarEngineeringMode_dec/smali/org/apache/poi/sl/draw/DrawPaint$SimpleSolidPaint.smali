.class Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/DrawPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleSolidPaint"
.end annotation


# instance fields
.field private final solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;


# direct methods
.method public constructor <init>(Ljava/awt/Color;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;-><init>(Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;Ljava/awt/Color;)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Color needs to be specified"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/ColorStyle;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Color needs to be specified"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    check-cast p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
