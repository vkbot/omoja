.class public abstract Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->getAcceptor()Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->_acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->lambda$getAcceptor$0(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAcceptor$0(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isDeleted()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->_acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    invoke-interface {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result p0

    return p0
.end method

.method public getAcceptor()Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;
    .locals 1

    new-instance p0, Landroidx/constraintlayout/core/state/b;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    return-object p0
.end method

.method public setAcceptor(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->_acceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    return-void
.end method

.method public abstract visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V
.end method
