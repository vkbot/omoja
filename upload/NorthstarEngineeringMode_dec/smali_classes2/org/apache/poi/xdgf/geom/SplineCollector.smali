.class public Lorg/apache/poi/xdgf/geom/SplineCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _knots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;",
            ">;"
        }
    .end annotation
.end field

.field _start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    return-void
.end method


# virtual methods
.method public addKnot(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getDel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 10

    invoke-virtual {p1}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object p2

    new-instance v0, Li0/b;

    invoke-direct {v0}, Li0/b;-><init>()V

    new-instance v1, Li0/j;

    iget-object v2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, v1, Li0/j;->a:I

    const/4 v3, 0x0

    iput-object v3, v1, Li0/j;->b:[D

    new-array v2, v2, [D

    iput-object v2, v1, Li0/j;->b:[D

    iget-object v2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getB()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getC()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getD()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v4, v5}, Li0/j;->a(D)V

    iget-object v4, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v4}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getA()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Li0/j;->a(D)V

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Lj0/a;->a(DD)Lj0/a$a;

    move-result-object p2

    invoke-virtual {v0, p2}, Li0/b;->a(Lj0/a$a;)V

    iget-object p2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getX()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object p2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getY()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Lj0/a;->a(DD)Lj0/a$a;

    move-result-object p2

    invoke-virtual {v0, p2}, Li0/b;->a(Lj0/a$a;)V

    iget-object p0, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getA()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Li0/j;->a(D)V

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getX()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getY()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Lj0/a;->a(DD)Lj0/a$a;

    move-result-object p2

    invoke-virtual {v0, p2}, Li0/b;->a(Lj0/a$a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v6, v7}, Li0/j;->a(D)V

    invoke-static {v0, v1, v3, v2}, Lorg/apache/poi/xdgf/geom/SplineRenderer;->createNurbsSpline(Li0/b;Li0/j;Li0/j;I)Li0/i;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    return-void
.end method
