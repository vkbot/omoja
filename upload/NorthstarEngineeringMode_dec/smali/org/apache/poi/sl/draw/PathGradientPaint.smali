.class public Lorg/apache/poi/sl/draw/PathGradientPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Paint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final capStyle:I

.field private final colors:[Ljava/awt/Color;

.field private final fractions:[F

.field private final joinStyle:I

.field private final transparency:I


# direct methods
.method public constructor <init>([F[Ljava/awt/Color;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/poi/sl/draw/PathGradientPaint;-><init>([F[Ljava/awt/Color;II)V

    return-void
.end method

.method private constructor <init>([F[Ljava/awt/Color;II)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p2}, [Ljava/awt/Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->colors:[Ljava/awt/Color;

    .line 4
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->fractions:[F

    iput p3, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->capStyle:I

    iput p4, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->joinStyle:I

    .line 5
    array-length p1, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    move v1, p3

    move v0, p4

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v2, p2, v0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/awt/Color;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    move v1, p3

    goto :goto_1

    :cond_0
    move v1, p4

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x3

    :goto_2
    iput p3, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->transparency:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/sl/draw/PathGradientPaint;)[F
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->fractions:[F

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/sl/draw/PathGradientPaint;)[Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->colors:[Ljava/awt/Color;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/poi/sl/draw/PathGradientPaint;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->capStyle:I

    return p0
.end method

.method public static synthetic access$300(Lorg/apache/poi/sl/draw/PathGradientPaint;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->joinStyle:I

    return p0
.end method


# virtual methods
.method public bridge synthetic createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/poi/sl/draw/PathGradientPaint;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;

    move-result-object p0

    return-object p0
.end method

.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;
    .locals 8

    .line 2
    new-instance v7, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;-><init>(Lorg/apache/poi/sl/draw/PathGradientPaint;Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V

    return-object v7
.end method

.method public getTransparency()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/sl/draw/PathGradientPaint;->transparency:I

    return p0
.end method
