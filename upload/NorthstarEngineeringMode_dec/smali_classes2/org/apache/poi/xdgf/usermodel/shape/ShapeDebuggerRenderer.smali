.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;
.super Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
.source "SourceFile"


# instance fields
.field _debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Graphics2D;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>(Ljava/awt/Graphics2D;)V

    return-void
.end method


# virtual methods
.method public drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;
    .locals 9

    invoke-super {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->scale(DD)V

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    const v7, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v7}, Ljava/awt/Font;->deriveFont(F)Ljava/awt/Font;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, " MS:"

    invoke-static {v2, v7}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getMasterShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 p1, -0x41800000    # -0.25f

    goto :goto_0

    :cond_1
    const p1, -0x42333333    # -0.1f

    :goto_0
    iget-object v7, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, p1, v8}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;FF)V

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p0, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->scale(DD)V

    :cond_2
    return-object v0
.end method

.method public setDebugAcceptor(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    return-void
.end method
