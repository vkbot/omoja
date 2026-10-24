.class public Lorg/apache/poi/sl/draw/DrawFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultFactory:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/poi/sl/draw/DrawFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawFactory;->defaultFactory:Ljava/lang/ThreadLocal;

    new-instance v1, Lorg/apache/poi/extractor/g;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/extractor/g;-><init>(Ljava/lang/ThreadLocal;I)V

    invoke-static {v1}, Lorg/apache/poi/util/ThreadLocalUtil;->registerCleaner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->DRAW_FACTORY:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/DrawFactory;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/poi/sl/draw/DrawFactory;->defaultFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/DrawFactory;

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Lorg/apache/poi/sl/draw/DrawFactory;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/DrawFactory;-><init>()V

    :cond_3
    if-eqz p0, :cond_4

    if-nez v0, :cond_4

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->DRAW_FACTORY:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v0, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method public static setDefaultFactory(Lorg/apache/poi/sl/draw/DrawFactory;)V
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/draw/DrawFactory;->defaultFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/draw/DrawFactory;->defaultFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public drawShape(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;Ljava/awt/geom/Rectangle2D;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;",
            "Ljava/awt/geom/Rectangle2D;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/geom/AffineTransform;

    new-instance v3, Ljava/awt/geom/AffineTransform;

    invoke-direct {v3}, Ljava/awt/geom/AffineTransform;-><init>()V

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v8

    invoke-virtual {p3}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v10

    invoke-virtual {v3, v8, v9, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/Drawable;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->applyTransform(Ljava/awt/Graphics2D;)V

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1, v2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    return-void

    :goto_1
    sget-object p2, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, p2, v2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Background;)Lorg/apache/poi/sl/draw/DrawBackground;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Background<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawBackground;"
        }
    .end annotation

    .line 40
    new-instance p0, Lorg/apache/poi/sl/draw/DrawBackground;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawBackground;-><init>(Lorg/apache/poi/sl/usermodel/Background;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/ConnectorShape;)Lorg/apache/poi/sl/draw/DrawConnectorShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/ConnectorShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawConnectorShape;"
        }
    .end annotation

    .line 33
    new-instance p0, Lorg/apache/poi/sl/draw/DrawConnectorShape;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawConnectorShape;-><init>(Lorg/apache/poi/sl/usermodel/ConnectorShape;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/FreeformShape;)Lorg/apache/poi/sl/draw/DrawFreeformShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/FreeformShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawFreeformShape;"
        }
    .end annotation

    .line 32
    new-instance p0, Lorg/apache/poi/sl/draw/DrawFreeformShape;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawFreeformShape;-><init>(Lorg/apache/poi/sl/usermodel/FreeformShape;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)Lorg/apache/poi/sl/draw/DrawGraphicalFrame;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawGraphicalFrame;"
        }
    .end annotation

    .line 38
    new-instance p0, Lorg/apache/poi/sl/draw/DrawGraphicalFrame;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawGraphicalFrame;-><init>(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/GroupShape;)Lorg/apache/poi/sl/draw/DrawGroupShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawGroupShape;"
        }
    .end annotation

    .line 36
    new-instance p0, Lorg/apache/poi/sl/draw/DrawGroupShape;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawGroupShape;-><init>(Lorg/apache/poi/sl/usermodel/GroupShape;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/MasterSheet;)Lorg/apache/poi/sl/draw/DrawMasterSheet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawMasterSheet;"
        }
    .end annotation

    .line 30
    new-instance p0, Lorg/apache/poi/sl/draw/DrawMasterSheet;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawMasterSheet;-><init>(Lorg/apache/poi/sl/usermodel/MasterSheet;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/PictureShape;)Lorg/apache/poi/sl/draw/DrawPictureShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawPictureShape;"
        }
    .end annotation

    .line 37
    new-instance p0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;-><init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Sheet;)Lorg/apache/poi/sl/draw/DrawSheet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Sheet<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawSheet;"
        }
    .end annotation

    .line 29
    new-instance p0, Lorg/apache/poi/sl/draw/DrawSheet;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSheet;-><init>(Lorg/apache/poi/sl/usermodel/Sheet;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Slide;)Lorg/apache/poi/sl/draw/DrawSlide;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawSlide;"
        }
    .end annotation

    .line 28
    new-instance p0, Lorg/apache/poi/sl/draw/DrawSlide;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSlide;-><init>(Lorg/apache/poi/sl/usermodel/Slide;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TableShape;)Lorg/apache/poi/sl/draw/DrawTableShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TableShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawTableShape;"
        }
    .end annotation

    .line 34
    new-instance p0, Lorg/apache/poi/sl/draw/DrawTableShape;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawTableShape;-><init>(Lorg/apache/poi/sl/usermodel/TableShape;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TextBox;)Lorg/apache/poi/sl/draw/DrawTextBox;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextBox<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawTextBox;"
        }
    .end annotation

    .line 31
    new-instance p0, Lorg/apache/poi/sl/draw/DrawTextBox;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawTextBox;-><init>(Lorg/apache/poi/sl/usermodel/TextBox;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TextParagraph;)Lorg/apache/poi/sl/draw/DrawTextParagraph;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "***>;)",
            "Lorg/apache/poi/sl/draw/DrawTextParagraph;"
        }
    .end annotation

    .line 39
    new-instance p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;-><init>(Lorg/apache/poi/sl/usermodel/TextParagraph;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawTextShape;"
        }
    .end annotation

    .line 35
    new-instance p0, Lorg/apache/poi/sl/draw/DrawTextShape;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawTextShape;-><init>(Lorg/apache/poi/sl/usermodel/TextShape;)V

    return-object p0
.end method

.method public getDrawable(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/Drawable;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/TextBox;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/poi/sl/usermodel/TextBox;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextBox;)Lorg/apache/poi/sl/draw/DrawTextBox;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/FreeformShape;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/apache/poi/sl/usermodel/FreeformShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/FreeformShape;)Lorg/apache/poi/sl/draw/DrawFreeformShape;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/TextShape;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lorg/apache/poi/sl/usermodel/TextShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/TableShape;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Lorg/apache/poi/sl/usermodel/TableShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TableShape;)Lorg/apache/poi/sl/draw/DrawTableShape;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/GroupShape;

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Lorg/apache/poi/sl/usermodel/GroupShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/GroupShape;)Lorg/apache/poi/sl/draw/DrawGroupShape;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PictureShape;

    if-eqz v0, :cond_5

    .line 12
    check-cast p1, Lorg/apache/poi/sl/usermodel/PictureShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/PictureShape;)Lorg/apache/poi/sl/draw/DrawPictureShape;

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/GraphicalFrame;

    if-eqz v0, :cond_6

    .line 14
    check-cast p1, Lorg/apache/poi/sl/usermodel/GraphicalFrame;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)Lorg/apache/poi/sl/draw/DrawGraphicalFrame;

    move-result-object p0

    return-object p0

    .line 15
    :cond_6
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Background;

    if-eqz v0, :cond_7

    .line 16
    check-cast p1, Lorg/apache/poi/sl/usermodel/Background;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Background;)Lorg/apache/poi/sl/draw/DrawBackground;

    move-result-object p0

    return-object p0

    .line 17
    :cond_7
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/ConnectorShape;

    if-eqz v0, :cond_8

    .line 18
    check-cast p1, Lorg/apache/poi/sl/usermodel/ConnectorShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/ConnectorShape;)Lorg/apache/poi/sl/draw/DrawConnectorShape;

    move-result-object p0

    return-object p0

    .line 19
    :cond_8
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Slide;

    if-eqz v0, :cond_9

    .line 20
    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Slide;)Lorg/apache/poi/sl/draw/DrawSlide;

    move-result-object p0

    return-object p0

    .line 21
    :cond_9
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/MasterSheet;

    if-eqz v0, :cond_a

    .line 22
    check-cast p1, Lorg/apache/poi/sl/usermodel/MasterSheet;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/MasterSheet;)Lorg/apache/poi/sl/draw/DrawMasterSheet;

    move-result-object p0

    return-object p0

    .line 23
    :cond_a
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Sheet;

    if-eqz v0, :cond_b

    .line 24
    check-cast p1, Lorg/apache/poi/sl/usermodel/Sheet;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Sheet;)Lorg/apache/poi/sl/draw/DrawSheet;

    move-result-object p0

    return-object p0

    .line 25
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lorg/apache/poi/sl/draw/DrawNotImplemented;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 26
    new-instance p0, Lorg/apache/poi/sl/draw/DrawNothing;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawNothing;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-object p0

    .line 27
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported shape type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/draw/Drawable;->FONT_HANDLER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/DrawFontManager;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;-><init>()V

    :goto_0
    return-object p0
.end method

.method public getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/DrawPaint;"
        }
    .end annotation

    new-instance p0, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    return-object p0
.end method

.method public getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;
    .locals 0

    new-instance p0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawTextFragment;-><init>(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)V

    return-object p0
.end method
